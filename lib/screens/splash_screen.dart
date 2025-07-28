import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String title = "TransferMe";
  static const String assetPath = "assets/images/Component 1.svg";
  static const Color colorBlue = Color(0xFF5063BF);

  static const TextStyle kTitleStyle = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: colorBlue,
  );

  static TextStyle kSubtitle = TextStyle(
    fontSize: 16,
    color: Colors.blueGrey[400],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(assetPath),
                const SizedBox(height: 20),
                Text("TransferMe", style: kTitleStyle),
                const SizedBox(height: 8),
                Text(
                  "Your Best Money Transfer Partner",
                  style: TextStyle(fontSize: 14, color: colorBlue),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: RichText(
                text: TextSpan(
                  style: kSubtitle,
                  children: [
                    const TextSpan(text: "Secured by "),
                    TextSpan(
                      text: title,
                      style: TextStyle(fontSize: 16, color: colorBlue),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
