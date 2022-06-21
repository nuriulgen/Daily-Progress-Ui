import 'package:daily_progress_ui/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final double widthProgress;
  final Color colorProgress;
  final String numberText;

  CustomCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.widthProgress,
    required this.colorProgress,
    required this.numberText,
  }) : super(key: key);
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff333333),
      shape: roundedRectangleBorder,
      elevation: context.hw10,
      child: Padding(
        padding: context.pv10 + context.ph10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _createListTile(context),
            SizedBox(height: context.hw20),
            Padding(
              padding: context.ph20,
              child: Row(
                children: [
                  progressIndicatorView(context),
                  SizedBox(width: context.hw5),
                  numberTextView(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text numberTextView(BuildContext context) {
    return Text(numberText,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: Colors.white));
  }

  Container progressIndicatorView(BuildContext context) {
    return Container(
      height: context.hw5,
      width: widthProgress,
      color: colorProgress,
    );
  }

  ListTile _createListTile(BuildContext context) {
    return ListTile(
      title: Text(title,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: const Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold,
              )),
      subtitle: Text(subTitle,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: const Color(0xFFC1C1C1),
                fontWeight: FontWeight.w300,
              )),
    );
  }
}
