import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(LoginLoading());

    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSucess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found') {
        emit(LoginFaliure(errMessage: 'user-not-found'));
      } else if (ex.code == 'wrong-password') {
        emit(LoginFaliure(errMessage: 'wrong-password'));
      }
    } catch (ex) {
      emit(LoginFaliure(errMessage: 'Something went wrong. Try again later'));
    }
  }
}
