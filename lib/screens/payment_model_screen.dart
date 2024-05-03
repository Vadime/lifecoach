import 'package:flutter/material.dart';
import 'package:lifecoach/screens/body_scan_screen.dart';
import 'package:widgets/widgets.dart';

class PaymentModelScreen extends StatelessWidget {
  const PaymentModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Offers",
      body: ScrollViewWidget(
        safeArea: true,
        padding: EdgeInsets.all(context.config.paddingH),
        children: [
          TableWidget(margin: EdgeInsets.all(context.config.paddingH), rows: [
            TableRowWidget(
              textStyle: Theme.of(context).textTheme.bodyLarge,
              cells: [
                'Inklusive',
                'Light',
                'Full',
                'Premium',
              ],
            ),
            const TableRowWidget(
              cells: [
                'Ernährungsplan',
                '✓',
                '✓',
                '✓',
              ],
            ),
            const TableRowWidget(
              cells: [
                'Workouts',
                '✓',
                '✓',
                '✓',
              ],
            ),
            const TableRowWidget(
              cells: [
                'Rezepte',
                '✓',
                '✓',
                '✓',
              ],
            ),
            const TableRowWidget(
              cells: [
                'Eigene Rezepte',
                '✗',
                '✓',
                '✓',
              ],
            ),
            const TableRowWidget(
              cells: [
                'Eigene Workouts',
                '✗',
                '✗',
                '✓',
              ],
            ),
          ]),
          ListTileWidget(
            title: 'Get Basic',
            trailing: TextWidget.bodyMedium(context, "€ 4,99 / Month"),
            onTap: () => Navigation.push(widget: const BodyScanScreen()),
            leading: const Icon(
              Icons.check_circle_outline,
              color: Colors.green,
            ),
            margin: EdgeInsets.all(context.config.paddingH),
            titleStyle: Theme.of(context).textTheme.bodyLarge,
          ),
          ListTileWidget(
            title: 'Get Full',
            trailing: TextWidget.bodyMedium(context, "€ 9,99 / Month"),
            onTap: () => Navigation.push(widget: const BodyScanScreen()),
            leading: const Icon(
              Icons.check_circle_outline,
              color: Colors.green,
            ),
            margin: EdgeInsets.all(context.config.paddingH),
            titleStyle: Theme.of(context).textTheme.bodyLarge,
          ),
          ListTileWidget(
            title: 'Get Premium',
            trailing: TextWidget.bodyMedium(context, "€ 14,99 / Month"),
            onTap: () => Navigation.push(widget: const BodyScanScreen()),
            leading: const Icon(
              Icons.check_circle_outline,
              color: Colors.green,
            ),
            margin: EdgeInsets.all(context.config.paddingH),
            titleStyle: Theme.of(context).textTheme.bodyLarge,
          ),
          const DividerWidget("ODER"),
          ListTileWidget(
            title: 'Promo Code',
            trailing: TextWidget.bodyMedium(context, ""),
            onTap: () {
              Navigation.pushPopup(
                widget: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextWidget.bodyLarge(context, "Enter Promo Code"),
                    const SizedBox(height: 20),
                    const CodeInput(),
                    const SizedBox(height: 20),
                    ElevatedButtonWidget(
                      "Apply Promo Code",
                      onPressed: () =>
                          Navigation.push(widget: const BodyScanScreen()),
                    ),
                  ],
                ),
              );
            },
            leading: const Icon(
              Icons.password_rounded,
              color: Colors.green,
            ),
            margin: EdgeInsets.all(context.config.paddingH),
            titleStyle: Theme.of(context).textTheme.bodyLarge,
          ),
          ListTileWidget(
            title: '30 Tage kostenlos testen',
            trailing: TextWidget.bodyMedium(context, ""),
            onTap: () => Navigation.push(widget: const BodyScanScreen()),
            leading: const Icon(
              Icons.calendar_month_rounded,
              color: Colors.green,
            ),
            margin: EdgeInsets.all(context.config.paddingH),
            titleStyle: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
