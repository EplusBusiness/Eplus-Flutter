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

_$_UserInfo _$$_UserInfoFromJson(Map<String, dynamic> json) => _$_UserInfo(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone_number: json['phone_number'] as String?,
      avatar_url: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$_UserInfoToJson(_$_UserInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phone_number,
      'avatar_url': instance.avatar_url,
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
