import 'package:flutter/material.dart';
import 'package:lifecoach/screens/do_body_scan_screen.dart';
import 'package:lifecoach/screens/upload_body_screen.dart';
import 'package:widgets/widgets.dart';

class BodyScanScreen extends StatelessWidget {
  const BodyScanScreen({super.key});

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
            'Scan your body\nto get the best results',
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
      primaryButton: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButtonWidget(
            "Scan",
            onPressed: () {
              Navigation.push(widget: const DoBodyScanScreen());
            },
          ),
          const DividerWidget("OR"),
          ElevatedButtonWidget(
            "Upload Body",
            onPressed: () {
              Navigation.push(widget: const UploadBodyScreen());
            },
          ),
        ],
      ),
    );
  }
}
