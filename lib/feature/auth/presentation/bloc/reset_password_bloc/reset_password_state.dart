part of 'reset_password_cubit.dart';

@immutable
sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}

final class ResetPasswordIsLoading extends ResetPasswordState {}

final class ResetPasswordSuccess extends ResetPasswordState {
  final Map<String, dynamic> data;
  ResetPasswordSuccess(this.data);
}

final class ResetPasswordFailure extends ResetPasswordState {
  final dynamic message;
  ResetPasswordFailure(this.message);
}
