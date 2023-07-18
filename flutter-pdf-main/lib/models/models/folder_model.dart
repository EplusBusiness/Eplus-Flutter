import 'dart:ffi';

import 'package:makepdfs/models/models/user_model.dart';

class FolderModel{
  FolderModel({
    required this.id,
    required this.updatedAt,
    required this.createdAt,
    required this.userId,
    required this.name,
    required this.path,
    required this.size,
    required this.itemId,
    required this.type,
    required this.user,
  }) ;
  String id;
  String updatedAt;
  String createdAt;
  String userId;
  String name;
  String path;
  int size;
  String itemId;
  String type;
  UserModel user;

  factory FolderModel.fromJson(Map<String, dynamic> json){
    return FolderModel(
      id: json['id'],
      updatedAt: json['updatedAt'],
      createdAt: json['createdAt'],
      userId: json['userId'],
      name: json['name'],
      path: json['path'],
      size: json['size'],
      itemId: json['itemId'],
      type: json['type'],
      user: json['user'],
    );
  }
}