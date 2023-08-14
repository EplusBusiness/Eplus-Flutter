import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:eplusflutter/api/api.dart';
import 'package:eplusflutter/core/file_util.dart';
import 'package:eplusflutter/core/icon_constants.dart';
import 'package:eplusflutter/models/response/attachment_response.dart';
import 'package:eplusflutter/src/signature/signature.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import '../../core/color_constant.dart';
import '../../core/string_constant.dart';
import '../../core/text_app_style.dart';
import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';
import '../../widget/text_customize/TextCustomize.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class SignatureScreen extends StatefulWidget {
  @override
  State<SignatureScreen> createState() => _SignatureScreenState();
}

class _SignatureScreenState extends State<SignatureScreen> {
  final GlobalKey<SfSignaturePadState> _signaturePadSenderKey = GlobalKey();
  final GlobalKey<SfSignaturePadState> _signaturePadReceiverKey = GlobalKey();
  ImagePicker picker = ImagePicker();
  SignatureController controller = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (Get.arguments != null) {
      controller.onChangeFromEditForm();
    }
    controller.onChangeIsCreated();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavigation(),
        _buildBody(),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }

  _buildBody() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildPhotoConfirmSection(context),
            _buildBodySignature(),
            _buildPreview(),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {},
      onPreviousPressed: () {
        Get.back();
      },
      title: 'Signature',
      isVisibleEditButton: false,
      isVisiblePlusButton: false,
    );
  }

  _buildBodySignature() {
    return GetBuilder<SignatureController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _buildAddPdf(),
              _buildHeaderSection(signSenderString),
              (controller.state.imageSignatureSender?.id != null &&
                      controller.state.imageSignatureSender?.id != -1)
                  ? _buildLoadSignatureSender(
                      controller.state.imageSignatureSender?.path ?? '')
                  : _buildSignatureSender(),
              _buildHeaderSection(signReceiverString),
              (controller.state.imageSignatureReceiver?.id != null &&
                      controller.state.imageSignatureReceiver?.id != -1)
                  ? _buildLoadSignatureReceiver(
                      controller.state.imageSignatureReceiver?.path ?? '')
                  : _buildSignatureReceiver(),
              _buildCheckbox(),
            ],
          ),
        );
      },
    );
  }

  _buildCheckbox() {
    return GetBuilder<SignatureController>(
      builder: (controller) {
        return Visibility(
          visible: false,
          child: Row(
            children: [
              Checkbox(
                checkColor: Colors.blue,
                activeColor: Colors.transparent,
                value: controller.state.checkExportPdf,
                onChanged: (bool? value) {
                  // req.status = (value == false) ? 'NEW' : 'PENDING';
                  controller.onChangeCheckExportPdf(value!);
                },
              ),
              TextCustomize(
                title: 'Pending export Pdf',
                textStyle:
                    textStyleApp.medium(size: 20, colorText: Colors.redAccent),
              ),
            ],
          ),
        );
      },
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.transparent;
    }
    return Colors.transparent;
  }

  _buildSignatureSender() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 200,
      width: double.infinity,
      child: GetBuilder<SignatureController>(
        builder: (controller) {
          return Stack(
            children: [
              SfSignaturePad(
                key: _signaturePadSenderKey,
                maximumStrokeWidth: 1,
                minimumStrokeWidth: 1,
                onDrawStart: () {
                  controller.onChangeSignatureSender(true);
                  return false;
                },
              ),
              Visibility(
                visible: controller.state.isSignatureSenderFilled,
                child: Positioned(
                  top: 10,
                  right: 10,
                  child: InkWell(
                    child: Image.asset(
                      icClearTextField,
                      width: 30,
                      height: 30,
                    ),
                    onTap: () {
                      _signaturePadSenderKey.currentState?.clear();
                      controller.onChangeSignatureSender(false);
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildLoadSignatureSender(String url) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 200,
      width: double.infinity,
      child: Image.network(url),
    );
  }

  _buildLoadSignatureReceiver(String url) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 200,
      width: double.infinity,
      child: Image.network(url),
    );
  }

  _buildSignatureReceiver() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 200,
      width: double.infinity,
      child: GetBuilder<SignatureController>(
        builder: (controller) {
          return Stack(
            children: [
              SfSignaturePad(
                key: _signaturePadReceiverKey,
                maximumStrokeWidth: 1,
                minimumStrokeWidth: 1,
                onDrawStart: () {
                  controller.onChangeSignatureReceiver(true);
                  return false;
                },
              ),
              Visibility(
                visible: controller.state.isSignatureReceiverFilled,
                child: Positioned(
                  top: 10,
                  right: 10,
                  child: InkWell(
                    child: Image.asset(
                      icClearTextField,
                      width: 30,
                      height: 30,
                    ),
                    onTap: () {
                      _signaturePadReceiverKey.currentState?.clear();
                      controller.onChangeSignatureReceiver(false);
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildPhotoConfirmSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _buildHeaderSection(photosConfirmString),
          controller.state.isNew
              ? _buildTakePhotoConfirm(context)
              : _buildPhotosConfirm(context),
        ],
      ),
    );
  }

  _buildAddPdf() {
    return Visibility(
      visible: true,
      child: Align(
        alignment: Alignment.centerLeft,
        child: GestureDetector(
          onTap: () {
            // _buildBottomSheet();'
            if (controller.state.pdf?.path != '' &&
                controller.state.pdf?.path != null) {
              controller.navigateToPreview(context);
            } else {
              _uploadFile();
            }
            // controller.navigateToPreview(context);
          },
          child: GetBuilder<SignatureController>(
            builder: (controller) {
              return Column(
                children: [
                  _buildHeaderSection('Pdf file:'),
                  Row(
                    children: [
                      // controller.state.attachment.path == null
                      //     ?
                      //     : ClipRRect(
                      //   borderRadius: BorderRadius.circular(10.0),
                      //   child: Image.network(
                      //     ApiConstants.base +
                      //         (controller.state.attachment.path ?? ''),
                      //     height: 100,
                      //     width: 100,
                      //     fit: BoxFit.fitHeight,
                      //   ),
                      // ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Image.asset(
                              icImportPdf,
                              height: 75,
                              width: 75,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          (controller.state.pdf?.path != null)
                              ? Positioned(
                                  top: -15,
                                  right: -15,
                                  child: IconButton(
                                    onPressed: () {
                                      controller.onChangeAttachment(
                                          AttachmentResponse(), 4);
                                      controller.onChangeCheckExportPdf(false);
                                    },
                                    icon: Image.asset(
                                      icDelete,
                                      height: 20,
                                      width: 20,
                                    ),
                                  ))
                              : Container()
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextCustomize(
                            overflow: TextOverflow.ellipsis,
                            title: !(controller.state.pdf?.path != '' &&
                                    controller.state.pdf?.path != null)
                                ? 'import pdf'
                                : controller.state.pdf?.nameFile ?? '',
                            textStyle: textStyleApp.medium(
                              size: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  _buildTakePhotoConfirm(BuildContext context) {
    return GetBuilder<SignatureController>(
      builder: (controller) {
        Size size = MediaQuery.of(context).size;
        double itemHeight = (size.width - (20 * 2)) / 4;
        int row = 0;
        if (controller.state.listImages!.length % 4 == 0) {
          row = controller.state.listImages!.length ~/ 4;
        } else {
          row = (controller.state.listImages!.length ~/ 4) + 1;
        }
        return SizedBox(
          height: (itemHeight * row) + (10 * row),
          child: GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            padding: const EdgeInsets.only(top: 0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 4,
            children: controller.state.listImages!.map(
              (e) {
                var index = controller.state.listImages?.indexOf(e);
                return (index == 0)
                    ? GestureDetector(
                        onTap: () {
                          _buildBottomSheetV2(context);
                        },
                        child: Image.asset(icAddImage),
                      )
                    : Stack(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: itemHeight,
                              height: itemHeight,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(e.path ?? '',
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -15,
                            right: -10,
                            child: IconButton(
                              onPressed: () {
                                controller.onChangeRemoveImage(e);
                              },
                              icon: Image.asset(
                                icDelete,
                                height: 20,
                                width: 20,
                              ),
                            ),
                          )
                        ],
                      );
              },
            ).toList(),
          ),
        );
      },
    );
  }

  _buildPhotosConfirm(BuildContext context) {
    return GetBuilder<SignatureController>(
      builder: (controller) {
        Size size = MediaQuery.of(context).size;
        double itemHeight = (size.width - (20 * 2)) / 4;
        int row = 0;
        if (controller.state.listImages!.length % 4 == 0) {
          row = controller.state.listImages!.length ~/ 4;
        } else {
          row = (controller.state.listImages!.length ~/ 4) + 1;
        }
        return SizedBox(
          height: (itemHeight * row) + (10 * row),
          child: GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            padding: const EdgeInsets.only(top: 0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 4,
            children: controller.state.listImages!.map(
              (e) {
                return GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: itemHeight,
                    height: itemHeight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(e.path ?? '',
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }

  _buildHeaderSection(String title) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextCustomize(
            title: title,
            textStyle: textStyleApp.semiBold(size: 18),
          ),
        ],
      ),
    );
  }

  _buildBottomSheetV2(BuildContext context) {
    return showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: 'take photo',
            textStyle:
                textStyleApp.medium(size: 20, colorText: Colors.blueAccent),
            onPressed: () {
              Navigator.of(context).pop();
              _takePhoto();
            }),
        BottomSheetAction(
            title: 'photo from gallery',
            textStyle:
                textStyleApp.medium(size: 20, colorText: Colors.blueAccent),
            onPressed: () {
              Navigator.of(context).pop();
              _getFromGallery();
            }),
      ],
      cancelAction: CancelAction(
          title:
              'Cancel'), // onPressed parameter is optional by default will dismiss the ActionSheet
    );
  }

  _buildSubmitButton() {
    return GetBuilder<SignatureController>(
      builder: (controller) {
        return Visibility(
          visible: controller.state.isNew,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
            child: ButtonTheme(
              minWidth: double.infinity,
              height: 50,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: colorYellow.withBlue(120),
                onPressed: () {
                  _checkValidateSignature();
                },
                child: TextCustomize(
                  title: 'Submit form',
                  textStyle: textStyleApp.medium(size: 18),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  _buildPreview() {
    return GetBuilder<SignatureController>(
      builder: (controller) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
          child: Row(
            children: [
              Visibility(
                visible: controller.state.isNew &&
                    !(controller.state.pdf?.path != null),
                child: Expanded(
                  child: ButtonTheme(
                    height: 50,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      color: colorYellow.withBlue(120),
                      onPressed: () {
                        _actionExportSignature(true);
                      },
                      child: TextCustomize(
                        title: 'Preview form',
                        textStyle: textStyleApp.medium(size: 18),
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !controller.state.isNew,
                child: Expanded(
                  child: ButtonTheme(
                    height: 50,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      color: Colors.red,
                      onPressed: () {
                        controller.removeform();
                      },
                      child: TextCustomize(
                        title: 'Remove form',
                        textStyle: textStyleApp.medium(
                            size: 18, colorText: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _checkValidateSignature() {
    if (controller.state.checkExportPdf) {
      _actionExportSignature(false);
    } else {
      if (controller.state.isSignatureSenderFilled &&
          controller.state.isSignatureReceiverFilled == false) {
        handleToast('Missing require Receiver signature!');
      } else if (controller.state.isSignatureSenderFilled == false &&
          controller.state.isSignatureReceiverFilled == true) {
        handleToast('Missing require Sender signature!');
      } else if (_checkValid()) {
        _actionExportSignature(false);
      } else {
        handleToast('Missing require both signatures!');
      }
    }
  }

  bool _checkValid() {
    if (controller.state.isSignatureReceiverFilled &&
        controller.state.isSignatureSenderFilled) {
      return true;
    }
    return false;
  }

  _actionExportSignature(bool isPreview) async {
    final imageSenderFuture =
        await _signaturePadSenderKey.currentState?.toImage();
    final imageReceiverFuture =
        await _signaturePadReceiverKey.currentState?.toImage();
    if (imageSenderFuture == null) {
      return;
    }
    if (imageReceiverFuture == null) {
      return;
    }

    final byteSenderData =
        await imageSenderFuture.toByteData(format: ImageByteFormat.png);
    if (byteSenderData == null) {
      return;
    }

    final byteReceiverData =
        await imageReceiverFuture.toByteData(format: ImageByteFormat.png);
    if (byteReceiverData == null) {
      return;
    }

    final dataSender = await FileUtil.writeToFileUint8(byteSenderData);
    final dataReceiver = await FileUtil.writeToFileUint8(byteReceiverData);

    if (controller.invoice == null) {
      return;
    }

    if (!isPreview) {
      if (!controller.state.checkExportPdf) {
        actionSubmit(
            byteSenderData, byteReceiverData, dataSender, dataReceiver);
      } else {
        controller.req?.status = "DONE";
        controller.createForm(controller.req!);
      }
    } else {
      controller.generatePdf(context, controller.invoice!, dataSender,
          dataReceiver, true, controller.req);
    }
  }

  Future<void> actionSubmit(ByteData sender, ByteData receiver,
      Uint8List imageSenderData, Uint8List imageReceiverData) async {
    // final signatureSenderFile =
    //     await FileUtil.writeToFile(sender, 'signatureSender');
    // final signatureReceiverFile =
    //     await FileUtil.writeToFile(receiver, 'signatureReceiver');

    // final formSender =
    //     _getImageSignatureInfo(signatureSenderFile, 'signatureSender');
    // final formReceiver =
    //     _getImageSignatureInfo(signatureReceiverFile, 'signatureReceiver');
    // List<FormData> listSignature = [formSender, formReceiver];
    //
    // await controller.uploadSignatures(listSignature);

    controller.req?.status = "DONE";
    controller.generatePdf(context, controller.invoice!, imageSenderData,
        imageReceiverData, false, controller.req);
  }

  _getFromGallery() async {
    // XFile? image = await picker.pickImage(
    //   source: ImageSource.gallery,
    //   maxWidth: 400,
    //   maxHeight: 400,
    //   imageQuality: 75,
    // );
    // if (image != null) {
    // _uploadImage(image);
    // }
    List<XFile>? listImages = await picker.pickMultiImage();
    if (listImages.isNotEmpty) {
      List<FormData> listForms = listImages.map((e) {
        File file = File(e.path);
        String nameFile = e.name;
        String mimeType = _getMimeType(e);
        FormData form = FormData({
          'file':
              MultipartFile(file, filename: nameFile, contentType: mimeType),
        });
        return form;
      }).toList();
      controller.uploadListImages(listForms);
    }
  }

  _takePhoto() async {
    final XFile? photo = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 400,
      maxHeight: 400,
      imageQuality: 75,
    );
    if (photo == null) {
      return;
    }
    _uploadImage(photo);
  }

  // PDF
  _uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result != null && result.count > 0 && result.paths.first != null) {
      PlatformFile platformFile = result.files.first;
      File file = File(platformFile.path ?? '');
      FormData form = FormData({
        'file': MultipartFile(file,
            filename: platformFile.name, contentType: 'application/pdf'),
      });
      controller.uploadPdf(form);
    }
  }

  _uploadImage(XFile photo) {
    File file = File(photo.path);
    String nameFile = photo.name;
    String mimeType = _getMimeType(photo);
    FormData form = FormData({
      'file': MultipartFile(file, filename: nameFile, contentType: mimeType),
    });

    controller.uploadFile(form);
  }

  FormData _getImageSignatureInfo(File file, String name) {
    FormData form = FormData(
      {
        'file': MultipartFile(file, filename: name, contentType: 'image/png'),
      },
    );

    return form;
  }

  String _getMimeType(XFile photo) {
    if (photo.name.contains('jpg')) {
      return 'image/jpg';
    } else if (photo.name.contains('png')) {
      return 'image/png';
    } else if (photo.name.contains('jpeg')) {
      return 'image/jpeg';
    } else if (photo.name.contains('pdf')) {
      return 'application/pdf';
    }
    return '';
  }
}
