import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String title = "TransferMe";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 280),
              child: SvgPicture.asset("assets/images/Component 1.svg"),
            ),
            Text(
              "TransferMe",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5063BF),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                "Your Best Money Transfer Partner",
                style: TextStyle(fontSize: 13, color: Color(0xFF5063BF)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 330),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey[400],
                      ),
                      children: [
                        const TextSpan(text: "Secured by "),
                        TextSpan(
                          text: title,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF5063BF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
