import 'package:flutter/material.dart';
import 'package:lifecoach/screens/home_screen.dart';
import 'package:widgets/widgets.dart';

class BrunoScreen extends StatelessWidget {
  const BrunoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Bruno",
      body: ColumnWidget(
        safeArea: true,
        padding: const EdgeInsets.all(20),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: context.mediaQuery.size.width / 1.5,
                minWidth: context.mediaQuery.size.width / 2.5,
              ),
              child: CardWidget(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  children: [
                    TextWidget.bodyLarge(context, "Bruno"),
                    TextWidget.bodySmall(context, "Hi there!"),
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: context.mediaQuery.size.width / 1.5,
                minWidth: context.mediaQuery.size.width / 2.5,
              ),
              child: CardWidget(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  margin: const EdgeInsets.only(top: 10),
                  children: [
                    TextWidget.bodyLarge(context, "Bruno"),
                    TextWidget.bodySmall(context,
                        "I'm Bruno, your personal AI coach. Do you have any extra goals, that weren't covered yet?"),
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: context.mediaQuery.size.width / 1.5,
                minWidth: context.mediaQuery.size.width / 2.5,
              ),
              child: CardWidget(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  margin: const EdgeInsets.only(top: 10),
                  children: [
                    TextWidget.bodyLarge(context, "Me"),
                    TextWidget.bodySmall(
                        context, "Hi. I want to be able to run a marathon."),
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: context.mediaQuery.size.width / 1.5,
                minWidth: context.mediaQuery.size.width / 2.5,
              ),
              child: CardWidget(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  margin: const EdgeInsets.only(top: 10),
                  children: [
                    TextWidget.bodyLarge(context, "Bruno"),
                    TextWidget.bodySmall(context,
                        "Noted ✍️\nI will add this to your goals. Anything else?"),
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: context.mediaQuery.size.width / 1.5,
                minWidth: context.mediaQuery.size.width / 2.5,
              ),
              child: CardWidget(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  margin: const EdgeInsets.only(top: 10),
                  children: [
                    TextWidget.bodyLarge(context, "Me"),
                    TextWidget.bodySmall(context, "No that's it for now"),
                  ]),
            ),
          ),
          TextButtonWidget(
            "Create your new personalized Plan",
            margin: const EdgeInsets.only(top: 10),
            onPressed: () {
              Navigation.flush(widget: const HomeScreen());
            },
          ),
        ],
      ),
      primaryButton: TextFieldWidget(
        controller: TextFieldController('', label: "Schreiben Sie hier..."),
        trailing: const Icon(Icons.send_rounded, color: Colors.blue),
      ),
    );
  }
}
