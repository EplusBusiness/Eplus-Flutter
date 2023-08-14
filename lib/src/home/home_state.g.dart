// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FolderInfo _$$_FolderInfoFromJson(Map<String, dynamic> json) =>
    _$_FolderInfo(
      id: json['id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      creatorId: json['creatorId'] as int?,
      name: json['name'] as String?,
      childCategory: (json['childCategory'] as List<dynamic>?)
          ?.map((e) => ChildInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FolderInfoToJson(_$_FolderInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'creatorId': instance.creatorId,
      'name': instance.name,
      'childCategory': instance.childCategory,
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
