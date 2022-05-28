import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remote_learn/student_main_screen.dart';
import 'package:remote_learn/onboarding/onboarding_contents.dart';
import 'package:remote_learn/preferences.dart';
import 'package:remote_learn/teacher_main_screen.dart';
import 'package:remote_learn/widgets/animated_page_route.dart';

class ScreenOnboarding extends StatefulWidget {
  const ScreenOnboarding({Key? key}) : super(key: key);

  @override
  State<ScreenOnboarding> createState() => _ScreenOnboardingState();
}

class _ScreenOnboardingState extends State<ScreenOnboarding> with SingleTickerProviderStateMixin {
  final _controller = PageController();
  int _currentPage = 0;
  bool ischangingScreen = false;
  TextEditingController codeController = TextEditingController();

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < contents.length; i++) {
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
            : Preferences().getTheme == 0
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
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: AnimatedCrossFade(
              firstCurve: Curves.easeOut,
              secondCurve: Curves.easeOut,
              sizeCurve: Curves.ease,
              duration: const Duration(milliseconds: 750),
              secondChild: FloatingActionButton.extended(
                heroTag: "floatSecondTag",
                backgroundColor: Preferences().getTheme == 0 ? Colors.amber : const Color(0xFF092841),
                foregroundColor: Colors.white,
                elevation: 2,
                splashColor: Preferences().getTheme == 0 ? Colors.amber : const Color(0xFF172841),
                onPressed: () {
                  if (codeController.text == '12345678') {
                    Preferences().setRoute = '/teacher-main-screen';
                    Navigator.of(context).pushReplacement(AnimateToPage(widget: const TeacherMainScreen()));
                  } else {
                    Preferences().setRoute = '/student-main-screen';
                    Navigator.of(context).pushReplacement(AnimateToPage(widget: const StudentMainScreen()));
                  }
                },
                label: const Text("Start the journey"),
              ),
              crossFadeState: _currentPage != contents.length - 1 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              firstChild: FloatingActionButton.extended(
                heroTag: "floatFirstTag",
                backgroundColor: Preferences().getTheme == 0 ? Colors.amber : const Color(0xFF092841),
                foregroundColor: Colors.white,
                elevation: 2,
                splashColor: Preferences().getTheme == 0 ? const Color(0xFF3036D5) : const Color(0xFF172841),
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
          body: Container(
            decoration: Preferences().getTheme == 0
                ? const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [0.1, 0.4, 0.6, 0.8, 1],
                        colors: [Color(0xFFDC8665), Color(0xFF138086), Color(0xFF534666), Color(0xFFCD7672), Color(0xFFEEB462)]),
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
                        itemCount: contents.length,
                        itemBuilder: (context, i) {
                          return LayoutBuilder(builder: (context, BoxConstraints viewportBoxConstraints) {
                            return SingleChildScrollView(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: viewportBoxConstraints.maxHeight,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            contents[i].image,
                                            height: viewportBoxConstraints.maxHeight * 0.5,
                                            width: viewportBoxConstraints.maxWidth,
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
                            );
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(48.0),
                      child: AnimatedOpacity(
                        opacity: _currentPage == contents.length - 1 ? 1 : 0,
                        duration: const Duration(milliseconds: 500),
                        child: Column(
                          children: [
                            const Text(
                              "if you are teacher please enter the code that system gave you before",
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            TextField(
                              controller: codeController,
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                              maxLength: 8,
                              cursorColor: Colors.white,
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.done,
                              decoration: const InputDecoration(
                                  helperStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.white,
                                  )),
                                  focusColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.white,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.white,
                                  ))),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 48.0),
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 500),
                        opacity: _currentPage != contents.length - 1 ? 1 : 0,
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
