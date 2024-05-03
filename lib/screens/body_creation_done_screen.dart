import 'package:flutter/material.dart';
import 'package:lifecoach/lifecoach.dart';
import 'package:lifecoach/screens/goals_screen.dart';
import 'package:widgets/widgets.dart';

class BodyCreationDoneScreen extends StatelessWidget {
  const BodyCreationDoneScreen({super.key});

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
            'You have successfully completed the process',
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
        'Continue to my goals',
        onPressed: () {
          Navigation.push(widget: const GoalsScreen());
        },
      ),
    );
  }
}
