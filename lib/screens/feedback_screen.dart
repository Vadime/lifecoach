import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Feedback",
      body: ColumnWidget(
        safeArea: true,
        margin: const EdgeInsets.all(20),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          TextWidget.headlineSmall(context, "How can we improve?"),
          const Spacer(),
          TextFieldWidget(
            controller: TextFieldController("", label: "Your thoughts"),
            autofocus: true,
          ),
          const Spacer(),
        ],
      ),
      primaryButton: ElevatedButtonWidget(
        "Send Feedback",
        onPressed: () {
          Navigation.pop();
        },
      ),
    );
  }
}
