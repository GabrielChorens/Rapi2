// ignore_for_file: file_names

import 'package:flutter/material.dart';

mixin class ShowSnackBarMixin{
  void showSnackBar(context, String message, {Duration duration = const Duration(seconds: 4), SnackBarAction? snackBarAction}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
        action: snackBarAction,
      ),
    );
  }
}