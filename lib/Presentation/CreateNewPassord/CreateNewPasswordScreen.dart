import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:project/Presentation/ChangePasswordScreen/ChangedPasswordScreen.dart';
import 'package:project/Presentation/RegisterSCreen/RegisterScreen.dart';
import 'package:project/core/widgets/CustomElevatedButtonDar.dart';
import 'package:project/core/widgets/Custom_TextField.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
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
                      delay: const Duration(seconds: 2),
                      child: const Text(
                        "Create new password",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Bounce(
                      delay: const Duration(milliseconds: 500),
                      child: const Text(
                        "Your new password must be unique from those\n previously used",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          FadeIn(
                            delay: const Duration(seconds: 3),
                            child: const CustomTextfield(
                              obsecureText: false,
                              hintText: 'Enter New Password',
                              hintTextStyle: TextStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FadeIn(
                            delay: const Duration(seconds: 3),
                            child: CustomTextfield(
                              obsecureText: true,
                              hintText: 'Conform Your Password',
                              hintTextStyle: const TextStyle(),
                              sufixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.visibility_sharp),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          FadeIn(
                            delay: const Duration(seconds: 3),
                            child: CustomElevatedButtomDark(
                              text: 'Reset Password',
                              onpressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ChangedPasswordScreen(),
                                  ),
                                );
                              },
                            ),
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
