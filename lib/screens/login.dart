// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lilian_test/screens/home.dart';

import '../main.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final firestore = FirebaseFirestore.instance;

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();

  Future<void> registerUser(
      {required String email,
      required String name,
      required BuildContext context}) async {
    try {
      final response = await firestore
          .collection("lilian")
          .doc()
          .set({"name": name, "email": email}, SetOptions(merge: true));
      debugPrint("added new data");
      Navigator.pushNamed(context, "/home");
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Email"),
              TextInputField(
                controller: emailcontroller,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text("Name"),
              TextInputField(
                controller: namecontroller,
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () async {
                        await registerUser(
                            email: emailcontroller.text,
                            name: namecontroller.text,
                            context: context);
                      },
                      child: const Text("LOGIN")))
            ],
          ),
        ));
  }
}
