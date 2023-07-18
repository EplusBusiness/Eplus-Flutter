part of 'vms_text_field_bloc.dart';

abstract class VmsTextFieldEvent extends Equatable {
  const VmsTextFieldEvent();

  @override
  List<Object?> get props => [];
}

class SetVisibilitySuffixIconEvent extends VmsTextFieldEvent {
  final bool shouldShow;

  const SetVisibilitySuffixIconEvent(this.shouldShow);
}

class ClearEvent extends VmsTextFieldEvent {
  const ClearEvent();
}
