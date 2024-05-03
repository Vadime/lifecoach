import 'package:flutter/material.dart';
import 'package:lifecoach/screens/training_done_screen.dart';
import 'package:widgets/widgets.dart';

class StartTrainingScreen extends StatefulWidget {
  const StartTrainingScreen({super.key});

  @override
  State<StartTrainingScreen> createState() => _StartTrainingScreenState();
}

class _StartTrainingScreenState extends State<StartTrainingScreen> {
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Chest & Triceps",
      body: PageView(
        controller: pageController,
        children: const [
          ExercisePage(
            title: "Warm Up",
            quantity: "10 min",
          ),
          ExercisePage(
            title: "Bench Press",
            quantity: "3 x 12",
          ),
          ExercisePage(
            title: "Tricep Dips",
            quantity: "4 x 10",
          ),
          ExercisePage(
            title: "Push Ups",
            quantity: "5 x 30",
          ),
        ],
      ),
      primaryButton: ElevatedButtonWidget(
        pageController.currentPage == 3 ? "Done" : "Next",
        onPressed: () {
          if (pageController.page == 3) {
            Navigation.flush(widget: const TrainingDoneScreen());
          }
          pageController.goNext();
        },
      ),
    );
  }
}

class ExercisePage extends StatelessWidget {
  final String title;
  final String quantity;
  const ExercisePage({
    required this.title,
    required this.quantity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColumnWidget(
      padding: const EdgeInsets.all(20),
      safeArea: true,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Spacer(),
        const ImageWidget(
          AssetImage("res/images/onboarding_guy.png"),
          height: 200,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 20),
        const Spacer(),
        TextWidget.headlineSmall(context, title),
        const SizedBox(height: 20),
        TextWidget.labelSmall(
            context,
            "Some description of the Exercise about three to 4 lines long. "
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        const SizedBox(height: 20),
        const Spacer(),
        Center(child: TextWidget.headlineMedium(context, quantity)),
        const Spacer(),
      ],
    );
  }
}
