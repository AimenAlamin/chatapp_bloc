part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSucess extends LoginState {}

class LoginFaliure extends LoginState {}
