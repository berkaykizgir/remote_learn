import 'dart:math';

import 'package:flutter/material.dart';
import 'package:remote_learn/preferences.dart';
import 'package:remote_learn/quiz_screen/quiz_contents.dart';
import 'package:remote_learn/widgets/answer.dart';

class ScreenQuiz extends StatefulWidget {
  const ScreenQuiz({Key? key}) : super(key: key);

  @override
  State<ScreenQuiz> createState() => _ScreenQuizState();
}

class _ScreenQuizState extends State<ScreenQuiz> {
  Color correctColor = Colors.green;
  Color defaultColor = Colors.blue;
  bool answered = false;
  bool answerASelected = false;
  bool answerBSelected = false;
  bool answerCSelected = false;
  bool answerDSelected = false;
  bool showingAnswer = false;
  bool answerCorrect = false;
  List question = QuizContents().questions;
  int qNumber = -1;

  bool isAnyAnswerSelected() {
    return answerASelected || answerBSelected || answerCSelected || answerDSelected;
  }

  bool containsCorrectAnswer(String index) {
    if (showingAnswer) {
      return (question[qNumber]['correct']).toString() == index;
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
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
                child: IgnorePointer(
                  ignoring: answerASelected || answerBSelected || answerCSelected || answerDSelected,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            question[qNumber]['question'].toString(),
                            softWrap: true,
                            style: const TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 16.0),
                          child: Divider(
                            thickness: 5,
                          ),
                        ),
                        Answer(
                          answerText: (question[qNumber]['answer'] as List)[0],
                          answerColor: containsCorrectAnswer('0')
                              ? Colors.green
                              : isAnyAnswerSelected()
                                  ? answerASelected
                                      ? showingAnswer
                                          ? answerCorrect
                                              ? Colors.green
                                              : Colors.red
                                          : Colors.orange
                                      : Colors.grey
                                  : Colors.transparent,
                          answerTap: () {
                            setState(() {
                              answered = true;
                              answerASelected = true;
                            });
                            Future.delayed(const Duration(seconds: 2)).then((value) {
                              setState(() {
                                answered = true;
                                showingAnswer = true;
                                if ((question[qNumber]['correct']).toString() == '0') {
                                  answerCorrect = true;
                                }
                              });
                            });
                            Future.delayed(const Duration(seconds: 4)).then((value) {
                              setState(() {
                                setState(() {
                                  answered = false;
                                  answerASelected = false;
                                  showingAnswer = false;
                                  answerCorrect = false;
                                });
                              });
                            });
                          },
                        ),
                        Answer(
                            answerText: (question[qNumber]['answer'] as List)[1],
                            answerColor: containsCorrectAnswer('1')
                                ? Colors.green
                                : isAnyAnswerSelected()
                                    ? answerBSelected
                                        ? showingAnswer
                                            ? answerCorrect
                                                ? Colors.green
                                                : Colors.red
                                            : Colors.orange
                                        : Colors.grey
                                    : Colors.transparent,
                            answerTap: () {
                              setState(() {
                                answered = true;
                                answerBSelected = true;
                              });
                              Future.delayed(const Duration(seconds: 2)).then((value) {
                                setState(() {
                                  answered = true;
                                  showingAnswer = true;
                                  if ((question[qNumber]['correct']).toString() == '1') {
                                    answerCorrect = true;
                                  }
                                });
                              });
                              Future.delayed(const Duration(seconds: 4)).then((value) {
                                setState(() {
                                  setState(() {
                                    answered = false;
                                    answerBSelected = false;
                                    showingAnswer = false;
                                    answerCorrect = false;
                                  });
                                });
                              });
                            }),
                        Answer(
                            answerText: (question[qNumber]['answer'] as List)[2],
                            answerColor: containsCorrectAnswer('2')
                                ? Colors.green
                                : isAnyAnswerSelected()
                                    ? answerCSelected
                                        ? showingAnswer
                                            ? answerCorrect
                                                ? Colors.green
                                                : Colors.red
                                            : Colors.orange
                                        : Colors.grey
                                    : Colors.transparent,
                            answerTap: () {
                              setState(() {
                                answered = true;
                                answerCSelected = true;
                              });
                              Future.delayed(const Duration(seconds: 2)).then((value) {
                                setState(() {
                                  answered = true;
                                  showingAnswer = true;
                                  if ((question[qNumber]['correct']).toString() == '2') {
                                    answerCorrect = true;
                                  }
                                });
                              });
                              Future.delayed(const Duration(seconds: 4)).then((value) {
                                setState(() {
                                  setState(() {
                                    answered = false;
                                    answerCSelected = false;
                                    showingAnswer = false;
                                    answerCorrect = false;
                                  });
                                });
                              });
                            }),
                        Answer(
                            answerText: (question[qNumber]['answer'] as List)[3],
                            answerColor: containsCorrectAnswer('3')
                                ? Colors.green
                                : isAnyAnswerSelected()
                                    ? answerDSelected
                                        ? showingAnswer
                                            ? answerCorrect
                                                ? Colors.green
                                                : Colors.red
                                            : Colors.orange
                                        : Colors.grey
                                    : Colors.transparent,
                            answerTap: () {
                              setState(() {
                                answered = true;
                                answerDSelected = true;
                              });
                              Future.delayed(const Duration(seconds: 2)).then((value) {
                                setState(() {
                                  answered = true;
                                  showingAnswer = true;
                                  if ((question[qNumber]['correct']).toString() == '3') {
                                    answerCorrect = true;
                                  }
                                });
                              });
                              Future.delayed(const Duration(seconds: 4)).then((value) {
                                setState(() {
                                  setState(() {
                                    answered = false;
                                    answerDSelected = false;
                                    showingAnswer = false;
                                    answerCorrect = false;
                                  });
                                });
                              });
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
