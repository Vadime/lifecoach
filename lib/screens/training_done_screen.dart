import 'package:flutter/material.dart';
import 'package:lifecoach/lifecoach.dart';
import 'package:lifecoach/screens/home_screen.dart';
import 'package:widgets/widgets.dart';

class TrainingDoneScreen extends StatelessWidget {
  const TrainingDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      body: ColumnWidget(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        padding: const EdgeInsets.all(20),
        safeArea: true,
        children: [
          const Spacer(),
          TextWidget.headlineLarge(
            context,
            'You have successfully completed your training',
            align: TextAlign.center,
          ),
          const Spacer(),
          Icon(
            Icons.check_circle_outline_rounded,
            size: MediaQuery.of(context).size.width / 2,
            color: Colors.green,
          ),
          const Spacer(),
        ],
      ),
      primaryButton: ElevatedButtonWidget(
        'Continue to home',
        onPressed: () {
          Navigation.push(widget: const HomeScreen());
        },
      ),
    );
  }
}
