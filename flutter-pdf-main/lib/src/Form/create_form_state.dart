import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_form_state.freezed.dart';

@freezed
class CreateFormState with _$CreateFormState {
  const factory CreateFormState({
    @Default(false) bool isLoading,
    @Default(SenderInfo()) SenderInfo senderInfo,
    @Default(ReceiverInfo()) ReceiverInfo receiverInfo,
    @Default(<ProductInfo>[]) List<ProductInfo> listProduct,
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
    String? name,
    String? cost,
    String? size,
    String? note,
  }) = _ProductInfo;
}
