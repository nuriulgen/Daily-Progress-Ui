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
  final String cardSubTitle = 'Here you can see your daily task';
}
