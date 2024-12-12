import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:project/Presentation/CreateNewPassord/CreateNewPasswordScreen.dart';

class OtpVerificationCode extends StatelessWidget {
  const OtpVerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              FadeIn(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateNewPasswordScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
