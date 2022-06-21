import 'package:daily_progress_ui/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../core/constants/string_constants.dart';
import '../product/utils/text_style.dart';
import '../product/widget/custom_card.dart';
import '../product/widget/custom_elevated_button.dart';
import '../product/widget/custom_icon_button.dart';
import '../product/widget/custom_outlined_button.dart';
import 'daily_progress_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ProjectTextStyles projectTextStyles = ProjectTextStyles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: context.hw20,
        title: Text(appStringConstants!.homeAppBarTitle,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: const Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w700,
                )),
        actions: [
          IconBTN(
            context: context,
            onPressed: () {},
            child: const Icon(Icons.search_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.ph20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TitleWidget(appStringConstants: appStringConstants),
              Padding(
                padding: context.pv10,
                child: _createButtons(context),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => DailyProgressView()));
                },
                child: customBigCard(context),
              ),
              Padding(
                padding: context.ph10 + context.pv20,
                child: textTitleWidget(context),
              ),
              customSmallCard(context),
              customSecondSmallCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Row customSecondSmallCard(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: context.hw140,
          width: context.hw165,
          child: CustomCard(
              title: appStringConstants!.cardTitle1,
              subTitle: appStringConstants!.cardSubTitle1,
              widthProgress: context.hw50,
              colorProgress: const Color(0xFFBC62FF),
              numberText: context.hw50.toString()),
        ),
        SizedBox(width: context.hw30),
        SizedBox(
          height: context.hw140,
          width: context.hw165,
          child: CustomCard(
              title: appStringConstants!.cardTitle4,
              subTitle: appStringConstants!.cardSubTitle4,
              widthProgress: context.hw5,
              colorProgress: const Color(0xFF7FFF62),
              numberText: context.hw5.toString()),
        ),
      ],
    );
  }

  Row customSmallCard(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: context.hw140,
          width: context.hw165,
          child: CustomCard(
              title: appStringConstants!.cardTitle2,
              subTitle: appStringConstants!.cardSubTitle2,
              widthProgress: context.hw20,
              colorProgress: const Color(0xFF1E90FF),
              numberText: context.hw20.toString()),
        ),
        SizedBox(width: context.hw30),
        SizedBox(
          height: context.hw140,
          width: context.hw165,
          child: CustomCard(
              title: appStringConstants!.cardTitle3,
              subTitle: appStringConstants!.cardSubTitle3,
              widthProgress: context.hw30,
              colorProgress: const Color(0xFFFFAB1E),
              numberText: context.hw30.toString()),
        ),
      ],
    );
  }

  SizedBox customBigCard(BuildContext context) {
    return SizedBox(
      height: context.hw150,
      child: CustomCard(
        title: appStringConstants!.cardTitle1,
        subTitle: appStringConstants!.cardSubTitle1,
        colorProgress: Colors.red,
        widthProgress: context.hw165,
        numberText: context.hw165.toString(),
      ),
    );
  }

  Text textTitleWidget(BuildContext context) {
    return Text(
      appStringConstants!.homeSecondTitle,
      textAlign: TextAlign.start,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: const Color(0xFFFFFFFF)),
    );
  }

  Row _createButtons(BuildContext context) {
    return Row(
      children: [
        StadiumElevatedBTN(
          context: context,
          onPressed: () {},
          child: Text(
            appStringConstants!.homeElevatedButtonText,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: context.hw20,
        ),
        OutlinedBTN(
          context: context,
          onPressed: () {},
          child: Text(
            appStringConstants!.homeOutlinedButtonText,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFF4F4F4F), fontWeight: FontWeight.bold),
          ),
        ),
      ],
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
      appStringConstants!.homeTitle,
      style: Theme.of(context).textTheme.headline3?.copyWith(
          color: const Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
    );
  }
}
