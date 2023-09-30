// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_storage_state.dart';

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

_$_FormInfoData _$$_FormInfoDataFromJson(Map<String, dynamic> json) =>
    _$_FormInfoData(
      id: json['id'] as int?,
      nameForm: json['nameForm'] as String?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      sender: json['sender'] as String?,
      addressSender: json['addressSender'] as String?,
      phoneNumberSender: json['phoneNumberSender'] as String?,
      actorSender: json['actorSender'] as String?,
      receiver: json['receiver'] as String?,
      addressReceiver: json['addressReceiver'] as String?,
      phoneNumberReceiver: json['phoneNumberReceiver'] as String?,
      actorReceiver: json['actorReceiver'] as String?,
      cmndReceiver: json['cmndReceiver'] as String?,
      creatorId: json['creatorId'] as int?,
      categoryId: json['categoryId'] as int?,
      category: json['category'] == null
          ? null
          : CategoryData.fromJson(json['category'] as Map<String, dynamic>),
      type: json['type'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_FormInfoDataToJson(_$_FormInfoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameForm': instance.nameForm,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'sender': instance.sender,
      'addressSender': instance.addressSender,
      'phoneNumberSender': instance.phoneNumberSender,
      'actorSender': instance.actorSender,
      'receiver': instance.receiver,
      'addressReceiver': instance.addressReceiver,
      'phoneNumberReceiver': instance.phoneNumberReceiver,
      'actorReceiver': instance.actorReceiver,
      'cmndReceiver': instance.cmndReceiver,
      'creatorId': instance.creatorId,
      'categoryId': instance.categoryId,
      'category': instance.category,
      'type': instance.type,
      'status': instance.status,
    };

_$_CategoryData _$$_CategoryDataFromJson(Map<String, dynamic> json) =>
    _$_CategoryData(
      id: json['id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CategoryDataToJson(_$_CategoryData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'name': instance.name,
    };
