import 'package:flutter/material.dart';
import 'package:remote_learn/preferences.dart';
import 'package:remote_learn/teacher_flow/classrooms_contents.dart';

class TrackStudentsProgress extends StatefulWidget {
  const TrackStudentsProgress({Key? key}) : super(key: key);

  @override
  State<TrackStudentsProgress> createState() => _TrackStudentsProgressState();
}

class _TrackStudentsProgressState extends State<TrackStudentsProgress> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                return ListTile(
                  selected: true,
                  subtitle: Text(
                    students[index].number,
                    style: const TextStyle(color: Colors.white),
                  ),
                  trailing: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                        child: Text(
                          students[index].progress.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      CircularProgressIndicator(
                        backgroundColor: Colors.white,
                        strokeWidth: 4,
                        color: Colors.green,
                        value: students[index].progress.toDouble() / 100,
                      ),
                    ],
                  ),
                  title: Text(
                    students[index].fullName,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }),
        ),
      ),
    ));
  }
}
