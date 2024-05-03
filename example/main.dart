import 'package:flutter/material.dart';
import 'package:lifecoach/screens/goals_screen.dart';
import 'package:lifecoach/screens/onboarding_screen.dart';
import 'package:widgets/widgets.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeApp(
      config: ThemeConfig(
        title: "Life Coach",
        lightlogoLocation: "assets/images/logo.png",
        darklogoLocation: "assets/images/logo.png",
        primaryColor: Colors.blue,
      ),
      startScreen: const OnboardingScreen(),
      onAuthenticationChanged: (context, state) {
        if (state) {
          Navigation.flush(widget: const GoalsScreen());
        } else {
          Navigation.flush(widget: const OnboardingScreen());
        }
      },
    );
  }
}
