import 'package:bloc/bloc.dart';
import 'package:dashboard/feature/book_appointment/data/delete_book_appointment/delete_book_appointment_repo/delete_book_appointment_repo_imple.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'delete_book_appointment_state.dart';

class DeleteBookAppointmentCubit extends Cubit<DeleteBookAppointmentState> {
  final DeleteBookAppointmentRepoImple _deleteBookAppointmentRepoImple;
  DeleteBookAppointmentCubit(this._deleteBookAppointmentRepoImple)
      : super(DeleteBookAppointmentInitial());
  Future<void> deleteBookAppointmentMethod(dynamic bookID) async {
    emit(DeleteBookAppointmentIsLoading());
    var response = await _deleteBookAppointmentRepoImple
        .deleteBookAppointmentMEthod(bookID);
    response.fold(
      (failure) => emit(
        DeleteBookAppointmentFailure(
          failure.message,
        ),
      ),
      (data) => emit(
        DeleteBookAppointmentSuccess(
          data,
        ),
      ),
    );
  }
}
