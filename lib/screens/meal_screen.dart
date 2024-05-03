import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Breakfast",
      actions: [
        IconButton(
          icon: const Icon(Icons.qr_code_scanner_rounded),
          onPressed: () async {},
        ),
      ],
      body: ListView(
        physics: const ScrollPhysics(),
        padding: EdgeInsets.fromLTRB(
          0,
          0,
          0,
          context.config.padding,
        ),
        children: [
          const ImageWidget(
            NetworkImage(
                "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRX2RwGP5kVjqzrMxRh0XdkIEr7ImurL2oCstnE5Ql2uKPjlOPzNR1J4Ut2VOWqrkD4ODK4iSetyREsAUjqFlA"),
            height: 250,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              TextWidget(
                'Bereits gegessen',
                style: Theme.of(context).textTheme.bodyLarge,
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              ),
              const Spacer(),
              TextButtonWidget(
                'Bearbeiten',
                onPressed: () {},
                foregroundColor: context.config.primaryColor,
              ),
              const SizedBox(width: 20),
            ],
          ),
          const TableWidget(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            rows: [
              TableRowWidget(
                cells: [
                  'Name',
                  'Menge',
                  'Kalorien',
                ],
              ),
              // write the products dynamically here
              // from FoodRepository.currentFood by the meal
              TableRowWidget(
                cells: [
                  "Eier",
                  '100 g',
                  '40 kcal',
                ],
              ),
              TableRowWidget(
                cells: [
                  "Speck",
                  '80 g',
                  '90 kcal',
                ],
              ),
            ],
          ),
          TextWidget(
            'Deine Lebensmittel hinzufügen',
            style: Theme.of(context).textTheme.bodyLarge,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          ),
          ListTileWidget(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 2),
            title: "Eier",
            subtitle: '${40} kcal',
            trailing: const ImageWidget(
              NetworkImage(""),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            onTap: () {
              /// add product to meal
              // Navigation.push(
              //   widget: UserHealthAddMealScreen(
              //     meal: widget.meal,
              //     product: product,
              //     deletable: true,
              //   ),
              // );
            },
          ),
          ListTileWidget(
            margin: const EdgeInsets.fromLTRB(20, 2, 20, 2),
            title: "Milch",
            subtitle: '${80} kcal',
            trailing: const ImageWidget(
              NetworkImage(""),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            onTap: () {
              /// add product to meal
              // Navigation.push(
              //   widget: UserHealthAddMealScreen(
              //     meal: widget.meal,
              //     product: product,
              //     deletable: true,
              //   ),
              // );
            },
          ),
          TextWidget(
            'Lebensmittel hinzufügen',
            style: Theme.of(context).textTheme.bodyLarge,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          ),
          TextFieldWidget(
            controller:
                TextFieldController("", label: "Suche nach Lebensmittel"),
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            onSubmitted: (value) async {
              // if (value.isEmpty) {
              //   filteredProducts = [];
              // } else {
              //   setState(() => searchingInProcess = true);
              //   filteredProducts =
              //       await ProductRepository().searchProducts(value);
              // }
              // setState(
              //   () => searchingInProcess = false,
              // );
            },
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButtonWidget(
              'Eigenes Lebensmittel hinzufügen',
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              onPressed: () {
                // Navigation.push(
                //   widget: UserHealthAddNewMealScreen(
                //     meal: widget.meal,
                //     searchName: searchController.state,
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
