import 'package:chatapp_bloc/pages/chat/Bloc/cubit/chat_cubit.dart';
import 'package:chatapp_bloc/pages/login/Bloc/LoginCubit/login_cubit.dart';
import 'package:chatapp_bloc/pages/chat/UI/chat_page.dart';
import 'package:chatapp_bloc/pages/login/UI/login_page.dart';
import 'package:chatapp_bloc/pages/register/Bloc/cubit/register_cubit.dart';
import 'package:chatapp_bloc/pages/register/UI/resgister_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => ChatCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          LoginPage.id: (context) => LoginPage(),
          RegisterPage.id: (context) => RegisterPage(),
          ChatPage.id: (context) => ChatPage()
        },
        initialRoute: LoginPage.id,
      ),
    );
  }
}
