import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_items_state.freezed.dart';
part 'edit_items_state.g.dart';

@freezed
class AddItemstState with _$AddItemstState {
  const factory AddItemstState({
    @Default(false) bool isLoading,
    @Default(AttachmentInfo()) AttachmentInfo attachment,
    @Default(ItemInfo()) ItemInfo item,
  }) = _AddItemstState;
}

@freezed
class ItemInfo with _$ItemInfo {
  const factory ItemInfo({
    int? id,
    String? updatedAt,
    String? createdAt,
    String? code,
    String? name,
    int? creatorId,
    int? stock,
    String? unit,
    int? categoryId,
    AttachmentInfo? attachment,
  }) = _ItemInfo;

  factory ItemInfo.fromJson(Map<String, dynamic> json) =>
      _$ItemInfoFromJson(json);
}

@freezed
class AttachmentInfo with _$AttachmentInfo {
  const factory AttachmentInfo({
    String? path,
    String? nameFile,
    int? id,
  }) = _AttachmentInfo;

  factory AttachmentInfo.fromJson(Map<String, dynamic> json) =>
      _$AttachmentInfoFromJson(json);
}
