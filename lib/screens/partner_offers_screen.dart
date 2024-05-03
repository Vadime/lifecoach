import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class PartnerOffersScreen extends StatelessWidget {
  const PartnerOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        title: "Partner Offers",
        body: ScrollViewWidget(
          children: [
            TextWidget.bodyLarge(context, "Special Offers"),
            const SizedBox(height: 10),
            const ListTileWidget(
              title: "Free 1 Month Subscription",
              trailing: Icon(
                Icons.trending_up_rounded,
                color: Colors.blue,
              ),
            ),
            const ListTileWidget(
              title: "Protein Shakes at 50% off",
            ),
            const ListTileWidget(
              title: "Gym Shirts at 30% off",
            ),
            const SizedBox(height: 20),
            TextWidget.bodyLarge(context, "Food Offers"),
            const SizedBox(height: 10),
            const ListTileWidget(
              title: "Magerquark (REWE)",
              subtitle: "0.29€",
              trailing: Icon(
                Icons.trending_up_rounded,
                color: Colors.blue,
              ),
            ),
            const ListTileWidget(
              title: "Proteinpulver (LIDL)",
              subtitle: "9.99€",
              trailing: Icon(
                Icons.trending_up_rounded,
                color: Colors.blue,
              ),
            ),
            const ListTileWidget(
              title: "Eggs (ALDI)",
              subtitle: "0.99€",
              trailing: Icon(
                Icons.trending_up_rounded,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            TextWidget.bodyLarge(context, "Gym Offers"),
            const SizedBox(height: 10),
            const ListTileWidget(
              title: "Free 1 Month Membership",
              subtitle: "McFit",
              trailing: Icon(
                Icons.trending_up_rounded,
                color: Colors.blue,
              ),
            ),
            const ListTileWidget(
              title: "25 % off on Personal Training",
              subtitle: "John Reed",
              trailing: Icon(
                Icons.trending_up_rounded,
                color: Colors.blue,
              ),
            ),
          ],
        ));
  }
}
