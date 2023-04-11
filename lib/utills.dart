import 'package:flutter/material.dart';

String getFaNumber(String number) {
  const List faNums = ["۰", "۱", "۲", "۳", "۴", "۵", "۶", "۷", "۸", "۹"];

  String result = "";

  for (var digit in number.characters) { 
    result += faNums[int.parse(digit)];
  }

  return result;
}