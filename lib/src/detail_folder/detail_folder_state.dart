import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_folder_state.freezed.dart';
part 'detail_folder_state.g.dart';

@freezed
class DetailFolderState with _$DetailFolderState {
  const factory DetailFolderState({
    @Default(false) bool isLoading,
    @Default(<DetailFolderInfo>[]) List<DetailFolderInfo> listFolders,
  }) = _DetailFolderState;
}

@freezed
class DetailFolderInfo with _$DetailFolderInfo {
  const factory DetailFolderInfo({
    int? id,
    String? updatedAt,
    String? createdAt,
    int? creatorId,
    int? categoryId,
    List<FormInfo>? formRequest,
    List<ChildInfo>? childCategory,
    String? name,
  }) = _DetailFolderInfo;

  factory DetailFolderInfo.fromJson(Map<String, dynamic> json) =>
      _$DetailFolderInfoFromJson(json);
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

@freezed
class FormInfo with _$FormInfo {
  const factory FormInfo({
    int? id,
    String? updatedAt,
    String? createdAt,
  }) = _FormInfo;

  factory FormInfo.fromJson(Map<String, dynamic> json) =>
      _$FormInfoFromJson(json);
}

@freezed
class FolderInfo with _$FolderInfo {
  const factory FolderInfo({
    int? id,
    String? updatedAt,
    String? createdAt,
    int? categoryId,
    String? name,
  }) = _FolderInfo;

  factory FolderInfo.fromJson(Map<String, dynamic> json) =>
      _$FolderInfoFromJson(json);
}
