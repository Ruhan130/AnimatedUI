import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project/Presentation/LoginScreen/LoginScreen.dart';
import 'package:project/core/widgets/CustomElevatedButtonDar.dart';
import 'package:project/main.dart';

class ChangedPasswordScreen extends StatefulWidget {
  const ChangedPasswordScreen({super.key});

  @override
  State<ChangedPasswordScreen> createState() => _ChangedPasswordScreenState();
}

class _ChangedPasswordScreenState extends State<ChangedPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: MyApp.themeNotifier.value == ThemeMode.light, // Back button will be visible only in light mode
        title: const Text("Password Changed"),
        actions: [
          if (MyApp.themeNotifier.value == ThemeMode.light) // Show back button only in light mode
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
        ],
      ),
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
                'Your password has been changed successfully',
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
                    // Toggle theme mode
                    if (MyApp.themeNotifier.value == ThemeMode.light) {
                      MyApp.themeNotifier.value =
                          ThemeMode.dark; // Switch to dark mode
                    } else {
                      MyApp.themeNotifier.value =
                          ThemeMode.light; // Switch to light mode
                    }

                    // Navigate back to the login screen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
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
