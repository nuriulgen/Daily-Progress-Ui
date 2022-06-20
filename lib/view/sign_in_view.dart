import 'package:daily_progress_ui/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../core/constants/image_constants.dart';
import '../core/constants/string_constants.dart';
import '../product/utils/text_style.dart';
import '../product/widget/custom_elevated_button.dart';
import '../product/widget/custom_outlined_button.dart';
import '../product/widget/custom_text_button.dart';
import 'home_view.dart';

class SignInView extends StatelessWidget {
  SignInView({Key? key}) : super(key: key);
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ProjectTextStyles projectTextStyles = ProjectTextStyles();
  final String imagePath = 'work';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.ph20 + context.pv20,
        child: Column(
          children: [
            Padding(
              padding: context.porl20 + context.potb70,
              child: _createImage(context),
            ),
            _TitleWidget(appStringConstants: appStringConstants),
            const Spacer(),
            Padding(
                padding: context.potb20, child: _createElevatedButton(context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _createOutlinedGoogleButton(context),
                _createOutlinedAppleButton(context),
              ],
            ),
            Padding(
              padding: context.pv10,
              child: _createTextButton(context),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _createImage(BuildContext context) {
    return SizedBox(
      height: context.h250,
      width: context.w375,
      child: PngImage(name: imagePath),
    );
  }

  TextBTN _createTextButton(BuildContext context) {
    return TextBTN(
      context: context,
      onPressed: () {},
      child: Text(appStringConstants!.signTextButtonText,
          style: projectTextStyles.textButtonStyle),
    );
  }

  OutlinedBTN _createOutlinedAppleButton(BuildContext context) {
    return OutlinedBTN(
      context: context,
      onPressed: () {},
      child: TextWidget(text: appStringConstants!.signOutlinedButtonText2),
    );
  }

  OutlinedBTN _createOutlinedGoogleButton(BuildContext context) {
    return OutlinedBTN(
      context: context,
      onPressed: () {},
      child: TextWidget(text: appStringConstants!.signOutlinedButtonText1),
    );
  }

  StadiumElevatedBTN _createElevatedButton(BuildContext context) {
    return StadiumElevatedBTN(
      context: context,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => HomeView()));
      },
      child: Center(
          child: Text(
        appStringConstants!.signElevatedButtonText,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      )),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  Widget build(BuildContext context) {
    return Text(
      appStringConstants!.signInTitle,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}

class TextWidget extends StatelessWidget {
  TextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  ProjectTextStyles projectTextStyles = ProjectTextStyles();
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 130,
        height: 45,
        child: Center(
          child: Text(
            text,
            style: projectTextStyles.outlinedButtonStyle,
          ),
        ));
  }
}
