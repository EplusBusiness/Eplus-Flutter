// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_form_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemInfo _$$_ItemInfoFromJson(Map<String, dynamic> json) => _$_ItemInfo(
      id: json['id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      name: json['name'] as String?,
      creatorId: json['creatorId'] as int?,
      stock: json['stock'] as int?,
      unit: json['unit'] as String?,
      code: json['code'] as String?,
      categoryId: json['categoryId'] as int?,
      attachment: json['attachment'] == null
          ? null
          : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemInfoToJson(_$_ItemInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'name': instance.name,
      'creatorId': instance.creatorId,
      'stock': instance.stock,
      'unit': instance.unit,
      'code': instance.code,
      'categoryId': instance.categoryId,
      'attachment': instance.attachment,
    };

_$_Attachment _$$_AttachmentFromJson(Map<String, dynamic> json) =>
    _$_Attachment(
      path: json['path'] as String?,
      ext: json['ext'] as String?,
    );

Map<String, dynamic> _$$_AttachmentToJson(_$_Attachment instance) =>
    <String, dynamic>{
      'path': instance.path,
      'ext': instance.ext,
    };

_$_AttachmentInfo _$$_AttachmentInfoFromJson(Map<String, dynamic> json) =>
    _$_AttachmentInfo(
      path: json['path'] as String?,
      nameFile: json['nameFile'] as String?,
      id: json['id'] as int?,
      ext: json['ext'] as String?,
    );

Map<String, dynamic> _$$_AttachmentInfoToJson(_$_AttachmentInfo instance) =>
    <String, dynamic>{
      'path': instance.path,
      'nameFile': instance.nameFile,
      'id': instance.id,
      'ext': instance.ext,
    };
