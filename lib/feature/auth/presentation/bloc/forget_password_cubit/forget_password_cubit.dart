import 'package:bloc/bloc.dart';
import 'package:dashboard/feature/auth/data/forget_password_repo/forget_password_repo_imple.dart';
import 'package:meta/meta.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  final ForgetPasswordRepoImple _forgetPasswordRepoImple;
  ForgetPasswordCubit(this._forgetPasswordRepoImple)
      : super(ForgetPasswordInitial());
  Future<void> fordetPasswordMethod(Map<String, dynamic> data) async {
    emit(ForgetPasswordIsLoading());
    var response = await _forgetPasswordRepoImple.forgetPasswordMethod(data);
    response.fold(
      (failure) {
        emit(ForgetPasswordFailure(failure.message));
      },
      (data) {
        emit(
          ForgetPasswordSuccess(data),
        );
      },
    );
  }
}
