import 'package:dalel/core/utlis/app_color.dart';
import 'package:dalel/features/cart/presentation/views/cart_view.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/profile/presentation/views/profile_view.dart';
import 'package:dalel/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeNavBarWidget extends StatelessWidget {
  HomeNavBarWidget({super.key});
  final PersistentTabController _controller = PersistentTabController();

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.primaryColor,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(
        Icons.home,
        color: AppColors.deepBrown,
      ),
      inactiveIcon: Icon(
        Icons.home,
        color: AppColors.offWhite,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        Icons.shopping_cart,
        color: AppColors.deepBrown,
      ),
      inactiveIcon: Icon(
        Icons.shopping_cart,
        color: AppColors.offWhite,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        Icons.search,
        color: AppColors.deepBrown,
      ),
      inactiveIcon: Icon(
        Icons.search,
        color: AppColors.offWhite,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        Icons.person,
        color: AppColors.deepBrown,
      ),
      inactiveIcon: Icon(
        Icons.person,
        color: AppColors.offWhite,
      ),
    ),
  ];
}
