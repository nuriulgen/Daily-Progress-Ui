class AppStringConstants {
  static AppStringConstants? _instance;
  static AppStringConstants? get instance {
    _instance ??= AppStringConstants._init();
    return _instance;
  }

  AppStringConstants._init();

  final String signInTitle = 'The only productivity app you need';
  final String signElevatedButtonText = 'Sign in with email';
  final String signOutlinedButtonText1 = 'Google';
  final String signOutlinedButtonText2 = 'Apple ID';
  final String signTextButtonText =
      'By Continuing you agree to the Terms of Conditious';

  final String homeAppBarTitle = 'Home';
  final String homeTitle = 'Hello Nuri Ulgen';
  final String homeElevatedButtonText = 'Overview';
  final String homeOutlinedButtonText = 'Productivity';
  final String homeSecondTitle = 'Category';

  final String cardTitle = 'Daily Progress';
  final String cardTitle1 = 'Books';
  final String cardTitle2 = 'Email';
  final String cardTitle3 = 'Work';
  final String cardTitle4 = 'Urgent';
  final String cardSubTitle = 'Here you can see your daily task';
  final String cardSubTitle1 = '7 New';
  final String cardSubTitle2 = '5 New';
  final String cardSubTitle3 = '2 New';
  final String cardSubTitle4 = '13 New';

  final String profilElevatedButtonText = 'All';
  final String profilOutlinedButtonText = 'Favorite';
  final String dailyListTileTitle1 = 'Fix landing page';
  final String dailyListTileTitle2 = 'Read the learn startup';
  final String dailyListTileTitle3 = 'Reply to Nuri';
  final String dailyListTileTitle4 = 'Finalize pitch deck';
  final String dailyListTileTitle5 = 'Share prototype with team';

  final String profilSubtitle = 'nuriulgen07@gmail.com';
  final String profilButtonText = 'Edit Profile';
  final String profilText = 'Turn on Notifications';
  final String profilText2 = 'Invite Link';
  final String profilTextButton = 'Log Out';
}
