import 'package:dashboard/feature/login/data/signup/sign_up_repo_imple.dart';
import 'package:dashboard/feature/login/presentation/bloc/sign_up_bloc/sign_up_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepoImple _signUpRepoImple;
  SignUpCubit(this._signUpRepoImple) : super(SignUpInitState());
  Future<void> signUpMethod(Map<String, dynamic> data) async {
    emit(SignUpIsLoadingState());
    var response = await _signUpRepoImple.signUpMethod(data);
    response.fold(
      (failure) => emit(SignUpFailureState(failure.message)),
      (data) => emit(
        SignUpSuccessState(data),
      ),
    );
  }
}
