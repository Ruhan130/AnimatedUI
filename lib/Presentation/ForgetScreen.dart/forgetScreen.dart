import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:project/Presentation/Otp_Verification/opt_verificationScreen.dart';
import 'package:project/Presentation/RegisterSCreen/RegisterScreen.dart';
import 'package:project/core/widgets/CustomElevatedButtonDar.dart';
import 'package:project/core/widgets/Custom_TextField.dart';

class Forgetscreen extends StatefulWidget {
  const Forgetscreen({super.key});

  @override
  State<Forgetscreen> createState() => _ForgetscreenState();
}

class _ForgetscreenState extends State<Forgetscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FadeIn(
                delay: const Duration(milliseconds: 500),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeIn(
                      delay: const Duration(seconds: 1),
                      child: const Text(
                        "Forget Password ?",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Urbanist-SemiBold"),
                      ),
                    ),
                    FadeIn(
                      delay: const Duration(seconds: 2),
                      child: const Text(
                        "Dont't worry! it occurs. Please enter the email\n address linked with your account",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Urbanist-SemiBold"),
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          FadeIn(
                            delay: const Duration(seconds: 3),
                            child: const CustomTextfield(
                              obsecureText: false,
                              hintText: 'Enter Your Email',
                              hintTextStyle: TextStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FadeIn(
                            delay: const Duration(seconds: 3),
                            child: CustomElevatedButtomDark(
                                onpressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const OtpVerificationCode(),
                                      ));
                                },
                                text: 'Send Code'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              FadeIn(
                delay: const Duration(seconds: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Dont have an Account",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Register Now?",
                        style: TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
