import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("Hello"),
              SizedBox(
                width: 5,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText("Nayeem",
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      speed: Duration(milliseconds: 100))
                ],
                displayFullTextOnTap: true,
                totalRepeatCount: 4,
                pause: Duration(milliseconds: 200),
              )
            ],
          )
        ],
      ),
    );
  }
}
