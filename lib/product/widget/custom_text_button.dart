import 'package:flutter/material.dart';

class TextBTN extends TextButton {
  final BuildContext context;
  TextBTN({
    Key? key,
    required VoidCallback? onPressed,
    required Widget child,
    required this.context,
  }) : super(
          key: key,
          onPressed: onPressed,
          child: child,
        );
}
