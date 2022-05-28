import 'dart:math';

import 'package:flutter/material.dart';
import 'package:remote_learn/preferences.dart';
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
  List question = [
    {
      'question': 'Which Set class should be most popular in a multi-threading environment, considering performance constraint?',
      'answer': ['HashSet', 'ConcurrentSkipListSet', 'LinkedHashSet', 'CopyOnWriteArraySet'],
      'correct': 1
    },
    {
      'question': 'Which of those doesn’t have an index based structure?',
      'answer': ['All', 'List', 'Set', 'Map'],
      'correct': 2
    },
    {
      'question': 'java.util.Collections is a:',
      'answer': ['Class', 'Interface', 'Object', 'None of the above'],
      'correct': 0
    },
    {
      'question': 'Methods such as reverse, shuffle are offered in:',
      'answer': ['Object', 'Collection', 'Collections', 'Apache Commons Collections'],
      'correct': 2
    },
    {
      'question': 'Which of those allows duplicate elements?',
      'answer': ['Set', 'List', 'All', 'None of the above'],
      'correct': 1
    },
    {
      'question': 'Which allows the storage of a null key and null values?',
      'answer': ['Hashtable', 'HashMap', 'All', 'None of the above'],
      'correct': 1
    },
    {
      'question':
          'What will be the output of the following code \n import java.util.HashMap;\n import java.util.Map; \n public class HashMapTest {\n public static void main(String args[])\n{\nMap<Integer,String> hashMap=new HashMap<Integer,String>();\nhashMap.put(11,”animesh”);\nhashMap.put(2,”ayushi”);\nhashMap.put(7,”renuka”);\nhashMap.put(9,”shivashish”);\nhashMap.put(null,”null”);\nSystem.out.println(hashMap.size());\nSystem.out.println(hashMap);\n}\n}\n',
      'answer': ['1', '5 {null=null, 2=d, 7=c, 9=w, 11=a}', 'Runtime exception', 'Compile time exception'],
      'correct': 1
    },
    {
      'question':
          'What will be the output of the following code\nimport java.util.Iterator;\nimport java.util.Vector;\npublic class VectorTest {\npublic static void main(String args[])\n{\nVector<String> vector= new Vector<String>();\nvector.add(“1”);\nvector.add(“2”);\nIterator<String> iterator=vector.iterator();\nwhile(iterator.hasNext())\n{\nSystem.out.println(iterator.next());\n}\n}\n}\n',
      'answer': ['1 2', '1 2 3', '3 2 1', 'ConcurrentModificationException'],
      'correct': 0
    },
    {
      'question':
          'What will be the correct answer for succesfull run\nimport java.util.ArrayList;\nimport java.util.List;\npublic class MyClass {\npublic static void main(String args[])\n{\n//Insert Here\nList<String> list=new ArrayList<String>();\nlist.add(“a”);\nlist.add(“b”);\nl.add(list);\n}\n}\n',
      'answer': ['List l=new ArrayList>();', 'List> l=new ArrayList>();', 'List> l=new ArrayList();', 'List l=new ArrayList();'],
      'correct': 3
    },
    {
      'question':
          'What will be the output of the following code\nimport java.util.ArrayList;\nimport java.util.List;\npublic class ArrayListTest {\npublic static void main(String args[])\n{\nList<String> arrayList=new ArrayList<String>();\narrayList.add(“a”);\narrayList.add(“b”);\narrayList.add(“c”);\nSystem.out.println();\narrayList.add(1,”d”);\nSystem.out.println(arrayList);\n}\n}\n',
      'answer': ['[a, d, b, c]', '[a, b, c, d]', '[d, a, d, c]', 'None of the above'],
      'correct': 0
    },
  ];
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
