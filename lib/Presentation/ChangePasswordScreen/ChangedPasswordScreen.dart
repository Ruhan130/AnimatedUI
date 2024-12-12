import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project/Presentation/FirstScreen/FirstScreen.dart';
import 'package:project/core/widgets/CustomElevatedButtonDar.dart';

class ChangedPasswordScreen extends StatefulWidget {
  const ChangedPasswordScreen({super.key});

  @override
  State<ChangedPasswordScreen> createState() => _ChangedPasswordScreenState();
}

class _ChangedPasswordScreenState extends State<ChangedPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LottieBuilder.asset("assets/images/ticker.json"),
            FadeIn(
              delay: const Duration(seconds: 1),
              child: const Text(
                "Password Changed!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            FadeIn(
              delay: const Duration(seconds: 2),
              child: const Text(
                'Your password has been changed sucessfully',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: FadeIn(
                delay: const Duration(seconds: 3),
                child: CustomElevatedButtomDark(
                  text: 'Back to Login',
                  onpressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AnimatedUiFirstScreen(),
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
