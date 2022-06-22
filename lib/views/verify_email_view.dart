import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class verifyEmailView extends StatefulWidget {
  const verifyEmailView({Key? key}) : super(key: key);

  @override
  State<verifyEmailView> createState() => _verifyEmailViewState();
}

class _verifyEmailViewState extends State<verifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verify email")),
      body: Column(children: [
        const Text("please verify your email address"),
        TextButton(
          onPressed: () async {
            final user = FirebaseAuth.instance.currentUser;
            await user?.sendEmailVerification();
          },
          child: const Text("send email verification"),
        )
      ]),
    );
  }
}
