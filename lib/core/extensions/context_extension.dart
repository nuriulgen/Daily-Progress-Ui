import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  // GET SCREEN SIZE
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get appbarSize => 56;

  //PADDING
  EdgeInsets get p0 => EdgeInsets.zero;
  EdgeInsets get p10 => const EdgeInsets.all(10);
  EdgeInsets get pv10 => const EdgeInsets.symmetric(vertical: 10);
  EdgeInsets get pv20 => const EdgeInsets.symmetric(vertical: 20);
  EdgeInsets get ph20 => const EdgeInsets.symmetric(horizontal: 20);
  EdgeInsets get porl20 => const EdgeInsets.only(right: 20, left: 20);
  EdgeInsets get potb20 => const EdgeInsets.only(top: 20, bottom: 20);
  EdgeInsets get potb70 => const EdgeInsets.only(top: 70, bottom: 20);

  // HEIGHT
  double get h50 => 50;
  double get h250 => 250;
  double get w375 => 375;
}
