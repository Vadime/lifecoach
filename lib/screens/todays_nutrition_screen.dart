import 'package:flutter/material.dart';
import 'package:lifecoach/screens/meal_screen.dart';
import 'package:widgets/widgets.dart';

class TodaysNutritionScreen extends StatelessWidget {
  const TodaysNutritionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Today's Nutrition",
      body: ColumnWidget(
        safeArea: true,
        padding: EdgeInsets.all(context.config.padding),
        children: [
          const Spacer(),

          Align(
            alignment: Alignment.centerRight,
            child: TextButtonWidget(
              "Heute",
              onPressed: () {
                /// should go down the history in firebase, when the user started

                Navigation.pushDatePicker(
                  initial: DateTime.now(),
                  first: DateTime.now().subtract(const Duration(days: 7)),
                  last: DateTime.now(),
                  onChanged: (d) {},
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: (context.mediaQuery.size.width - 120) / 3,
                child: headlineWidget(
                  value: 300,
                  description: 'gegessen',
                  context: context,
                ),
              ),
              const SizedBox(width: 20),
              Center(
                child: CircularProgressWidget(
                  300 / 2800,
                  thickness: 10,
                  radius: context.mediaQuery.size.width / 6,
                  centerWidget: headlineWidget(
                    value: (2800 - 300 + 123.0).abs(),
                    description:
                        (300 / (2800 + 123) > 1) ? 'überschuss' : 'übrig',
                    context: context,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              SizedBox(
                width: (context.mediaQuery.size.width - 120) / 3,
                child: headlineWidget(
                  value: 123.0,
                  description: 'verbrannt',
                  context: context,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),
          const Spacer(),

          // Makro Progresse
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makroScoreProgress(
                title: "Carbs",
                value: 100,
                max: 200,
                context: context,
              ),
              const SizedBox(width: 20),
              makroScoreProgress(
                title: "Fat",
                value: 50,
                max: 80,
                context: context,
              ),
              const SizedBox(width: 20),
              makroScoreProgress(
                title: "Protein",
                value: 80,
                max: 100,
                context: context,
              ),
            ],
          ),

          const SizedBox(height: 20),
          const Spacer(),
          // Mahlzeiten mit ListTile
          mealTile(
            title: "Breakfast",
            subtitle: '40 / 200 kcal',
          ),
          mealTile(
            title: "Lunch",
            subtitle: '40 / 200 kcal',
          ),
          mealTile(
            title: "Dinner",
            subtitle: '40 / 200 kcal',
          ),
          mealTile(
            title: "Snack",
            subtitle: '40 / 200 kcal',
          ),
          const Spacer(),
        ],
      ),
      primaryButton: ColumnWidget(
        children: [
          Row(
            children: [
              Text(
                'Wasser',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const Spacer(),
              Text(
                '200 / 2000 ml',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
          const SizedBox(height: 5),
          LinearProgressWidget(
            200 / 2000,
            thickness: 5,
            foregroundColor: Colors.blue.shade300,
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerRight,
            child: TextWidget(
              '100 ml trinken',
              color: Colors.blue.shade300,
              style: Theme.of(context).textTheme.labelLarge,
              weight: FontWeight.bold,
              onTap: () {
                // FoodRepository.addWater(100);
                // setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  Column headlineWidget({
    double? value = 0,
    String description = 'Placeholder',
    required BuildContext context,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (value == null)
          const LoadingWidget()
        else
          Text(
            value.toInt().toString(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        Text(
          description,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }

  Expanded makroScoreProgress({
    /// Name vom Makro
    String title = 'Placeholder',

    /// Gegessene Menge vom Makro
    double value = 0,

    /// Maximale Menge vom Makro
    double max = 100,
    required BuildContext context,
  }) {
    return Expanded(
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 5),
          LinearProgressWidget(
            value / max,
            thickness: 5,
          ),
          const SizedBox(height: 5),
          Text(
            '${value.toInt()} / ${max.toInt()} g',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }

  ListTileWidget mealTile({
    String title = 'Placeholder',
    String subtitle = 'Placeholder',
  }) {
    return ListTileWidget(
      title: title,
      subtitle: subtitle,
      onTap: () {
        Navigation.push(
          widget: const MealScreen(),
        );
      },
      leading: const ImageWidget(
        NetworkImage(
            "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRX2RwGP5kVjqzrMxRh0XdkIEr7ImurL2oCstnE5Ql2uKPjlOPzNR1J4Ut2VOWqrkD4ODK4iSetyREsAUjqFlA"),
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.grey.withOpacity(0.5),
      ),
    );
  }
}
