import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remote_learn/main_screen.dart';
import 'package:remote_learn/onboarding/onboarding_screen.dart';
import 'package:remote_learn/preferences.dart';
import 'package:remote_learn/quiz_screen/quiz_screen.dart';
import 'package:remote_learn/work_screens/work_main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  await Preferences().init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MeTest());
}

class MeTest extends StatelessWidget {
  static Map<String, Widget Function(BuildContext)> routes = {};
  const MeTest({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    routes = {
      '/onboarding': (context) => const ScreenOnboarding(),
      '/screen-work-main': (context) => const ScreenWorkMain(),
      '/screen-quiz': (context) => const ScreenQuiz(),
      '/screen-main': (context) => const MainScreen(),
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        /*    AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate, */
      ],
      supportedLocales: const [Locale('en', '')],
      title: 'Me Test',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routes: routes,
      initialRoute: Preferences().getRoute,
    );
  }
}
