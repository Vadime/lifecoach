import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class NextTrainingsScreen extends StatelessWidget {
  const NextTrainingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWidget(
      title: "Next Trainings",
      body: ColumnWidget(
        safeArea: true,
        padding: EdgeInsets.all(20),
        children: [
          ListTileWidget(
            title: "Chest & Triceps",
            subtitle: "Today",
          ),
          ListTileWidget(
            title: "Back & Biceps",
            subtitle: "Tomorrow",
          ),
          ListTileWidget(
            title: "Legs",
            subtitle: "25.04.2024 - Monday",
          ),
          ListTileWidget(
            title: "Legs",
            subtitle: "27.04.2024 - Wednesday",
          ),
        ],
      ),
    );
  }
}
