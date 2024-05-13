import 'package:bloc/bloc.dart';
import 'package:dashboard/feature/auth/data/reset_password_repo/reset_password_repo_imple.dart';
import 'package:meta/meta.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ResetPasswordRepoImple _resetPasswordRepoImple;
  ResetPasswordCubit(this._resetPasswordRepoImple)
      : super(ResetPasswordInitial());
  Future<void> resetPasswordMethod(Map<String, dynamic> data) async {
    emit(
      ResetPasswordIsLoading(),
    );
    var response = await _resetPasswordRepoImple.resetPasswordMethod(data);
    response.fold(
      (failure) => emit(
        ResetPasswordFailure(failure.message),
      ),
      (data) => emit(
        ResetPasswordSuccess(data),
      ),
    );
  }
}
