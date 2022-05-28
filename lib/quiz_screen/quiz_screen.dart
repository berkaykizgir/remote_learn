import 'dart:math';

import 'package:flutter/material.dart';
import 'package:remote_learn/preferences.dart';
import 'package:remote_learn/quiz_screen/quiz_contents.dart';
import 'package:remote_learn/widgets/display.dart';

class ScreenQuiz extends StatefulWidget {
  const ScreenQuiz({Key? key}) : super(key: key);

  @override
  State<ScreenQuiz> createState() => _ScreenQuizState();
}

class _ScreenQuizState extends State<ScreenQuiz> {
  Color correctColor = Colors.green;
  Color defaultColor = Colors.blue;
  bool x = false;

  bool answered = false;
  List question = QuizContents().questions;
  int qNumber = -1;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100)).then((value) {
      setState(() {
        x = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!answered) {
      int newNumber = Random().nextInt(question.length);
      while (qNumber == newNumber) {
        newNumber = Random().nextInt(question.length);
      }
      qNumber = newNumber;
      String correct = question[qNumber]['answer'][question[qNumber]['correct']];

      List answer = question[qNumber]['answer'];
      answer.shuffle();
      question[qNumber]['answer'] = answer;
      question[qNumber]['correct'] = answer.indexOf(correct);
    }
    return SafeArea(
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 500),
        opacity: x ? 1 : 0,
        child: Scaffold(
          appBar: AppBar(),
          body: LayoutBuilder(builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: Container(
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
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          question[qNumber]['question'].toString(),
                          style: const TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: answered && (question[qNumber]['correct']).toString() == '0' ? correctColor : defaultColor,
                                    ),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(content: Text((question[qNumber]['correct']).toString() == '0' ? 'Doğru' : 'Yanlış')));

                                      setState(() {
                                        answered = true;
                                      });

                                      Future.delayed(const Duration(seconds: 2)).then((value) {
                                        setState(() {
                                          answered = false;
                                        });
                                      });
                                    },
                                    child: const Text("A"))),
                            Expanded(
                              flex: 9,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: DropCapText((question[qNumber]['answer'] as List)[0].toString(),
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                    dropCap: DropCap(
                                      height: 0,
                                      width: 0,
                                      child: Container(),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: answered && (question[qNumber]['correct']).toString() == '1' ? correctColor : defaultColor,
                                    ),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(content: Text((question[qNumber]['correct']).toString() == '1' ? 'Doğru' : 'Yanlış')));
                                      setState(() {
                                        answered = true;
                                      });

                                      Future.delayed(const Duration(seconds: 2)).then((value) {
                                        setState(() {
                                          answered = false;
                                        });
                                      });
                                    },
                                    child: const Text("B"))),
                            Expanded(
                              flex: 9,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: DropCapText((question[qNumber]['answer'] as List)[1].toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                    dropCap: DropCap(
                                      height: 0,
                                      width: 0,
                                      child: Container(),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: answered && (question[qNumber]['correct']).toString() == '2' ? correctColor : defaultColor,
                                    ),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(content: Text((question[qNumber]['correct']).toString() == '2' ? 'Doğru' : 'Yanlış')));
                                      setState(() {
                                        answered = true;
                                      });

                                      Future.delayed(const Duration(seconds: 2)).then((value) {
                                        setState(() {
                                          answered = false;
                                        });
                                      });
                                    },
                                    child: const Text("C"))),
                            Expanded(
                              flex: 9,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: DropCapText((question[qNumber]['answer'] as List)[2].toString(),
                                    style: const TextStyle(fontSize: 20, color: Colors.white),
                                    dropCap: DropCap(
                                      height: 0,
                                      width: 0,
                                      child: Container(),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: answered && (question[qNumber]['correct']).toString() == '3' ? correctColor : defaultColor,
                                    ),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(content: Text((question[qNumber]['correct']).toString() == '3' ? 'Doğru' : 'Yanlış')));
                                      setState(() {
                                        answered = true;
                                      });

                                      Future.delayed(const Duration(seconds: 2)).then((value) {
                                        setState(() {
                                          answered = false;
                                        });
                                      });
                                    },
                                    child: const Text("D"))),
                            Expanded(
                              flex: 9,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: DropCapText((question[qNumber]['answer'] as List)[3].toString(),
                                    style: const TextStyle(fontSize: 20, color: Colors.white),
                                    dropCap: DropCap(
                                      height: 0,
                                      width: 0,
                                      child: Container(),
                                    )),
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
          }),
        ),
      ),
    );
  }
}
