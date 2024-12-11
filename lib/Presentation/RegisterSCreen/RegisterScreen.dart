import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/core/widgets/Custom_TextField.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
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
                    Icons.arrow_back_ios,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Bounce(
                      delay: const Duration(seconds: 1),
                      child: const Text(
                        "Hello! Register to get",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Bounce(
                      delay: const Duration(seconds: 2),
                      child: const Text(
                        " Started",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  child: Column(
                    children: [
                      FadeIn(
                        delay: const Duration(seconds: 3),
                        child: const CustomTextfield(
                          hintText: 'Username',
                          hintTextStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: "Urbanist-SemiBold",
                          ),
                          obsecureText: false,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeIn(
                        delay: const Duration(seconds: 4),
                        child: const CustomTextfield(
                          hintText: 'Email',
                          hintTextStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: "Urbanist-SemiBold",
                          ),
                          obsecureText: false,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeIn(
                        delay: const Duration(seconds: 5),
                        child: const CustomTextfield(
                          hintText: 'Password',
                          sufixIcon: Icon(Icons.visibility),
                          hintTextStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: "Urbanist-SemiBold",
                          ),
                          obsecureText: false,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeIn(
                        delay: const Duration(seconds: 5),
                        child: const CustomTextfield(
                          hintText: 'Conform',
                          sufixIcon: Icon(Icons.visibility),
                          hintTextStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: "Urbanist-SemiBold",
                          ),
                          obsecureText: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              FadeIn(
                delay: const Duration(seconds: 4),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    side: const WidgetStatePropertyAll(
                      BorderSide(color: Colors.black),
                    ),
                    backgroundColor: const WidgetStatePropertyAll(Colors.black),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    fixedSize: const WidgetStatePropertyAll(
                      Size.fromWidth(370),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Urbanist-SemiBold",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  child: Column(
                    children: [
                      FadeIn(
                        delay: const Duration(seconds: 2),
                        child: const Center(
                          child: Text(
                            "Or register us",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Bounce(
                delay: const Duration(seconds: 3),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, right: 30, left: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/images/facebook_ic (1).svg"),
                      SvgPicture.asset("assets/images/google_ic-1.svg"),
                      Image.asset(
                        "assets/images/Vector.png",
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FadeIn(
                delay: const Duration(seconds: 6),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account?"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Register Now",
                      style: TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold),
                    )
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
