import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remote_learn/preferences.dart';
import 'package:remote_learn/quiz_screen/quiz_screen.dart';
import 'package:remote_learn/widgets/animated_page_route.dart';
import 'package:remote_learn/student_flow/work_main.dart';

class StudentMainScreen extends StatefulWidget {
  const StudentMainScreen({Key? key}) : super(key: key);

  @override
  State<StudentMainScreen> createState() => _StudentMainScreenState();
}

class _StudentMainScreenState extends State<StudentMainScreen> {
  final TextEditingController keyController = TextEditingController();
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
                              Navigator.of(context).push(AnimateToPage(widget: const ScreenWorkMain()));
                            },
                            child: const Text(
                              "Let's Work",
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
                                "Test Me",
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
                              onPressed: () {
                                if (Preferences().getInvitationKey != '') {
                                  //TODO: WORK ONLINE REGISTRATION SCREEN
                                } else {
                                  //TODO: work online screen.
                                }
                              },
                              child: const Text(
                                "Work Online",
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
                              onPressed: () {
                                //TODO: STUDENT SETTINGS SCREEN
                              },
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
