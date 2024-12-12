import 'package:flutter/material.dart';
import 'package:project/Presentation/FirstScreen/FirstScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (context, themeMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              brightness: Brightness.light,
              useMaterial3: true,
              primaryColor: Color(0xFF35C2C1),
              textTheme: Typography.blackCupertino),
          themeMode: themeMode,
          darkTheme: ThemeData.dark(useMaterial3: true),
          home: const AnimatedUiFirstScreen(),
        );
      },
    );
  }
}