import 'dart:typed_data';

import 'package:eplusflutter/api/repository/api_signature_repository.dart';
import 'package:eplusflutter/models/invoice.dart';
import 'package:eplusflutter/models/request/base_request.dart';
import 'package:eplusflutter/models/request/create_form_request.dart';
import 'package:eplusflutter/src/signature/signature_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/response/attachment_response.dart';
import '../../routes/app_pages.dart';
import '../pdf_view/pdf_view_screen.dart';

class SignatureController extends GetxController {
  SignatureController(this.apiSignatureRepository);

  final ApiSignatureRepository apiSignatureRepository;

  var state = const SignatureState();
  CreateFormRequest? reqLater;
  CreateFormRequest? req;
  bool? isNew;
  Invoice? invoice;
  List<AttachmentResponse>? listAttachments;

  void onChangeSignatureSender(bool isChanged) {
    state = state.copyWith(isSignatureSenderFilled: isChanged);
    update();
  }

  void onChangeSignatureReceiver(bool isChanged) {
    state = state.copyWith(isSignatureReceiverFilled: isChanged);
    update();
  }

  Future<void> uploadFile(FormData form, {int indexType = 0}) async {
    final res = await apiSignatureRepository.upload(form);

    if (res != null) {
      (indexType == 0) ? onChangeListImages(res) : onChangeListVideos(res);
    }

    update();
  }

  Future<AttachmentResponse?> uploadPdf(FormData form) async {
    final res = await apiSignatureRepository.upload(form);

    if (res != null) {
      onChangeAttachment(res, 4);
    }

    onChangeCheckExportPdf(true);

    update();
    return res;
  }

  Future<AttachmentResponse?> uploadImages(FormData form) async {
    final res = await apiSignatureRepository.upload(form);
    update();
    return res;
  }

  Future<void> uploadSignatures(List<FormData> signatureImages) async {
    List<AttachmentResponse?> listSignature =
        await Future.wait(signatureImages.map((e) => uploadImages(e)));

    onChangeSignature(listSignature);
  }

  void onChangeSignature(List<AttachmentResponse?> signatures) {
    List<AttachmentInfo> list = signatures
        .map((e) => AttachmentInfo(id: e?.id, nameFile: e?.name, path: e?.path))
        .toList();
    state = state.copyWith(signatures: list);
  }

  void onChangeImage(List<AttachmentResponse?> listImage) {
    List<AttachmentInfo> list = listImage
        .map((e) => AttachmentInfo(id: e?.id, nameFile: e?.name, path: e?.path))
        .toList();
    List<AttachmentInfo> listOld = state.listImages!.toList();
    listOld.addAll(list);
    state = state.copyWith(listImages: listOld);
  }

  Future<void> uploadListImages(List<FormData> listImages) async {
    List<AttachmentResponse?> listImagesResponse =
        await Future.wait(listImages.map((e) => uploadImages(e)));

    onChangeImage(listImagesResponse);
  }

  void onChangeListImages(AttachmentResponse image) {
    List<AttachmentInfo> listImage = state.listImages!.toList();
    AttachmentInfo attach = AttachmentInfo(
        path: image.path, nameFile: image.name, id: image.id, ext: image.type);
    listImage.add(attach);
    state = state.copyWith(listImages: listImage);
    update();
  }

  void onChangeListVideos(AttachmentResponse video) {
    List<AttachmentInfo> listVideo = state.listVideos!.toList();
    AttachmentInfo attach = AttachmentInfo(
        path: video.path, nameFile: video.name, id: video.id, ext: video.type);
    listVideo.add(attach);
    state = state.copyWith(listVideos: listVideo);
    update();
  }

  void onChangeRemoveImage(AttachmentInfo image) {
    List<AttachmentInfo> listOld = state.listImages!.toList();
    listOld.remove(image);
    state = state.copyWith(listImages: listOld);
    update();
  }

  void onChangeRemoveVideo(AttachmentInfo video) {
    List<AttachmentInfo> listOld = state.listVideos!.toList();
    listOld.remove(video);
    state = state.copyWith(listVideos: listOld);
    update();
  }

  void onChangeAttachment(AttachmentResponse? data, int index) {
    AttachmentInfo attach = AttachmentInfo(
        path: data?.path, nameFile: data?.name, id: data?.id, ext: data?.type);

    switch (index) {
      case 4:
        state = state.copyWith(pdf: attach);
        break;
      case 5:
        state = state.copyWith(imageSignatureSender: attach);
        break;
      case 6:
        state = state.copyWith(imageSignatureReceiver: attach);
        break;
      case 7:
        List<AttachmentInfo>? listOld = state.listImages?.toList();
        listOld?.add(attach);
        state = state.copyWith(listImages: listOld);
        break;
      case 8:
        List<AttachmentInfo>? listOld = state.listVideos?.toList();
        listOld?.add(attach);
        state = state.copyWith(listVideos: listOld);
    }
  }

