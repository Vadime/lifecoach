import 'package:flutter/material.dart';
import 'package:lifecoach/lifecoach.dart';
import 'package:lifecoach/screens/bruno_screen.dart';
import 'package:widgets/widgets.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Goals",
      body: ColumnWidget(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        safeArea: true,
        padding: const EdgeInsets.all(20),
        children: [
          const Spacer(),
          TextWidget.bodySmall(context, "What is your your ideal weight?"),
          const SizedBox(height: 10),
          TextFieldWidget(
            controller: TextFieldController('', label: "Weight goal"),
          ),
          const Spacer(),
          const SizedBox(height: 20),
          TextWidget.bodySmall(
              context, "Describe how muscular you want to be?"),
          const SizedBox(height: 10),
          TextFieldWidget(
            controller: TextFieldController('', label: "Muscle goal"),
          ),
          const Spacer(),
          const SizedBox(height: 20),
          TextWidget.bodySmall(context, "When do you want to reach this goal?"),
          const SizedBox(height: 10),
          TextFieldWidget(
            controller: TextFieldController('', label: "Date goal"),
          ),
          const Spacer(),
          const SizedBox(height: 20),
          TextWidget.bodySmall(
              context, "How much fat percentage do you want to have?"),
          const SizedBox(height: 10),
          TextFieldWidget(
            controller: TextFieldController('', label: "Fat goal"),
          ),
          const Spacer(),
          const SizedBox(height: 20),
          TextWidget.bodySmall(
              context, "Do you have an idol you want to look like?"),
          const SizedBox(height: 10),
          ImageWidget(
            null,
            height: 100,
            onTap: () {},
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: TextButtonWidget("Upload image", onPressed: () async {
              await FilePicking.pickImage();
            }),
          ),
          const Spacer(),
        ],
      ),
      primaryButton: ElevatedButtonWidget("Go to Bruno", onPressed: () {
        Navigation.push(widget: const BrunoScreen());
      }),
    );
  }
}
