import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transfer_app/screens/splash_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(SplashScreen.assetPath),
                  const SizedBox(height: 15),
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "TransferMe.",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: SplashScreen.colorBlue,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Your Best Money Transfer Partner",
                    style: TextStyle(fontSize: 14, color: Colors.blueGrey[400]),
                  ),
                  SizedBox(height: 140),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.28,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(18),
                          ),
                          backgroundColor: SplashScreen.colorBlue,
                        ),
                        child: Text(
                          "Get Started",
                          style: TextStyle(fontSize: 21, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
