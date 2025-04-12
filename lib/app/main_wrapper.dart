import 'package:crypto_app/features/home/view/home_screen.dart';
import 'package:crypto_app/features/profile/view/profile_screen.dart';
import 'package:crypto_app/shared/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    ProfileScreen(),
  ];

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onDestinationSelected,
        destinations: [
          NavigationDestination(
            icon: Assets.homeOutlined.svg(
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.secondary,
                BlendMode.srcATop,
              ),
            ),
            selectedIcon: Assets.homeFilled.svg(),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Assets.profileOutlined.svg(
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.secondary,
                BlendMode.srcATop,
              ),
            ),
            selectedIcon: Assets.profileFilled.svg(),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
