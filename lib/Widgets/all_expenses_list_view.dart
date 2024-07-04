import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_dashboard/Models/all_expenses_items_model.dart';
import 'package:my_dashboard/Utils/app_images.dart';
import 'package:my_dashboard/Utils/size_config.dart';
import 'package:my_dashboard/Widgets/all_expenses.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  static const List<AllExpensesItemsModel> items = [
    AllExpensesItemsModel(
        image: Assets.assetsImagesWallet,
        title: "Total Balance",
        price: r"$13120.54"),
    AllExpensesItemsModel(
        image: Assets.assetsImagesWallet,
        title: "Total Spending",
        price: r"$92.043"),
    AllExpensesItemsModel(
        image: Assets.assetsImagesDollar,
        title: "Money Saved",
        price: r"$881.90"),
    AllExpensesItemsModel(
        image: Assets.assetsImagesDollar,
        title: "Money Sent",
        price: r"$120.750"),
    AllExpensesItemsModel(
        image: Assets.assetsImagesDollar,
        title: "Money Sent",
        price: r"$120.750"),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width < SizeConfig.desktopSize
        ? Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        updateState(0);
                      },
                      child: AllExpenses(
                          isActive: currentIndex == 0 ? true : false,
                          allExpensesItemsModel: items[2]),
                    )),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        updateState(1);
                      },
                      child: AllExpenses(
                          isActive: currentIndex == 1 ? true : false,
                          allExpensesItemsModel: items[3]),
                    )),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        updateState(2);
                      },
                      child: AllExpenses(
                          isActive: currentIndex == 2 ? true : false,
                          allExpensesItemsModel: items[2]),
                    )),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        updateState(3);
                      },
                      child: AllExpenses(
                          isActive: currentIndex == 3 ? true : false,
                          allExpensesItemsModel: items[3]),
                    )),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        updateState(4);
                      },
                      child: AllExpenses(
                          isActive: currentIndex == 4 ? true : false,
                          allExpensesItemsModel: items[4]),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
          )
        : Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  updateState(0);
                },
                child: AllExpenses(
                    isActive: currentIndex == 0 ? true : false,
                    allExpensesItemsModel: items[2]),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  updateState(1);
                },
                child: AllExpenses(
                    isActive: currentIndex == 1 ? true : false,
                    allExpensesItemsModel: items[3]),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  updateState(2);
                },
                child: AllExpenses(
                    isActive: currentIndex == 2 ? true : false,
                    allExpensesItemsModel: items[2]),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  updateState(3);
                },
                child: AllExpenses(
                    isActive: currentIndex == 3 ? true : false,
                    allExpensesItemsModel: items[3]),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  updateState(4);
                },
                child: AllExpenses(
                    isActive: currentIndex == 4 ? true : false,
                    allExpensesItemsModel: items[4]),
              )),
              const SizedBox(
                width: 15,
              ),
            ],
          );
  }

  void updateState(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
