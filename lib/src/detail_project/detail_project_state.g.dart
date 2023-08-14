// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_project_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FolderInfo _$$_FolderInfoFromJson(Map<String, dynamic> json) =>
    _$_FolderInfo(
      id: json['id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      creatorId: json['creatorId'] as int?,
      parentCategoryId: json['parentCategoryId'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_FolderInfoToJson(_$_FolderInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'creatorId': instance.creatorId,
      'parentCategoryId': instance.parentCategoryId,
      'name': instance.name,
    };
