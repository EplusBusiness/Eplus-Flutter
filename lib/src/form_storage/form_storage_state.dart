import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_storage_state.freezed.dart';
part 'form_storage_state.g.dart';

@freezed
class FormStorageState with _$FormStorageState {
  const factory FormStorageState({
    @Default(<FormInfoData>[]) List<FormInfoData> formsData,
    @Default(<FormInfoData>[]) List<FormInfoData> formsInData,
    @Default(<FormInfoData>[]) List<FormInfoData> formsOutData,
    @Default(true) bool isIn,
  }) = _FormStorageState;
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