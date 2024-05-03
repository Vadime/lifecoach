import 'package:flutter/material.dart';
import 'package:lifecoach/lifecoach.dart';
import 'package:lifecoach/screens/authentication_screen.dart';
import 'package:widgets/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      views: const [
        OnboardingView(
          title: "Welcome to\nLife Coach",
        ),
      ],
      image: "res/images/onboarding.jpeg",
      onDone: () {
        Navigation.push(widget: const AuthenticationScreen());
      },
    );
  }
}

