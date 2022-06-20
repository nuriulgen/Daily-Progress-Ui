import 'package:daily_progress_ui/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subTitle;
  CustomCard({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  final String text = '%76';
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff333333),
      shape: roundedRectangleBorder,
      elevation: context.h10,
      child: Padding(
        padding: context.pv10 + context.ph10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _createListTile(context),
            SizedBox(height: context.h20),
            Padding(
              padding: context.ph20,
              child: buildText(context),
            ),
            SizedBox(height: context.h10),
            Padding(
              padding: context.ph20,
              child: buildContainer(context),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(BuildContext context) {
    return Container(
      height: 5,
      width: context.w250,
      color: const Color(0xFF1E90FF),
    );
  }

  Text buildText(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.headline6?.copyWith(
            color: const Color(0xFFFFFFFF),
          ),
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
