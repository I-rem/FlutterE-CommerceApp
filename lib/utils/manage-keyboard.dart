// ignore_for_file: file_names

import 'package:flutter/material.dart';

class KeyboardUtil {
  static void hideKeyboard(BuildContext context) { // hide the keyboard when it is no longer needed
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus(); // no longer the active recipient of user input
    }
  }
}
