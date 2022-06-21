import 'package:daily_progress_ui/core/extensions/context_extension.dart';
import 'package:daily_progress_ui/view/profile_view.dart';
import 'package:flutter/material.dart';

import '../core/constants/string_constants.dart';
import '../product/widget/custom_elevated_button.dart';
import '../product/widget/custom_listTile.dart';
import '../product/widget/custom_outlined_button.dart';

class DailyProgressView extends StatelessWidget {
  DailyProgressView({Key? key}) : super(key: key);
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  final String appBarTitle = "Daily Progress";
  final String imagePath = 'avatar';
  final String hintTitle = 'Search';
  final String path = 'assets/images/avatar.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle), centerTitle: true, actions: [
        Padding(
          padding: context.ph10 + context.pv10,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ProfileView()));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(path),
              radius: 20,
            ),
          ),
        ),
      ]),
      body: Padding(
        padding: context.ph10 + context.pv10,
        child: Column(
          children: [
            Padding(
              padding: context.ph10 + context.pv10,
              child: textFormFieldWidget(context),
            ),
            Padding(
              padding: context.pv10 + context.ph20,
              child: _createButtons(context),
            ),
            SizedBox(height: context.hw10),
            CustomListTile(
              color: Colors.green,
              icon: Icons.book_outlined,
              title: appStringConstants!.dailyListTileTitle1,
            ),
            SizedBox(height: context.hw10),
            CustomListTile(
              color: Colors.indigoAccent,
              icon: Icons.alarm_add_outlined,
              title: appStringConstants!.dailyListTileTitle2,
            ),
            SizedBox(height: context.hw10),
            CustomListTile(
              color: Colors.deepOrange,
              icon: Icons.archive_outlined,
              title: appStringConstants!.dailyListTileTitle3,
            ),
            SizedBox(height: context.hw10),
            CustomListTile(
              color: Colors.redAccent,
              icon: Icons.check,
              title: appStringConstants!.dailyListTileTitle5,
            ),
            SizedBox(height: context.hw10),
            CustomListTile(
              color: Colors.cyan,
              icon: Icons.ac_unit_outlined,
              title: appStringConstants!.dailyListTileTitle4,
            ),
          ],
        ),
      ),
    );
  }

  TextFormField textFormFieldWidget(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(context.hw20)),
        hintText: hintTitle,
        fillColor: const Color(0xFF333333),
        filled: true,
      ),
    );
  }

  Row _createButtons(BuildContext context) {
    return Row(
      children: [
        StadiumElevatedBTN(
          context: context,
          onPressed: () {},
          child: Text(
            appStringConstants!.profilElevatedButtonText,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: context.hw20),
        OutlinedBTN(
          context: context,
          onPressed: () {},
          child: Text(
            appStringConstants!.profilOutlinedButtonText,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFF4F4F4F), fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