  List<int?> getLastAttachment() {
    List<int?> ids = [];
    if (state.signatures?.length != 0) {
      List<int> listIdsSignature = state.signatures!.map((e) => e.id!).toList();
      ids.addAll(listIdsSignature);
    }

    if (state.listImages?.length != 0) {
      List<AttachmentInfo> listExist =
          state.listImages!.where((element) => element.id != null).toList();
      List<int?> listIds = listExist.map((e) {
        if (e.id != null) {
          return e.id;
        }
      }).toList();
      ids.addAll(listIds);
    }

    if (state.listVideos?.length != 0) {
      List<AttachmentInfo> listExist =
          state.listVideos!.where((element) => element.id != null).toList();
      List<int?> listIds = listExist.map((e) {
        if (e.id != null) {
          return e.id;
        }
      }).toList();
      ids.addAll(listIds);
    }

    if (state.pdf?.id != null && state.pdf?.id != -1) {
      ids.add(state.pdf?.id ?? 0);
    }

    return ids;
  }

  void onChangeCheckExportPdf(bool isExport) {
    state = state.copyWith(checkExportPdf: isExport);
    update();
  }

  void onChangeFromEditForm() {
    req = Get.arguments[0];
    reqLater = CreateFormRequest(categoryId: req?.id);
    invoice = Get.arguments[1];
  }

  void onChangeIsCreated() {
    state = state.copyWith(
      isNew: Get.arguments[2] ?? false,
    );

    if (state.isNew != false) {
      return;
    }

    listAttachments = Get.arguments[3];

    state = state.copyWith(listImages: [], listVideos: []);
    List<AttachmentResponse>? listImages =
        listAttachments?.where((e) => (e.type == 'IMAGE')).toList();
    List<AttachmentResponse>? listPdf =
        listAttachments?.where((e) => (e.type == 'PDF')).toList();
    List<AttachmentResponse>? listVideos =
        listAttachments?.where((e) => (e.type == 'VIDEO')).toList();
    List<AttachmentResponse>? listSignature = listAttachments
        ?.where((e) => (e.type == "SIGNSENDER" || e.type == "SIGNRECEIVER"))
        .toList();

    if (listPdf?.length != 0) {
      onChangeAttachment(listPdf?[0], 4);
    }

    listSignature?.forEach((element) {
      String name = element.type!;
      if (name.contains('SIGNSENDER')) {
        onChangeAttachment(element, 5);
      } else {
        onChangeAttachment(element, 6);
      }
    });

    listImages?.forEach((element) {
      onChangeAttachment(element, 7);
    });

    listVideos?.forEach((element) {
      onChangeAttachment(element, 8);
    });

    update();
  }

  Future<void> fillDataCreateForm() async {
    if (getLastAttachment() != null) {
      reqLater?.ids = getLastAttachment().cast<int>();
    }

    req?.ids?.addAll(reqLater?.ids as Iterable<int>);
    createForm(req!);
  }

  Future<void> generatePdf(
      BuildContext context,
      Invoice invoice,
      Uint8List imageSenderData,
      Uint8List imageReceiverData,
      bool isPreview,
      CreateFormRequest? req) async {
    if (getLastAttachment() != null) {
      reqLater?.ids = getLastAttachment().cast<int>();
    }

    // if (kIsWeb) {
    //   req?.ids?.addAll(reqLater?.ids as Iterable<int>);
    //   createForm(req!);
    // } else {
      int id = await Get.toNamed(Routes.PDFPREVIEW,
          arguments: [invoice, imageSenderData, imageReceiverData, isPreview]);

      if (id != -1 && id != null) {
        reqLater?.ids?.add(id);
        req?.ids?.addAll(reqLater?.ids as Iterable<int>);
        createForm(req!);
      }
    // }
  }

  Future<void> createForm(CreateFormRequest req) async {
    final res = await apiSignatureRepository.createForm(req);

    if (res != null) {
      Get.until((route) => Get.currentRoute == Routes.DETAILPROJECT);
    }
  }

  Future<void> removeform() async {
    final res = await apiSignatureRepository
        .removeForm(BaseRequest(id: req?.id.toString()));

    if (res != null) {
      Get.until((route) => Get.currentRoute == Routes.DETAILPROJECT);
    }
  }

  void navigateToPreview(BuildContext context) {
    if (kIsWeb) {
      openPdfFromUrl(state.pdf?.path ?? '');
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (builder) => PdfScreen(path: state.pdf?.path),
        ),
      );
    }
  }

  void openPdfFromUrl(String url) {
    var googleDocsUrl = url;
    final Uri uri = Uri.parse(googleDocsUrl);
    launchUrl(uri);
  }
}
