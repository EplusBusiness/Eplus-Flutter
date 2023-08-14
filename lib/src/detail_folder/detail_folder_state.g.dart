// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_folder_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailFolderInfo _$$_DetailFolderInfoFromJson(Map<String, dynamic> json) =>
    _$_DetailFolderInfo(
      id: json['id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      creatorId: json['creatorId'] as int?,
      categoryId: json['categoryId'] as int?,
      formRequest: (json['formRequest'] as List<dynamic>?)
          ?.map((e) => FormInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      childCategory: (json['childCategory'] as List<dynamic>?)
          ?.map((e) => ChildInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_DetailFolderInfoToJson(_$_DetailFolderInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'creatorId': instance.creatorId,
      'categoryId': instance.categoryId,
      'formRequest': instance.formRequest,
      'childCategory': instance.childCategory,
      'name': instance.name,
    };

_$_ChildInfo _$$_ChildInfoFromJson(Map<String, dynamic> json) => _$_ChildInfo(
      id: json['id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      creatorId: json['creatorId'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_ChildInfoToJson(_$_ChildInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'creatorId': instance.creatorId,
      'name': instance.name,
    };

_$_FormInfo _$$_FormInfoFromJson(Map<String, dynamic> json) => _$_FormInfo(
      id: json['id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$_FormInfoToJson(_$_FormInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
    };

_$_FolderInfo _$$_FolderInfoFromJson(Map<String, dynamic> json) =>
    _$_FolderInfo(
      id: json['id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      categoryId: json['categoryId'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_FolderInfoToJson(_$_FolderInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'categoryId': instance.categoryId,
      'name': instance.name,
    };
