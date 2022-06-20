import 'package:flutter/material.dart';

class IconBTN extends IconButton {
  final BuildContext context;
  const IconBTN({
    Key? key,
    required VoidCallback? onPressed,
    required Widget child,
    required this.context,
  }) : super(
          key: key,
          onPressed: onPressed,
          icon: child,
        );
}
