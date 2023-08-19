import 'package:flutter/material.dart';

import '../widgets/password_field.dart';
import '../widgets/phonenumber_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  FocusNode phoneNumberFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        phoneNumberFocusNode.unfocus();
        passwordFocusNode.unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Retailer Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              phoneNumberTextField(context, phoneNumberFocusNode, phoneNumber),
              const SizedBox(
                height: 15,
              ),
              passwordTextField(context, passwordFocusNode, password),
              const SizedBox(
                height: 15,
              ),
              loginbutton(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget loginbutton(BuildContext context) {
  return Row(
    children: [
      Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: const Color(0xff19A61E),
            foregroundColor: Colors.white,
          ),
          onPressed: () {},
          child: const Text(
            'Login',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}
