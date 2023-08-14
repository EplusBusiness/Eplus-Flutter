import 'package:freezed_annotation/freezed_annotation.dart';
part 'storage_state.freezed.dart';
part 'storage_state.g.dart';

@freezed
class StorageState with _$StorageState {
  const factory StorageState({
    @Default(false) bool isLoading,
    @Default(<ItemInfo>[]) List<ItemInfo> listItems,
  }) = _StorageState;
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
