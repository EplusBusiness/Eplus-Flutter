import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_form_state.freezed.dart';
part 'edit_form_state.g.dart';

@freezed
class EditFormState with _$EditFormState {
  const factory EditFormState({
    @Default(false) bool isNew,
    @Default(FormInfoData()) FormInfoData formData,
    @Default('IN') String typeForm,
    @Default('') String nameForm,
    @Default(SenderInfo()) SenderInfo senderInfo,
    @Default(ReceiverInfo()) ReceiverInfo receiverInfo,
    @Default(<ProductInfo>[]) List<ProductInfo> listProduct,
    @Default(<ItemInfo>[]) List<ItemInfo> listItems,
    @Default(<Attachment>[Attachment(), Attachment()]) List<Attachment>? attachmentsCmnd,
  }) = _EditFormState;
}

@freezed
class SenderInfo with _$SenderInfo {
  const factory SenderInfo({
    String? name,
    String? address,
    String? phone,
    String? actor,
  }) = _SenderInfo;
}

@freezed
class ReceiverInfo with _$ReceiverInfo {
  const factory ReceiverInfo({
    String? name,
    String? address,
    String? phone,
    String? actor,
    String? cmnd,
  }) = _ReceiverInfo;
}

@freezed
class ProductInfo with _$ProductInfo {
  const factory ProductInfo({
    String? stock,
    String? note,
    ItemInfo? itemInfo,
  }) = _ProductInfo;
}

@freezed
class ItemInfo with _$ItemInfo {
  const factory ItemInfo({
    int? id,
    String? updatedAt,
    String? createdAt,
    String? name,
    int? creatorId,
    int? stock,
    String? unit,
    String? code,
    int? categoryId,
    Attachment? attachment,
  }) = _ItemInfo;

  factory ItemInfo.fromJson(Map<String, dynamic> json) =>
      _$ItemInfoFromJson(json);
}

@freezed
class Attachment with _$Attachment {
  const factory Attachment({
    int? id,
    String? path,
    String? name,
    String? ext,
    String? type
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
}

@freezed
class FormInfoData with _$FormInfoData {
  const factory FormInfoData({
    int? id,
    String? updatedAt,
    String? createdAt,
    String? status,
    String? nameForm,
    String? sender,
    String? addressSender,
    String? phoneNumberSender,
    String? actorSender,
    String? receiver,
    String? addressReceiver,
    String? phoneNumberReceiver,
    String? actorReceiver,
    String? cmndReceiver,
    int? creatorId,
    int? categoryId,
    String? type,
    List<Attachment>? attachments,
    List<FormItem>? items
  }) = _FormInfoData;

  factory FormInfoData.fromJson(Map<String, dynamic> json) =>
      _$FormInfoDataFromJson(json);
}

@freezed
class FormItem with _$FormItem {
  const factory FormItem({
    int? formId,
    ItemInfo? item,
    String? note,
    int? amount,
  }) = _FormItem;

  factory FormItem.fromJson(Map<String, dynamic> json) =>
      _$FormItemFromJson(json);
}
