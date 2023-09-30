import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eplusflutter/api/api.dart';
import 'package:eplusflutter/models/request/insert_folder_request.dart';
import 'package:eplusflutter/src/home/home_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:share_plus/share_plus.dart';
import '../../routes/app_pages.dart';

class HomeController extends GetxController {
  HomeController(this.apiHomeRepository);
  final ApiHomeRepository apiHomeRepository;

  var state = const HomeState();
  List<XFile> listFileLocal = [];

  void getAllFolders() async {
    final res = await apiHomeRepository.getAllCategorys();

    onChangedListFolder(res?.listFolders);
  }

  Future<void> getUserInfo() async {
    final res = await apiHomeRepository.getUserInfo();

    if (res != null) onChangedUserResponse(res);
  }

  void createFolder(BuildContext context, InsertFolderRequest data) async {
    final res = await apiHomeRepository.insertCategory(data);

    if (res != null) {
      getAllFolders();
    }
    Navigator.of(context).pop();
  }

  void onChangedUserResponse(UserInfo userInfo) {
    state = state.copyWith(
        userInfo: userInfo
    );
  }

  void onChangedListFolder(List<FolderInfo>? data) {
    state = state.copyWith(
        listFolders: data ?? []
    );
    update();
  }

  Future<void> getAllFileStorage() async {
    List<FileSystemEntity> _folders;
    List<XFile> listFile = [];
    Directory tempDir = await getTemporaryDirectory();
    String dir = tempDir.path;
    String pdfDirectory = '$dir/';
    final myDir = Directory(pdfDirectory);
      _folders = myDir.listSync(recursive: true, followLinks: false);
    for (FileSystemEntity asset in _folders) {
      if (asset is File) {
        bool isPdf = asset.path.endsWith(".pdf") || asset.path.endsWith(".PDF");
        if (isPdf) {
          XFile? file = XFile(asset.path);
          listFile.add(file);
        }
      }
    }
    listFileLocal = listFile;
    update();
  }

  Future<void> actionShare(XFile data) async {
    Share.shareXFiles([data], text: 'pdf');
  }

  Future<void> actionPrintingAndShare(XFile data) async {
    final file = File(data.path);
    Uint8List bytes = file.readAsBytesSync();
    await Printing.sharePdf(bytes: bytes);
  }

  Future<void> navigateToDetail(FolderInfo model) async {
    bool value = await Get.toNamed(Routes.DETAILFOLDER, arguments: [model.id, model.name]);

    if (value) {
      getAllFolders();
    }
  }

  void navigateToListSearch(String name) {
    Get.toNamed(Routes.SEARCH, arguments: [name]);
  }

  void navigateToUserInfo() {
    Get.toNamed(Routes.USERDETAIL);
  }
}