import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  navigateTo(Widget destination) {
    Navigator.of(this)
        .push(MaterialPageRoute(builder: (context) => destination));
  }

  replaceWith(Widget destination) {
    Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (context) => destination));
  }

  replaceAllWith(Widget destination) {
    Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => destination),
        ModalRoute.withName("/Home"));
  }

  close() {
    Navigator.of(this).pop();
  }
}
