import 'package:freezed_annotation/freezed_annotation.dart';

part 'signature_state.freezed.dart';
part 'signature_state.g.dart';

@freezed
class SignatureState with _$SignatureState {
  const factory SignatureState({
    @Default(false) bool isNew,
    @Default(false) bool checkExportPdf,
    @Default(false) bool isSignatureSenderFilled,
    @Default(false) bool isSignatureReceiverFilled,
    @Default(<AttachmentInfo>[]) List<AttachmentInfo>? signatures,
    @Default(<AttachmentInfo>[AttachmentInfo()]) List<AttachmentInfo>? listImages,
    @Default(AttachmentInfo()) AttachmentInfo? pdf,
    @Default(AttachmentInfo()) AttachmentInfo? imageSignatureSender,
    @Default(AttachmentInfo()) AttachmentInfo? imageSignatureReceiver,
  }) = _SignatureState;
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