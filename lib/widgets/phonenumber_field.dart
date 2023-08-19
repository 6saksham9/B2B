import 'package:flutter/material.dart';

Widget phoneNumberTextField(BuildContext context,
    FocusNode phoneNumberFocusNode, TextEditingController phoneNumber) {
  return TextField(
    controller: phoneNumber,
    focusNode: phoneNumberFocusNode,
    keyboardType: TextInputType.number,
    decoration: const InputDecoration(
      prefixIcon: Icon(
        Icons.call,
        color: Colors.black,
      ),
      label: Text(
        'Enter registered mobile number',
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
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
  );
}
