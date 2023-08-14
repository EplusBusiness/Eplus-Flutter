import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'vms_text_field_event.dart';

part 'vms_text_field_state.dart';

class VmsTextFieldBloc extends Bloc<VmsTextFieldEvent, VmsTextFieldState> {
  VmsTextFieldBloc() : super(VmsTextFieldInitial()) {
    on<SetVisibilitySuffixIconEvent>((event, emit) {
      if (event.shouldShow) {
        emit(ShowSuffixIcon());
      } else {
        emit(HideSuffixIcon());
      }
    });
    on<ClearEvent>((event, emit) {
      emit(ClickOnSuffixIcon());
    });
  }
}
