import 'package:flutter/material.dart';

import '../themes.dart';
import '../screens/profile_setting_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    void onSelected(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: Stack(
        children: const [
          ProfileSettingScreen(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(whiteSpace),
          topRight: Radius.circular(whiteSpace),
        ),
        child: BottomNavigationBar(
          onTap: onSelected,
          currentIndex: selectedIndex,
          backgroundColor: kSecondaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  selectedIndex == 0
                      ? 'assets/icons/home-ac.png'
                      : 'assets/icons/home.png',
                  width: 30,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 10, right: 30),
                child: Image.asset(
                  selectedIndex == 1
                      ? 'assets/icons/inventori-ac.png'
                      : 'assets/icons/inventori.png',
                  width: 30,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 10, left: 30),
                child: Image.asset(
                  selectedIndex == 2
                      ? 'assets/icons/keuangan-ac.png'
                      : 'assets/icons/keuangan.png',
                  width: 30,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  selectedIndex == 3
                      ? 'assets/icons/profile-settings-ac.png'
                      : 'assets/icons/profile-settings.png',
                  width: 30,
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kSecondaryColor,
        elevation: 0,
        isExtended: true,
        child: Image.asset(
          'assets/icons/scan-presensi.png',
          width: 30,
        ),
      ),
    );
  }
}
