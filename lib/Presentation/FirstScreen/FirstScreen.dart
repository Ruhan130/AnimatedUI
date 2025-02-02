// ignore: file_names
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart' as animate;
import 'package:project/Presentation/LoginScreen/LoginScreen.dart';
import 'package:project/Presentation/RegisterSCreen/RegisterScreen.dart';

class AnimatedUiFirstScreen extends StatefulWidget {
  const AnimatedUiFirstScreen({super.key});

  @override
  State<AnimatedUiFirstScreen> createState() => _AnimatedUiFirstScreenState();
}

class _AnimatedUiFirstScreenState extends State<AnimatedUiFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/img.png",
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: SizedBox(
                child: Column(
                  children: [
                    animate.Bounce(
                      delay: const Duration(seconds: 1),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/main logo light color.png"),
                          ),
                        ),
                      ),
                    ),
                    animate.FadeIn(delay: const Duration(seconds: 2),
                      child: const Text(
                        "Flutter Spirit ❤️",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "Urbanist-SemiBold"),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    animate.FadeIn(
                      delay: const Duration(seconds: 2),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          padding: const WidgetStatePropertyAll(
                              EdgeInsets.only(top: 15, bottom: 15)),
                          side: const WidgetStatePropertyAll(
                            BorderSide(color: Colors.black),
                          ),
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.black),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          fixedSize: const WidgetStatePropertyAll(
                            Size.fromWidth(370),
                          ),
                        ),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Urbanist-SemiBold",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    animate.FadeIn(
                      delay: const Duration(seconds: 2),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          padding: const WidgetStatePropertyAll(
                              EdgeInsets.only(top: 15, bottom: 15)),
                          side: const WidgetStatePropertyAll(
                            BorderSide(color: Colors.black),
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          fixedSize: const WidgetStatePropertyAll(
                            Size.fromWidth(370),
                          ),
                        ),
                        child: const Text("REGISTER"),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    animate.FadeIn(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Continue as guest",
                          style: TextStyle(color: Colors.teal),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
