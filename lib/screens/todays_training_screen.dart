import 'package:flutter/material.dart';
import 'package:lifecoach/lifecoach.dart';
import 'package:lifecoach/screens/next_trainings_screen.dart';
import 'package:lifecoach/screens/start_training_screen.dart';
import 'package:widgets/widgets.dart';

class TodaysTrainingScreen extends StatelessWidget {
  const TodaysTrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Today's Training",
      body: ColumnWidget(
        safeArea: true,
        padding: const EdgeInsets.all(20),
        children: [
          Row(
            children: [
              TextWidget.bodyLarge(context, "Chest & Triceps"),
              const Spacer(),
              TextWidget.labelSmall(context, "22.04.2024"),
            ],
          ),
          const SizedBox(height: 20),
          const ListTileWidget(
            padding: EdgeInsets.all(10),
            leading: ImageWidget(
              AssetImage("res/images/onboarding_guy.png"),
              height: 48,
            ),
            title: "Warm Up",
            subtitle: "10 min",
          ),
          const ListTileWidget(
            padding: EdgeInsets.all(10),
            leading: ImageWidget(
              AssetImage("res/images/onboarding_guy.png"),
              height: 48,
            ),
            title: "Bench Press",
            subtitle: "3 x 12",
          ),
          const ListTileWidget(
            padding: EdgeInsets.all(10),
            leading: ImageWidget(
              AssetImage("res/images/onboarding_guy.png"),
              height: 48,
            ),
            title: "Tricep Dips",
            subtitle: "4 x 10",
          ),
          const ListTileWidget(
            padding: EdgeInsets.all(10),
            leading: ImageWidget(
              AssetImage("res/images/onboarding_guy.png"),
              height: 48,
            ),
            title: "Push Ups",
            subtitle: "5 x 30",
          ),
        ],
      ),
      primaryButton: ElevatedButtonWidget("Start Training", onPressed: () {
        Navigation.push(widget: const StartTrainingScreen());
      }),
      actions: [
        IconButtonWidget(Icons.calendar_month_rounded, onPressed: () {
          Navigation.push(widget: const NextTrainingsScreen());
        }),
      ],
    );
  }
}
