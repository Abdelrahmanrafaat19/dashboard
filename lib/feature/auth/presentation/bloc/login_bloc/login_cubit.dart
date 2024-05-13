import 'package:bloc/bloc.dart';
import 'package:dashboard/feature/auth/data/login_repo/login_repo_imple.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginRepoImple _loginRepoImple;
  LoginCubit(this._loginRepoImple) : super(LoginInitial());
  Future<void> loginMethod(Map<String, dynamic> data) async {
    emit(LoginIsLoading());
    var response = await _loginRepoImple.loginMethod(data);
    response.fold(
      (failure) => emit(LoginFailure(failure.message)),
      (data) => emit(
        LoginISuccess(data),
      ),
    );
  }
}
