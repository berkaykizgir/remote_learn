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

  void onAnswerTap(String index) {
    setState(() {
      answered = true;
      if (index == '0') {
        answerASelected = true;
      }
      if (index == '1') {
        answerBSelected = true;
      }
      if (index == '2') {
        answerCSelected = true;
      }
      if (index == '3') {
        answerDSelected = true;
      }
    });
    Future.delayed(const Duration(seconds: 1)).then((value) {
      setState(() {
        answered = true;
        showingAnswer = true;
        if ((question[qNumber]['correct']).toString() == index) {
          answerCorrect = true;
          Preferences().setBalance = 50;
        }
      });
    }).whenComplete(() {
      Future.delayed(const Duration(seconds: 4)).then((value) {
        setState(() {
          answered = true;
          if (index == '0') {
            answerASelected = false;
          }
          if (index == '1') {
            answerBSelected = false;
          }
          if (index == '2') {
            answerCSelected = false;
          }
          if (index == '3') {
            answerDSelected = false;
          }
          showingAnswer = false;
          answerCorrect = false;
        });
      }).whenComplete(() {
        setState(() {
          answered = false;
        });
      });
    });
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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Image.asset(
              "assets/images/coin.png",
              width: 20,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Center(
                child: Text(
                  Preferences().getBalance.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Is there any problem with question ?"),
                      content: const Text("Do you want to report this question?"),
                      actions: <Widget>[
                        const TextField(
                          decoration: InputDecoration(
                            hintText: "can you explain the problem",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text(
                                    "Report question",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.report))
          ],
        ),
        body: LayoutBuilder(builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: const [0.1, 0.4, 0.6, 0.8, 1],
                  colors: Preferences().getThemeGradientBackgroundColor()),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IgnorePointer(
                ignoring: answerASelected || answerBSelected || answerCSelected || answerDSelected,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: ListView(
                        shrinkWrap: true,
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
                                onAnswerTap('0');
                              }),
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
                                onAnswerTap('1');
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
                                onAnswerTap('2');
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
                                onAnswerTap('3');
                              }),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      child: AnimatedOpacity(
                        duration: const Duration(seconds: 1),
                        opacity: answerCorrect ? 1 : 0,
                        child: Image.asset(
                          "assets/images/correct.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
