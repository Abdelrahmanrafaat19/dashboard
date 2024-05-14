import 'package:bloc/bloc.dart';
import 'package:dashboard/feature/book_appointment/data/diaplay_book_appointment_repo/diaplay_book_appointment_repo_imple.dart';
part 'display_book_appointment_state.dart';

class DisplayBookAppointmentCubit extends Cubit<DisplayBookAppointmentState> {
  final DisplayBookAppointmentRepoImple _displayBookAppointmentRepoImple;
  DisplayBookAppointmentCubit(this._displayBookAppointmentRepoImple)
      : super(DisplayBookAppointmentInitial());
  Future<void> displayBookAppointment() async {
    emit(DisplayBookAppointmentIsLoading());
    var response =
        await _displayBookAppointmentRepoImple.displayBookAppointMentMethod();

    response
        .fold((failure) => emit(DisplayBookAppointmentFailure(failure.message)),
            (data) {
      emit(DisplayBookAppointmentSuccess());
    });
  }
}
