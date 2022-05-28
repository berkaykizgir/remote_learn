import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:me_test/onboarding/onboarding_contents.dart';
import 'package:me_test/preferences.dart';
import 'package:me_test/quiz_screen/quiz_screen.dart';
import 'package:me_test/widgets/animated_page_route.dart';
import 'package:me_test/work_screens/work_main.dart';

class ScreenOnboarding extends StatefulWidget {
  const ScreenOnboarding({Key? key}) : super(key: key);

  @override
  State<ScreenOnboarding> createState() => _ScreenOnboardingState();
}

class _ScreenOnboardingState extends State<ScreenOnboarding> with SingleTickerProviderStateMixin {
  final _controller = PageController();
  int _currentPage = 0;
  bool ischangingScreen = false;
  bool isLoginScreen = false;
  final double bottomSheetHeight = 300;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < contents.length - 1; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  AnimatedContainer _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      curve: Curves.easeIn,
      height: 8,
      width: isActive ? 20 : 10,
      decoration: BoxDecoration(
        color: isActive
            ? Colors.white
            : Preferences().getMorning
                ? const Color(0xFF7B51D3)
                : const Color(0xFF203354),
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
          bottomSheet: AnimatedCrossFade(
              firstChild: Container(
                height: 0,
              ),
              secondChild: Container(
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
              crossFadeState: isLoginScreen ? CrossFadeState.showSecond : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 1500)),
          floatingActionButton: AnimatedOpacity(
            opacity: isLoginScreen ? 0 : 1,
            duration: const Duration(milliseconds: 1500),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: AnimatedCrossFade(
                firstCurve: Curves.easeOut,
                secondCurve: Curves.easeOut,
                sizeCurve: Curves.ease,
                duration: const Duration(milliseconds: 750),
                secondChild: FloatingActionButton.extended(
                  heroTag: "floatSecondTag",
                  backgroundColor: Preferences().getMorning ? const Color(0xFF5036D5) : const Color(0xFF092841),
                  foregroundColor: Colors.white,
                  elevation: 2,
                  splashColor: Preferences().getMorning ? const Color(0xFF3036D5) : const Color(0xFF172841),
                  onPressed: () {
                    setState(() {
                      isLoginScreen = true;
                    });
                  },
                  label: const Text("Start the journey"),
                ),
                crossFadeState: _currentPage != contents.length - 2 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                firstChild: FloatingActionButton.extended(
                  heroTag: "floatFirstTag",
                  backgroundColor: Preferences().getMorning ? const Color(0xFF5036D5) : const Color(0xFF092841),
                  foregroundColor: Colors.white,
                  elevation: 2,
                  splashColor: Preferences().getMorning ? const Color(0xFF3036D5) : const Color(0xFF172841),
                  onPressed: () {
                    _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                  },
                  label: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text('Next', style: TextStyle(color: Colors.white)),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                    ],
                  ),
                ),
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
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: PageView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _controller,
                        onPageChanged: (value) => setState(() => _currentPage = value),
                        itemCount: contents.length - 1,
                        itemBuilder: (context, i) {
                          return LayoutBuilder(builder: (context, BoxConstraints viewportBoxConstraints) {
                            return SingleChildScrollView(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: viewportBoxConstraints.maxHeight,
                                ),
                                child: AnimatedCrossFade(
                                  firstCurve: Curves.easeOut,
                                  secondCurve: Curves.easeOut,
                                  sizeCurve: Curves.ease,
                                  duration: const Duration(milliseconds: 1500),
                                  crossFadeState: isLoginScreen ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                                  secondChild: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          contents[i + 1].image,
                                          height: isLoginScreen ? viewportBoxConstraints.maxHeight - bottomSheetHeight : viewportBoxConstraints.maxHeight * 0.5,
                                          width: viewportBoxConstraints.maxWidth,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 16.0),
                                          child: Text(
                                            contents[i + 1].title,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 16.0),
                                          child: Text(
                                            contents[i + 1].desc,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  firstChild: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Stack(
                                      children: [
                                        Column(
                                          children: [
                                            InkWell(
                                              onTap: (() {
                                                setState(() {
                                                  Preferences().setMorning = !Preferences().getMorning;
                                                });
                                              }),
                                              child: AnimatedCrossFade(
                                                firstCurve: Curves.easeOut,
                                                secondCurve: Curves.easeOut,
                                                sizeCurve: Curves.ease,
                                                duration: const Duration(milliseconds: 1500),
                                                crossFadeState: Preferences().getMorning ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                                                firstChild: Image.asset(
                                                  contents[i].image,
                                                  height: viewportBoxConstraints.maxHeight * 0.5,
                                                  width: viewportBoxConstraints.maxWidth,
                                                ),
                                                secondChild: Image.asset(
                                                  _currentPage == 0 ? "assets/images/night.png" : contents[i].image,
                                                  height: viewportBoxConstraints.maxHeight * 0.5,
                                                  width: viewportBoxConstraints.maxWidth,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 16.0),
                                              child: Text(
                                                contents[i].title,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 16.0),
                                              child: Text(
                                                contents[i].desc,
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.white,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 48.0),
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 500),
                        opacity: _currentPage != contents.length - 2 && _currentPage != contents.length - 1 ? 1 : 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _buildPageIndicator(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
