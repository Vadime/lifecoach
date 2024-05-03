import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class BlurredBubbles extends StatelessWidget {
  final Widget child;
  const BlurredBubbles({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: context.config.backgroundColor,
        ),
        Positioned(
          left: -100,
          top: -100,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: RadialGradient(colors: [
                Colors.blue.shade200,
                context.config.backgroundColor,
              ]),
            ),
          ),
        ),
        Positioned(
          right: -100,
          top: MediaQuery.of(context).size.height / 4 - 100,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: RadialGradient(colors: [
                Colors.blue.shade200,
                context.config.backgroundColor.withAlpha(0),
              ]),
            ),
          ),
        ),
        Positioned(
          left: -100,
          top: MediaQuery.of(context).size.height / 2 - 100,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: RadialGradient(colors: [
                Colors.blue.shade200,
                context.config.backgroundColor.withAlpha(0),
              ]),
            ),
          ),
        ),
        Positioned(
          right: -100,
          top: MediaQuery.of(context).size.height -
              MediaQuery.of(context).size.width +
              100,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: RadialGradient(colors: [
                Colors.blue.shade200,
                context.config.backgroundColor.withAlpha(0),
              ]),
            ),
          ),
        ),
        Positioned.fill(child: child),
      ],
    );
  }
}
