import 'package:daily_progress_ui/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../core/constants/string_constants.dart';
import '../product/widget/custom_elevated_button.dart';
import '../product/widget/custom_listTile.dart';
import '../product/widget/custom_text_button.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);
  final String path = 'assets/images/avatar.png';
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: context.ph20 + context.pv10,
            child: Center(
              child: _circleImage(context),
            ),
          ),
          _subTitleWidget(context),
          Padding(
            padding: context.pv20,
            child: buildStadiumElevatedBTN(context),
          ),
          SizedBox(height: context.hw10),
          Text(
            appStringConstants!.profilText,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.white,
                ),
          ),
          Padding(
            padding: context.ph20 + context.pv10,
            child: CustomListTile(
              title: 'Turn on Notifications',
              color: Colors.red,
              icon: Icons.notifications_active_outlined,
            ),
          ),
          SizedBox(height: context.hw10),
          Text(
            appStringConstants!.profilText2,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.white,
                ),
          ),
          SizedBox(height: context.hw10),
          Padding(
            padding: context.ph20 + context.pv10,
            child: CustomListTile(
              title: 'Invite Link',
              color: Colors.cyan,
              icon: Icons.account_circle_outlined,
            ),
          ),
          SizedBox(height: context.hw10),
          _createTextButton(context),
        ],
      ),
    );
  }

  TextBTN _createTextButton(BuildContext context) {
    return TextBTN(
      context: context,
      onPressed: () {},
      child: Text(appStringConstants!.profilTextButton),
    );
  }

  StadiumElevatedBTN buildStadiumElevatedBTN(BuildContext context) {
    return StadiumElevatedBTN(
      context: context,
      onPressed: () {},
      child: SizedBox(
          width: context.hw130,
          child: Center(child: Text(appStringConstants!.profilButtonText))),
    );
  }

  Text _subTitleWidget(BuildContext context) {
    return Text(
      appStringConstants!.profilSubtitle,
      style: Theme.of(context)
          .textTheme
          .titleSmall
          ?.copyWith(color: Colors.white, fontWeight: FontWeight.w300),
    );
  }

  CircleAvatar _circleImage(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(path),
      radius: context.hw100,
    );
  }
}
