import 'package:flutter/material.dart';
import 'package:lifecoach/lifecoach.dart';
import 'package:lifecoach/screens/partner_offers_screen.dart';
import 'package:lifecoach/screens/settings_screen.dart';
import 'package:lifecoach/screens/statistics_screen.dart';
import 'package:lifecoach/screens/todays_nutrition_screen.dart';
import 'package:lifecoach/screens/todays_training_screen.dart';
import 'package:widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Home",
      body: ColumnWidget(
        safeArea: true,
        padding: EdgeInsets.all(context.config.padding),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextWidget.bodySmall(context, "Your Progress"),
                    const SizedBox(height: 5),
                    const LinearProgressWidget(
                      0.41,
                      thickness: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              TextWidget.headlineSmall(context, "41%"),
            ],
          ),
          const SizedBox(height: 20),
          Flexible(child: Image.asset("res/images/onboarding_guy.png")),
          const SizedBox(height: 20),
          Expanded(
            child: RowWidget(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              margin: const EdgeInsets.only(bottom: 2),
              children: [
                Expanded(
                  child: CardWidget(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      padding: const EdgeInsets.all(10),
                      onTap: () =>
                          Navigation.push(widget: const TodaysTrainingScreen()),
                      children: [
                        TextWidget.headlineSmall(context, "Today's Training"),
                        const SizedBox(height: 5),
                        const Spacer(),
                        TextWidget.bodyMedium(
                          context,
                          "Chest\n&\nTriceps",
                          align: TextAlign.center,
                        ),
                        const Spacer(),
                      ]),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: CardWidget(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      padding: const EdgeInsets.all(10),
                      onTap: () => Navigation.push(
                          widget: const TodaysNutritionScreen()),
                      children: [
                        TextWidget.headlineSmall(context, "Today's Nutrition"),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: CircularProgressWidget(
                                0.7,
                                thickness: 10,
                                centerWidget: ColumnWidget(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    padding: const EdgeInsets.all(10),
                                    children: [
                                      TextWidget.headlineSmall(context, "2513"),
                                      TextWidget.bodySmall(
                                        context,
                                        "kcal left",
                                        align: TextAlign.center,
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),
          ListTileWidget(
            title: "Partner offers",
            onTap: () {
              Navigation.push(widget: const PartnerOffersScreen());
            },
          ),
          ListTileWidget(
            title: "Statistics",
            onTap: () {
              Navigation.push(widget: const StatisticsScreen());
            },
          )
        ],
      ),
      actions: [
        IconButtonWidget(Icons.settings_rounded, onPressed: () {
          Navigation.push(widget: const SettingsScreen());
        }),
      ],
    );
  }
}
