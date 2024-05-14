import 'package:bloc/bloc.dart';
import 'package:dashboard/feature/book_appointment/data/make_book_appointment_repo_imple.dart';
import 'package:meta/meta.dart';

part 'make_book_appointment_state.dart';

class MakeBookAppointmentCubit extends Cubit<MakeBookAppointmentState> {
  final MakeBookAppointmentRepoImple _makeBookAppointmentRepoImple;
  MakeBookAppointmentCubit(this._makeBookAppointmentRepoImple)
      : super(MakeBookAppointmentInitial());
  Future<void> makeBookAppointmentMethod(Map<String, dynamic> data) async {
    emit(MakeBookAppointmentIsLaoding());
    var response =
        await _makeBookAppointmentRepoImple.makeBookAppointmentMethod(data);
    response.fold(
      (failure) => emit(
        MakeBookAppointmentFailure(
          failure.message,
        ),
      ),
      (data) => emit(
        MakeBookAppointmentSuccess(
          data,
        ),
      ),
    );
  }
}
