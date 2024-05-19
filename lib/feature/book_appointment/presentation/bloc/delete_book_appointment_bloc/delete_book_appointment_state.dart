part of 'delete_book_appointment_cubit.dart';

@immutable
sealed class DeleteBookAppointmentState {}

final class DeleteBookAppointmentInitial extends DeleteBookAppointmentState {}

final class DeleteBookAppointmentIsLoading extends DeleteBookAppointmentState {}

final class DeleteBookAppointmentSuccess extends DeleteBookAppointmentState {
  final dynamic data;

  DeleteBookAppointmentSuccess(this.data);
}

final class DeleteBookAppointmentFailure extends DeleteBookAppointmentState {
  final dynamic message;

  DeleteBookAppointmentFailure(this.message);
}
