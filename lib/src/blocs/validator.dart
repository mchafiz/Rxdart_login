import 'package:flutter/material.dart';
import 'dart:async';

class Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('.com')) {
      sink.add(email);
    } else {
      sink.addError('isilah email anda dengan benar');
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    int minLength = 8;
    bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
    bool hasDigits = password.contains(new RegExp(r'[0-9]'));
    bool hasLowercase = password.contains(new RegExp(r'[a-z]'));
    bool hasSpecialCharacters =
        password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasMinLength = password.length >= minLength;
    if (hasUppercase == true &&
        hasDigits == true &&
        hasLowercase == true &&
        hasSpecialCharacters == true &&
        hasMinLength == true) {
      sink.add(password);
    } else if (hasLowercase == false || hasUppercase == false) {
      sink.addError('pasword anda harus mengandung huruf kecil dan besar');
    } else if (hasSpecialCharacters == false) {
      sink.addError('pasword anda harus mengandung symbol');
    } else if (hasDigits == false) {
      sink.addError('pasword anda harus mengandung angka');
    } else {
      sink.addError('pasword anda harus minimal 8 karakter');
    }
  });
}
