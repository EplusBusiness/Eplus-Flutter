import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_form_state.freezed.dart';
part 'create_form_state.g.dart';

@freezed
class CreateFormState with _$CreateFormState {
  const factory CreateFormState({
    @Default(false) bool isNew,
    @Default('IN') String typeForm,
    @Default('') String dateSending,
    @Default('') String nameForm,
    @Default(SenderInfo()) SenderInfo senderInfo,
    @Default(ReceiverInfo()) ReceiverInfo receiverInfo,
    @Default(<ProductInfo>[]) List<ProductInfo> listProduct,
    @Default(<ItemInfo>[]) List<ItemInfo> listItems,
    @Default(<AttachmentInfo>[AttachmentInfo(), AttachmentInfo()]) List<AttachmentInfo> listCmnd,
  }) = _CreateFormState;
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
    int? indexOptionSelected,
    String? noteWithOptions,
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
    String? path,
    String? ext,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
}

@freezed
class AttachmentInfo with _$AttachmentInfo {
  const factory AttachmentInfo({
    String? path,
    String? nameFile,
    int? id,
    String? ext,
  }) = _AttachmentInfo;

  factory AttachmentInfo.fromJson(Map<String, dynamic> json) =>
      _$AttachmentInfoFromJson(json);
}