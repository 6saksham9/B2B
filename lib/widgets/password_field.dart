import 'package:flutter/material.dart';

Widget passwordTextField(BuildContext context, FocusNode passwordFocusNode,
    TextEditingController password) {
  return TextField(
    controller: password,
    focusNode: passwordFocusNode,
    obscureText: true,
    decoration: const InputDecoration(
      prefixIcon: Icon(
        Icons.password,
        color: Colors.black,
      ),
      label: Text(
        'Enter your password',
        style: TextStyle(color: Colors.black),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
    ),
  );
}
