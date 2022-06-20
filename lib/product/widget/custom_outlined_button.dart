import 'package:daily_progress_ui/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class OutlinedBTN extends OutlinedButton {
  final BuildContext context;

  OutlinedBTN({
    Key? key,
    required VoidCallback? onPressed,
    required Widget? child,
    required this.context,
  }) : super(
          key: key,
          onPressed: onPressed,
          child: Padding(padding: context.p10, child: child),
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            side: const BorderSide(width: 2, color: Color(0xFF4F4F4F)),
          ),
        );
}
