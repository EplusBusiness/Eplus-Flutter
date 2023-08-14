// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_items_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemInfo _$$_ItemInfoFromJson(Map<String, dynamic> json) => _$_ItemInfo(
      id: json['id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      creatorId: json['creatorId'] as int?,
      stock: json['stock'] as int?,
      unit: json['unit'] as String?,
      categoryId: json['categoryId'] as int?,
      attachment: json['attachment'] == null
          ? null
          : AttachmentInfo.fromJson(json['attachment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemInfoToJson(_$_ItemInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'code': instance.code,
      'name': instance.name,
      'creatorId': instance.creatorId,
      'stock': instance.stock,
      'unit': instance.unit,
      'categoryId': instance.categoryId,
      'attachment': instance.attachment,
    };

_$_AttachmentInfo _$$_AttachmentInfoFromJson(Map<String, dynamic> json) =>
    _$_AttachmentInfo(
      path: json['path'] as String?,
      nameFile: json['nameFile'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_AttachmentInfoToJson(_$_AttachmentInfo instance) =>
    <String, dynamic>{
      'path': instance.path,
      'nameFile': instance.nameFile,
      'id': instance.id,
    };
