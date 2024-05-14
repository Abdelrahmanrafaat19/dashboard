part of 'make_book_appointment_cubit.dart';

@immutable
sealed class MakeBookAppointmentState {}

final class MakeBookAppointmentInitial extends MakeBookAppointmentState {}

final class MakeBookAppointmentIsLaoding extends MakeBookAppointmentState {}

final class MakeBookAppointmentSuccess extends MakeBookAppointmentState {
  final Map<String, dynamic> data;
  MakeBookAppointmentSuccess(this.data);
}

final class MakeBookAppointmentFailure extends MakeBookAppointmentState {
  final dynamic message;
  MakeBookAppointmentFailure(this.message);
}
