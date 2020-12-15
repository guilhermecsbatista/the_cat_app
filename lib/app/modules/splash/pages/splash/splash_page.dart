import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:splashscreen/splashscreen.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return _introScreen(context);
  }
}

Widget _introScreen(BuildContext context) {
  return Material(
    textStyle: TextStyle(
      fontFamily: 'Comicv3',
      color: Colors.white,
      height: 1.0,
      //fontSize: SizeUtil.blockSizeHorizontal * 3,
      letterSpacing: 2.0,
    ),
    child: Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 3,
          gradientBackground: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromRGBO(236, 112, 0, 1), Color.fromRGBO(236, 112, 0, 1)],
          ),
          navigateAfterSeconds: '/home',
          loaderColor: Colors.transparent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: Image(image: AssetImage('assets/itau_icon.png'), height: 90, width: 90,)),
          ],
        ),
        /*FadeIn(
          4.0,
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Center(
                child: Text(
                  'FROM GUILHERME CÉSAR',
                ),
              ),
              Center(
                child: Text(
                  '©2020',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
              )
            ],
          ),
        ),*/
      ],
    ),
  );
}
