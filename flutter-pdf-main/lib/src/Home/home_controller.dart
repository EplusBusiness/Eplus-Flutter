import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makepdfs/api/api.dart';
import 'package:makepdfs/models/request/insert_folder_request.dart';
import 'package:makepdfs/src/Home/home_state.dart';


class HomeController extends GetxController {
  HomeController(this.apiHomeRepository);
  final ApiHomeRepository apiHomeRepository;

  var state = const HomeState();

  void getAllFolders(BuildContext context) async {
    final res = await apiHomeRepository.getAllFolders();

    onChangedListFolder(res?.toFolderInfo() ?? []);
  }

  void createFolder(BuildContext context, InsertFolderRequest data) async {
    final res = await apiHomeRepository.insertCategory(data);

    onChangedListFolder(res?.toFolderInfo() ?? []);

    Navigator.of(context).pop();
  }

  void onChangedListFolder(List<FolderInfo> data) {
    state = state.copyWith(
        listFolder: data
    );
  }
}