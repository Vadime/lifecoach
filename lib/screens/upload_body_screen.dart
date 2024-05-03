import 'package:flutter/material.dart';
import 'package:lifecoach/screens/body_creation_done_screen.dart';
import 'package:widgets/widgets.dart';

class UploadBodyScreen extends StatelessWidget {
  const UploadBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: 'Upload Body',
      body: ColumnWidget(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        padding: const EdgeInsets.all(20),
        safeArea: true,
        children: [
          const Spacer(),
          TextWidget.headlineLarge(
            context,
            'Upload your body\nfrom each side\nfor the best results',
            align: TextAlign.center,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const TextWidget("Front"),
                    TextButtonWidget("Upload", onPressed: () {}),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const TextWidget("Back"),
                    TextButtonWidget("Upload", onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const TextWidget("Left"),
                    TextButtonWidget("Upload", onPressed: () {}),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const TextWidget("Right"),
                    TextButtonWidget("Upload", onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
      primaryButton: ElevatedButtonWidget(
        "Upload",
        onPressed: () {
          Navigation.push(widget: const BodyCreationDoneScreen());
        },
      ),
    );
  }
}
