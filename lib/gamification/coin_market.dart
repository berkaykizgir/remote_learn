import 'package:flutter/material.dart';
import 'package:remote_learn/gamification/theme_contents.dart';
import 'package:remote_learn/preferences.dart';
import 'package:remote_learn/student_main_screen.dart';
import 'package:remote_learn/widgets/animated_page_route.dart';

class CoinMarket extends StatefulWidget {
  const CoinMarket({Key? key}) : super(key: key);

  @override
  State<CoinMarket> createState() => _CoinMarketState();
}

class _CoinMarketState extends State<CoinMarket> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Preferences().getRole == 'student') {
          Navigator.of(context).pushReplacement(AnimateToPage(widget: const StudentMainScreen()));
          return true;
        }
        return false;
      },
      child: SafeArea(
          child: Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                title: const Text("Theme Market"),
                leading: IconButton(
                    onPressed: () {
                      if (Preferences().getRole == 'student') {
                        Navigator.of(context).pushReplacement(AnimateToPage(widget: const StudentMainScreen()));
                      }
                    },
                    icon: const Icon(Icons.arrow_back)),
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
                      stops: const [0.05, 0.35, 0.60, 0.85, 1],
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
                          if (Preferences().getThemeMarketData(index)) {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text("Do you want to buy this theme with your coins ?"),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.of(context).pop(),
                                    child: const Text(
                                      "Cancel",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      if (Preferences().getBalance >= themeContents[index].price) {
                                        Preferences().setBalance = -themeContents[index].price;
                                        Preferences().setThemeMarketData(index);
                                        themeContents[index].locked = Preferences().getThemeMarketData(index);
                                        Preferences().setTheme = themeContents[index].index;
                                      }

                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      "Buy it",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ).then((value) {
                              setState(() {});
                            });
                          } else {
                            setState(() {
                              Preferences().setTheme = themeContents[index].index;
                            });
                          }
                        },
                        child: Center(
                          child: Card(
                              elevation: 12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(color: Colors.white, width: Preferences().getTheme == themeContents[index].index ? 3 : 0)),
                              child: themeContents[index].locked
                                  ? Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            stops: const [0.05, 0.35, 0.60, 0.85, 1],
                                            colors: themeContents[index].gradientBackgroundColors),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.transparent.withOpacity(0.7),
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
                                      ),
                                    )
                                  : Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            stops: const [0.05, 0.35, 0.60, 0.85, 1],
                                            colors: themeContents[index].gradientBackgroundColors),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    )),
                        ),
                      );
                    }),
                  ),
                ),
              ))),
    );
  }
}
