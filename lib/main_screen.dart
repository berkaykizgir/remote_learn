import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remote_learn/preferences.dart';
import 'package:remote_learn/quiz_screen/quiz_screen.dart';
import 'package:remote_learn/widgets/animated_page_route.dart';
import 'package:remote_learn/work_screens/work_main.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
                bottomSheet: Container(
                  decoration: Preferences().getMorning
                      ? const BoxDecoration(
                          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                          Color(0xFF4563DB),
                          Color(0xFF3594DD),
                          Color(0xFF4563DB),
                        ]))
                      : const BoxDecoration(
                          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                          Color(0xFF0c2e4a),
                          Color(0xFF3594DD),
                          Color(0xFF1c2e4a),
                        ])),
                  child: Container(
                    height: bottomSheetHeight,
                    decoration: BoxDecoration(
                        gradient: Preferences().getMorning
                            ? const LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                                Color(0xFF5594DD),
                                Color(0xFF4563DB),
                                Color(0xFF4563DB),
                                Color(0xFF4563DB),
                              ])
                            : const LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                                Color(0xFF1c2e4a),
                                Color(0xFF1c2e4a),
                                Color(0xFF1c2e4a),
                                Color(0xFF1c2e4a),
                              ]),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
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
                            primary: Preferences().getMorning ? const Color(0xFF4563DB) : const Color(0xFF1c2e4a),
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
                              primary: Preferences().getMorning ? const Color(0xFF4563DB) : const Color(0xFF1c2e4a),
                              minimumSize: const Size(300, 40),
                              elevation: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Preferences().setMorning = !Preferences().getMorning;
                              });
                            },
                            child: const Text(
                              "Settings",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              primary: Preferences().getMorning ? const Color(0xFF4563DB) : const Color(0xFF1c2e4a),
                              minimumSize: const Size(300, 40),
                              elevation: 12,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                body: Container(
                  decoration: Preferences().getMorning
                      ? const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.1, 0.4, 0.7, 0.9],
                              colors: [Color(0xFF3594DD), Color(0xFF4563DB), Color(0xFF5036D5), Color(0xFF5B16D0)]),
                        )
                      : const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.1, 0.4, 0.7, 0.9],
                              colors: [Color(0xFF203354), Color(0xFF1c2e4a), Color(0xFF192841), Color(0xFF192841)]),
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
                            const Padding(
                              padding: EdgeInsets.only(top: 16.0),
                              child: Text(
                                "",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 16.0),
                              child: Text(
                                "",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
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
