import 'package:flutter/material.dart';
import 'package:remote_learn/preferences.dart';

class ScreenWorkMain extends StatefulWidget {
  const ScreenWorkMain({Key? key}) : super(key: key);

  @override
  State<ScreenWorkMain> createState() => _ScreenWorkMainState();
}

class _ScreenWorkMainState extends State<ScreenWorkMain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 1,
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
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1.0,
                  padding: const EdgeInsets.all(16),
                  children: List.generate(10, (index) {
                    return Center(
                      child: Card(
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: Preferences().getMorning
                              ? const BoxDecoration(
                                  gradient:
                                      LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xFF3594DD), Color(0xFF5B16D0)]),
                                )
                              : const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xFF203354), Colors.blue, Color(0xFF192841)]),
                                ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text(
                                  'Lab $index',
                                  style: const TextStyle(color: Colors.white, fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text(
                                  'Lab \n lab \n lab \n lab $index',
                                  softWrap: true,
                                  maxLines: 3,
                                  style: const TextStyle(color: Colors.white, fontSize: 17),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            )));
  }
}
