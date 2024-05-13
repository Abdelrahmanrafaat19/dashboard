part of 'forget_password_cubit.dart';

@immutable
sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class ForgetPasswordIsLoading extends ForgetPasswordState {}

final class ForgetPasswordSuccess extends ForgetPasswordState {
  final Map<String, dynamic> data;
  ForgetPasswordSuccess(this.data);
}

final class ForgetPasswordFailure extends ForgetPasswordState {
  final dynamic message;
  ForgetPasswordFailure(this.message);
}
