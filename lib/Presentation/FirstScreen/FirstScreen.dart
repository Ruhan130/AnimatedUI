import 'package:flutter/material.dart';

class AnimatedUiFirstScreen extends StatefulWidget {
  const AnimatedUiFirstScreen({super.key});

  @override
  State<AnimatedUiFirstScreen> createState() => _AnimatedUiFirstScreenState();
}

class _AnimatedUiFirstScreenState extends State<AnimatedUiFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("data"),
    ));
  }
}
