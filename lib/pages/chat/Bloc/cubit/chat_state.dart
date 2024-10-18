part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatSucess extends ChatState {
  final List<Message> messages;
  ChatSucess({required this.messages});
}
