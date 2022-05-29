import 'package:flutter/material.dart';
import 'package:remote_learn/gamification/theme_contents.dart';
import 'package:remote_learn/preferences.dart';

class CoinMarket extends StatefulWidget {
  const CoinMarket({Key? key}) : super(key: key);

  @override
  State<CoinMarket> createState() => _CoinMarketState();
}

class _CoinMarketState extends State<CoinMarket> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text("Theme Market"),
              elevation: 0,
              actions: [
                Image.asset(
                  "assets/images/coin.png",
                  width: 20,
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 16),
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
              ],
            ),
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: const [0.1, 0.4, 0.6, 0.8, 1],
                    colors: Preferences().getThemeGradientBackgroundColor()),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1.0,
                  padding: const EdgeInsets.all(16),
                  children: List.generate(themeContents.length, (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          themeContents[index].locked = false;
                        });
                      },
                      child: Center(
                        child: Card(
                            elevation: 12,
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: themeContents[index].locked
                                ? Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          stops: [0.1, 0.4, 0.6, 0.8, 1],
                                          colors: [Colors.grey, Colors.blueGrey, Colors.black, Colors.blueGrey, Colors.grey]),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 16.0),
                                          child: Icon(
                                            Icons.lock,
                                            size: 35,
                                            color: Colors.grey.shade200,
                                          ),
                                        ),
                                        Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
                                          Image.asset(
                                            "assets/images/coin.png",
                                            width: 20,
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Text(
                                              themeContents[index].price.toString(),
                                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                                            ),
                                          ),
                                        ])
                                      ],
                                    ),
                                  )
                                : Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          stops: const [0.1, 0.4, 0.6, 0.8, 1],
                                          colors: themeContents[index].gradientBackgroundColors),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  )),
                      ),
                    );
                  }),
                ),
              ),
            )));
  }
}
