

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const double PADDING = 16.0;
const double INPUT_RADIUS = 10.0;

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black45,
      textColor: Colors.white,
      fontSize: 16.0);
}