part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterSucess extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterFaliure extends RegisterState {
  final String errMessage;
  RegisterFaliure({required this.errMessage});
}
