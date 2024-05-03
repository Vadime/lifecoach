import 'package:flutter/material.dart';
import 'package:lifecoach/screens/body_creation_done_screen.dart';
import 'package:widgets/widgets.dart';

class DoBodyScanScreen extends StatelessWidget {
  const DoBodyScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: 'Body Scan',
      body: ColumnWidget(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        padding: const EdgeInsets.all(20),
        safeArea: true,
        children: [
          const Spacer(),
          TextWidget.headlineLarge(
            context,
            'Stand in front of a mirror\nand take a picture of yourself\nfrom the front and side.',
            align: TextAlign.center,
          ),
          const Spacer(),
          const ImageWidget(
            AssetImage("res/images/onboarding_guy.png"),
            height: 300,
            fit: BoxFit.contain,
          ),
          const Spacer(),
        ],
      ),
      primaryButton: ElevatedButtonWidget(
        "Scan",
        onPressed: () {
          Navigation.push(widget: const BodyCreationDoneScreen());
        },
      ),
    );
  }
}
