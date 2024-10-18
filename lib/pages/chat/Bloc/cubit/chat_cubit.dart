import 'package:bloc/bloc.dart';
import 'package:chatapp_bloc/constants.dart';
import 'package:chatapp_bloc/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  List<Message> messagesList = [];
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollections);

  void sendMessage({required String message, required String email}) {
    try {
      messages.add(
        {kMessage: message, kCreatedAt: DateTime.now(), 'id': email},
      );
    } on Exception {
      // TODO
    }
  }

  void getMessage() {
    messages.orderBy(kCreatedAt, descending: true).snapshots().listen((event) {
      messagesList
          .clear(); //to start clean with new messages and not duplicated histroy
      print(event.docs);
      for (var doc in event.docs) {
        print('doc = ${doc}');
        messagesList.add(Message.fromJson(doc));
      }
      print("sucess");
      emit(ChatSucess(messages: messagesList));
    });
  }
}
