import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/assets.gen.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';
import 'package:oneres_newuiversion/view/icon/iconwidget.dart';

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      backgroundColor: ColorTheme.mainBackground,
      body: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 5.0,
          childAspectRatio: 5,
          children: [
            IconWidget(
              name: 'Booking',
              icon: Assets.icon.booking
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Accounting',
              icon: Assets.icon.accounting
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Cancel Bill',
              icon: Assets.icon.cancelBill
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Cancel Dishes',
              icon: Assets.icon.cancelDishes
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Cancel Food',
              icon: Assets.icon.cancelFood
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Cash Flow Statement',
              icon: Assets.icon.cashFlowStatement
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Cashier Cash ',
              icon: Assets.icon.cashierCash
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Commission',
              icon: Assets.icon.commission
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Dashboard',
              icon: Assets.icon.dashboard
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Food Runner',
              icon: Assets.icon.foodRunner
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Issue Invoice',
              icon: Assets.icon.issueInvoice
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Items Expense Report',
              icon: Assets.icon.itemsExpenseReport
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Items Food',
              icon: Assets.icon.itemsFood
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Kitchen Page',
              icon: Assets.icon.kitchenPage
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Link Restaurant',
              icon: Assets.icon.link
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Menu',
              icon: Assets.icon.menu
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Order',
              icon: Assets.icon.order
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Payment',
              icon: Assets.icon.payment
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Profile',
              icon: Assets.icon.profile
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Promotion',
              icon: Assets.icon.promotion
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Restaurant',
              icon: Assets.icon.restaurant
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Revenue By Order',
              icon: Assets.icon.revenueByOrder
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Review',
              icon: Assets.icon.review
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Sale Report',
              icon: Assets.icon.saleReport
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Shift',
              icon: Assets.icon.shift
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Source',
              icon: Assets.icon.source
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Statistic',
              icon: Assets.icon.statistic
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Stock Summary Report',
              icon: Assets.icon.stockSummaryReport
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Supplier',
              icon: Assets.icon.supplier
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Table And Area',
              icon: Assets.icon.tableAndArea
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Tax',
              icon: Assets.icon.tax
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Voucher',
              icon: Assets.icon.voucher
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
            IconWidget(
              name: 'Warehouse',
              icon: Assets.icon.warehouse
                  .svg(color: ColorTheme.colorIcon, height: 30, width: 30),
            ),
          ]),
    );
  }
}
