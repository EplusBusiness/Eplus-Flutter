import 'package:freezed_annotation/freezed_annotation.dart';
part 'list_search_state.freezed.dart';
part 'list_search_state.g.dart';

@freezed
class ListSearchState with _$ListSearchState {
  const factory ListSearchState({
    @Default(false) bool isLoading,
    @Default(<FolderInfo>[]) List<FolderInfo> listFolders,
  }) = _ListSearchState;
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
    List<ChildInfo>? childCategory,
  }) = _FolderInfo;

  factory FolderInfo.fromJson(Map<String, dynamic> json) =>
      _$FolderInfoFromJson(json);
}

@freezed
class ChildInfo with _$ChildInfo {
  const factory ChildInfo({
    int? id,
    String? updatedAt,
    String? createdAt,
    int? creatorId,
    String? name,
  }) = _ChildInfo;

  factory ChildInfo.fromJson(Map<String, dynamic> json) =>
      _$ChildInfoFromJson(json);
}

