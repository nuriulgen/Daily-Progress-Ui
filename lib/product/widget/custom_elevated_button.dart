import 'package:daily_progress_ui/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class StadiumElevatedBTN extends ElevatedButton {
  final BuildContext context;

  StadiumElevatedBTN({
    Key? key,
    required VoidCallback? onPressed,
    required Widget? child,
    required this.context,
  }) : super(
          key: key,
          onPressed: onPressed,
          child: Padding(padding: context.p10, child: child),
          style: ButtonStyle(
            shape:
                MaterialStateProperty.all<StadiumBorder>(const StadiumBorder()),
            padding: MaterialStateProperty.all<EdgeInsets>(context.p10),
          ),
        );
}
