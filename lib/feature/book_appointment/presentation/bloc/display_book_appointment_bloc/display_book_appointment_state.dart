part of 'display_book_appointment_cubit.dart';

sealed class DisplayBookAppointmentState {}

final class DisplayBookAppointmentInitial extends DisplayBookAppointmentState {}

final class DisplayBookAppointmentIsLoading
    extends DisplayBookAppointmentState {}

final class DisplayBookAppointmentSuccess extends DisplayBookAppointmentState {}

final class DisplayBookAppointmentFailure extends DisplayBookAppointmentState {
  final dynamic message;
  DisplayBookAppointmentFailure(this.message);
}
