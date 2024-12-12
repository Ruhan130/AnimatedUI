import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:project/Presentation/CreateNewPassord/CreateNewPasswordScreen.dart';
import 'package:project/Presentation/RegisterSCreen/RegisterScreen.dart';
import 'package:project/core/widgets/CustomElevatedButtonDar.dart';

class OtpVerificationCode extends StatelessWidget {
  const OtpVerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
          fontSize: 25, color: Colors.grey, fontWeight: FontWeight.w500),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade800),
        borderRadius: BorderRadius.circular(20),
      ),
    );
    final focusPinedTheme = defaultPinTheme.copyDecorationWith(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey));
    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FadeIn(
                delay: const Duration(seconds: 1),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeIn(
                      delay: const Duration(seconds: 1),
                      child: const Text(
                        "OPT Verification",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Bounce(
                      delay: const Duration(seconds: 2),
                      child: const Text(
                        "Enter the verification code we just send on your\n email address",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  child: Column(
                    children: [
                      FadeIn(
                        delay: const Duration(seconds: 3),
                        child: Pinput(
                          defaultPinTheme: defaultPinTheme,
                          focusedPinTheme: focusPinedTheme,
                          submittedPinTheme: submittedPinTheme,
                          validator: (s) {
                            return s == '2222' ? null : 'Pin is incorrect';
                          },
                          pinputAutovalidateMode:
                              PinputAutovalidateMode.onSubmit,
                          showCursor: true,
                          onCompleted: (pin) {
                            print(pin);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      FadeIn(
                        delay: const Duration(seconds: 4),
                        child: CustomElevatedButtomDark(
                          text: 'Verify',
                          onpressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CreateNewPasswordScreen(),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
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
                        ))
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
