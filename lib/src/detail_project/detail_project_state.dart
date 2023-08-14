import 'package:freezed_annotation/freezed_annotation.dart';
part 'detail_project_state.freezed.dart';
part 'detail_project_state.g.dart';

@freezed
class DetailProjectState with _$DetailProjectState {
  const factory DetailProjectState({
    @Default(false) bool isLoading,
    @Default(FolderInfo()) FolderInfo folder,
    @Default('') String createdDate,
    @Default('') String updatedDate,
  }) = _DetailProjectState;
}

@freezed
class FolderInfo with _$FolderInfo {
  const factory FolderInfo({
    int? id,
    String? updatedAt,
    String? createdAt,
    int? creatorId,
    int? parentCategoryId,
    String? name,
  }) = _FolderInfo;

  factory FolderInfo.fromJson(Map<String, dynamic> json) =>
      _$FolderInfoFromJson(json);
}