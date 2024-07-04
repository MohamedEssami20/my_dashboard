import 'package:flutter/material.dart';
import 'package:my_dashboard/Models/all_expenses_items_model.dart';
import 'package:my_dashboard/Utils/app_style.dart';
import 'package:my_dashboard/Widgets/all_expenses_header.dart';

class ActiveTransactionItems extends StatelessWidget {
  const ActiveTransactionItems(
      {super.key, required this.allExpensesItemsModel});
  final AllExpensesItemsModel allExpensesItemsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: ShapeDecoration(
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 37, 137, 203),
            Color(0XFF3391D0),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeader(
            image: allExpensesItemsModel.image,
          ),
          const SizedBox(
            height: 30,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemsModel.title,
              style: AppStyle.regular17(context)
                  .copyWith(color: const Color(0xffffffff)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemsModel.price,
              style: AppStyle.bold26(context)
                  .copyWith(color: const Color(0xffFFFFFF)),
            ),
          ),
        ],
      ),
    );
  }
}

// inactive item;

class InActiveTransactionItems extends StatelessWidget {
  const InActiveTransactionItems(
      {super.key, required this.allExpensesItemsModel});
  final AllExpensesItemsModel allExpensesItemsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: ShapeDecoration(
            color: const Color(0xffF1F1F1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesHeader(
              image: allExpensesItemsModel.image,
              imageColor: const Color(0xff434343),
              backGroundImageColor: const Color(0xffA9A9A9).withOpacity(.3),
            ),
            const SizedBox(
              height: 30,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                allExpensesItemsModel.title,
                style: AppStyle.regular17(context)
                    .copyWith(color: const Color(0xff5C5C5C)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                allExpensesItemsModel.price,
                style: AppStyle.bold26(context)
                    .copyWith(color: const Color(0xff252525)),
              ),
            ),
          ],
        ));
  }
}
