import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lilian_test/screens/home.dart';
import 'package:lilian_test/screens/login.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          "/home": (BuildContext context) => HomePage(),
          "login": (BuildContext context) => LoginPage(),
        },
        home: LoginPage());
  }
}

class TextInputField extends StatelessWidget {
  const TextInputField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
    );
  }
}
