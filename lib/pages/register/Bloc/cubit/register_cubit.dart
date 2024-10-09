import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future<void> registerUser(
      {required String email, required String password}) async {
    emit(RegisterLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        emit(RegisterFaliure(errMessage: "Weak Password"));
      } else if (ex.code == 'email-already-in-use') {
        emit(RegisterFaliure(errMessage: "Email already in use"));
      }
    } catch (ex) {
      emit(RegisterFaliure(errMessage: "Something went wrong"));
    }
  }
}
