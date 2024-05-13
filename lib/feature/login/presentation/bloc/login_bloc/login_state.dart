part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginIsLoading extends LoginState {}

final class LoginISuccess extends LoginState {
  final Map<String, dynamic> data;
  LoginISuccess(this.data);
}

final class LoginFailure extends LoginState {
  final dynamic message;
  LoginFailure(this.message);
}
