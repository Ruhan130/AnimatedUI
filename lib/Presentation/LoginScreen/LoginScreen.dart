import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/Presentation/ForgetScreen.dart/forgetScreen.dart';
import 'package:project/Presentation/RegisterSCreen/RegisterScreen.dart';
import 'package:project/core/widgets/CustomElevatedButtonDar.dart';
import 'package:project/core/widgets/Custom_TextField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        "Welcome! Back Glad ",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Urbanist-SemiBold"),
                      ),
                    ),
                    Bounce(
                      delay: const Duration(seconds: 2),
                      child: const Text(
                        "to see you. Again!",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Urbanist-SemiBold"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
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
                      child: CustomTextfield(
                        obsecureText: true,
                        hintText: 'Enter Your Password',
                        hintTextStyle: const TextStyle(),
                        sufixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.visibility_sharp),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FadeIn(
                      delay: const Duration(seconds: 3),
                      child:  Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Forgetscreen(),));
                          },
                          child: const Text(
                            "Forget Password? ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    FadeIn(delay: const Duration(seconds: 4),
                      child: const CustomElevatedButtomDark(
                        text: "LOGIN",
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Bounce(
                      delay: const Duration(seconds: 4),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, right: 30, left: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                                "assets/images/facebook_ic (1).svg"),
                            SvgPicture.asset("assets/images/google_ic-1.svg"),
                            Image.asset(
                              "assets/images/Vector.png",
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                     const SizedBox(
                      height: 140 
                    ),
                    FadeIn(
                      delay: const Duration(seconds: 5),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Dont have an account?"),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen(),));
                            },
                            child: const Text(
                              "Register Now",
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
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
