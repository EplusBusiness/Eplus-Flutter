import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_storage_state.freezed.dart';
part 'search_storage_state.g.dart';

@freezed
class SearchStorageState with _$SearchStorageState {
  const factory SearchStorageState({
    @Default(false) bool isForm,
    @Default(false) bool isSearched,
    @Default(<ItemInfo>[]) List<ItemInfo> listItems,
    @Default(<ItemInfo>[]) List<ItemInfo> listSearch,
    @Default(<FormInfoData>[]) List<FormInfoData> formsData,
    @Default(<FormInfoData>[]) List<FormInfoData> formsSearch,
  }) = _SearchStorageState;
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
class FormInfoData with _$FormInfoData {
  const factory FormInfoData({
    int? id,
    String? nameForm,
    String? updatedAt,
    String? createdAt,
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
    CategoryData? category,
    String? type,
    String? status,
  }) = _FormInfoData;

  factory FormInfoData.fromJson(Map<String, dynamic> json) =>
      _$FormInfoDataFromJson(json);
}

@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData({
    int? id,
    String? updatedAt,
    String? createdAt,
    String? name,
  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}