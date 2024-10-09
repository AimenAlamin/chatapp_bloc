part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSucess extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFaliure extends LoginState {
  final String errMessage;
  LoginFaliure({required this.errMessage});
}
