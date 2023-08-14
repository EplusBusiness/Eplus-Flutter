part of 'vms_text_field_bloc.dart';

abstract class VmsTextFieldState extends Equatable {
  const VmsTextFieldState();

  @override
  List<Object?> get props => [];
}

class VmsTextFieldInitial extends VmsTextFieldState {}

class ShowSuffixIcon extends VmsTextFieldState {}

class HideSuffixIcon extends VmsTextFieldState {}

class ClickOnSuffixIcon extends VmsTextFieldState {}
