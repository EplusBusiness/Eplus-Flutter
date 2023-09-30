// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_form_state.dart';

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
      id: json['id'] as int?,
      path: json['path'] as String?,
      name: json['name'] as String?,
      ext: json['ext'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_AttachmentToJson(_$_Attachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'name': instance.name,
      'ext': instance.ext,
      'type': instance.type,
    };

_$_FormInfoData _$$_FormInfoDataFromJson(Map<String, dynamic> json) =>
    _$_FormInfoData(
      id: json['id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      status: json['status'] as String?,
      dateSent: json['dateSent'] as String?,
      nameForm: json['nameForm'] as String?,
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
      type: json['type'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => FormItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FormInfoDataToJson(_$_FormInfoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'status': instance.status,
      'dateSent': instance.dateSent,
      'nameForm': instance.nameForm,
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
      'type': instance.type,
      'attachments': instance.attachments,
      'items': instance.items,
    };

_$_FormItem _$$_FormItemFromJson(Map<String, dynamic> json) => _$_FormItem(
      formId: json['formId'] as int?,
      item: json['item'] == null
          ? null
          : ItemInfo.fromJson(json['item'] as Map<String, dynamic>),
      note: json['note'] as String?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$$_FormItemToJson(_$_FormItem instance) =>
    <String, dynamic>{
      'formId': instance.formId,
      'item': instance.item,
      'note': instance.note,
      'amount': instance.amount,
    };
