import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import './registration_screen.dart';
import './login_screen.dart';
import '../components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  // AnimationController? controller;
  // Animation? animation;
  // double? animationVal = 0;
  // Color animationColor = Colors.white;

  @override
  void initState() {
    super.initState();

    // controller = AnimationController(
    //   duration: Duration(seconds: 1),
    //   vsync: this,
    // );

    // animation =
    //     ColorTween(begin: Colors.cyan, end: Colors.white).animate(controller!);

    // controller?.forward();

    // animation?.addStatusListener((status) {
    //   if(status==AnimationStatus.completed) {
    //     controller?.reverse(from: 1);
    //   } else if(status==AnimationStatus.dismissed) {
    //     controller?.forward();
    //   }
    // });

    // controller?.addListener(() {
    //   setState(() {
    //     animationColor = animation?.value;
    //   });
    //   print(animationColor);
    // });
  }

  @override
  void dispose() {
    // controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                SizedBox(
                  // width: double.infinity,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      // color: animationColor,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('Flash Chat'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            RoundedButton(
              colour: Colors.cyan,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              label: 'Log In',
            ),
            RoundedButton(
              colour: Colors.cyan.shade800,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              label: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
