import 'package:flutter/material.dart';
import 'package:intership_task/app/modules/account/presentation/account_screen.dart';
import 'package:intership_task/app/modules/home/presentation/home_screen.dart';
import 'package:intership_task/app/modules/product/presentation/product_screen.dart';
import 'package:intership_task/app/modules/transactions/presentation/transaction_screen.dart';
import 'package:intership_task/core/utilities/constants/app_colour.dart';
import 'package:intership_task/core/utilities/constants/app_spacing.dart';
import 'package:intership_task/core/utilities/constants/app_text.dart';

class BottomNavWrapper extends StatefulWidget {
  const BottomNavWrapper({super.key});
  static const routeName = '/bottomNavigation';

  @override
  State<BottomNavWrapper> createState() => _BottomNavWrapperState();
}

class _BottomNavWrapperState extends State<BottomNavWrapper> {
  List pages = [
    const HomeScreen(),
    const ProductScreen(),
    const TransactionScreen(),
    const AccountScreen(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: AppColour.navBarBackgroundColour,
        selectedIconTheme: const IconThemeData(color: AppColour.primaryGreen),
        selectedItemColor: AppColour.primaryGreen,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: AppColour.gery,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: AppText.home,
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
            ),
            label: AppText.product,
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppSpacing.h20,
                ),
                border: Border.all(
                  color: AppColour.gery,
                ),
              ),
              child: const Icon(
                Icons.compare_arrows,
              ),
            ),
            label: AppText.transaction,
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
            ),
            label: AppText.account,
          ),
        ],
      ),
    );
  }
}
