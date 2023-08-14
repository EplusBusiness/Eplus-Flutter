import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_brand_state.freezed.dart';
part 'detail_brand_state.g.dart';

@freezed
class DetailBrandState with _$DetailBrandState {
  const factory DetailBrandState({
    @Default(false) bool isLoading,
    @Default(<DetailFolderInfo>[]) List<DetailFolderInfo> listFolders,
  }) = _DetailBrandState;
}

@freezed
class DetailFolderInfo with _$DetailFolderInfo {
  const factory DetailFolderInfo({
    int? id,
    String? updatedAt,
    String? createdAt,
    int? creatorId,
    int? categoryId,
    List<FormInfo>? formRequest ,
    String? name,
  }) = _DetailFolderInfo;

  factory DetailFolderInfo.fromJson(Map<String, dynamic> json) =>
      _$DetailFolderInfoFromJson(json);
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
