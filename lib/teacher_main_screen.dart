import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remote_learn/preferences.dart';
import 'package:remote_learn/quiz_screen/quiz_screen.dart';
import 'package:remote_learn/teacher_flow/track_progress.dart';
import 'package:remote_learn/widgets/animated_page_route.dart';

class TeacherMainScreen extends StatefulWidget {
  const TeacherMainScreen({Key? key}) : super(key: key);

  @override
  State<TeacherMainScreen> createState() => _TeacherMainScreenState();
}

class _TeacherMainScreenState extends State<TeacherMainScreen> {
  final double bottomSheetHeight = 300;
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Are you sure ?"),
            content: const Text("Do you want to exit the App?"),
            actions: <Widget>[
              TextButton(
                onPressed: () => SystemNavigator.pop(),
                child: const Text("Yes"),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text("No"),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: SafeArea(
            child: Scaffold(
                body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: const [0.1, 0.4, 0.6, 0.8, 1],
                colors: Preferences().getThemeGradientBackgroundColor()),
          ),
          child: LayoutBuilder(builder: (context, BoxConstraints viewportBoxConstraints) {
            return SingleChildScrollView(
                child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportBoxConstraints.maxHeight,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: viewportBoxConstraints.maxHeight - bottomSheetHeight,
                      width: viewportBoxConstraints.maxWidth,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(AnimateToPage(widget: const TrackStudentsProgress()));
                            },
                            child: const Text(
                              "Track Progress",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              primary: Preferences().getTheme == 0 ? const Color(0xFF4563DB) : const Color(0xFF1c2e4a),
                              minimumSize: const Size(300, 40),
                              elevation: 12,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(AnimateToPage(widget: const ScreenQuiz()));
                              },
                              child: const Text(
                                "Make Test",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                primary: Preferences().getTheme == 0 ? const Color(0xFF4563DB) : const Color(0xFF1c2e4a),
                                minimumSize: const Size(300, 40),
                                elevation: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "Settings",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                primary: Preferences().getTheme == 0 ? const Color(0xFF4563DB) : const Color(0xFF1c2e4a),
                                minimumSize: const Size(300, 40),
                                elevation: 12,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ));
          }),
        ))));
  }
}
