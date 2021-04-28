import 'package:flutter/material.dart';
import 'package:flutterwebdemo/components/main_button.dart';
import 'package:flutterwebdemo/constants.dart';
import 'package:flutterwebdemo/responsive.dart';
import 'package:flutterwebdemo/screens/signup/sign_up_screen.dart';

class Jumbotron extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
                  child: Column(
                      mainAxisAlignment: !isMobile(context)
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
                      crossAxisAlignment: !isMobile(context)
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: <Widget>[
                        if (isMobile(context))
                          Image.asset(
                            'assets/images/main.png',
                            height: size.height * 0.3,
                          ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Play ',
                              style: TextStyle(
                                  fontSize: isDesktop(context) ? 64 : 32,
                                  fontWeight: FontWeight.w800,
                                  color: kTextColor)),
                          TextSpan(
                              text: 'Quiz IZ',
                              style: TextStyle(
                                  fontSize: isDesktop(context) ? 64 : 32,
                                  fontWeight: FontWeight.w800,
                                  color: kPrimaryColor)),
                        ])),
                        Text(
                          'Have fun time',
                          style: TextStyle(
                              fontSize: isDesktop(context) ? 64 : 32,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Play now!',
                          style: TextStyle(
                              fontSize: isDesktop(context) ? 64 : 32,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Start your streak, play with your friend.',
                          textAlign: isMobile(context)
                              ? TextAlign.center
                              : TextAlign.start,
                          style: TextStyle(
                              fontSize: isDesktop(context) ? 36 : 18,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(height: 10),
                        Wrap(
                          runSpacing: 10,
                          children: <Widget>[
                            MainButton(
                              title: 'Join a game',
                              color: kPrimaryColor,
                              tapEvent: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen()));
                              },
                            ),
                            SizedBox(width: 10),
                            MainButton(
                              title: 'Create an account',
                              color: kSecondaryColor,
                              tapEvent: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen()));
                              },
                            )
                          ],
                        )
                      ]))),
          if (isDesktop(context) || isTab(context))
            Expanded(
                child: Image.asset(
              'assets/images/main.png',
              height: size.height * 0.7,
            ))
        ],
      ),
    );
  }
}
