import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iscp_project/screens/rekap_presensi_screen.dart';

import '../themes.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: whiteSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //NOTE: Profile section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/profile.png',
                      width: 60,
                    ),
                    SizedBox(width: borderRadius),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'zoe',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Product Manager',
                          style: blackTextStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              //NOTE: Rekap presensi
              _customItem(
                name: 'rekap presensi',
                martop: 60,
                press: () => Get.to(() => const RekapPresensiScreen()),
              ),

              SizedBox(height: whiteSpace),
              Text(
                'TENTANG APLIKASI',
                style: whiteTextStyle.copyWith(fontSize: 10),
              ),

              //NOTE: Laporkan bug
              _customItem(
                name: 'laporkan bug',
                press: () {},
              ),

              //NOTE: Beri rating
              _customItem(
                name: 'beri rating',
                press: () {},
              ),

              SizedBox(height: whiteSpace),
              Text(
                'PRIVASI & KEAMANAN',
                style: whiteTextStyle.copyWith(fontSize: 10),
              ),

              //NOTE: Ganti kata sandi
              _customItem(
                name: 'ganti kata sandi',
                press: () {},
              ),

              //NOTE: Authentikasi akun
              _customItem(
                name: 'authentikasi akun',
                press: () {},
              ),

              //NOTE: Keluar akun
              _customItem(
                name: 'keluar akun',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _customItem({
    String name = '',
    double martop = 15,
    VoidCallback? press,
  }) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: martop),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          name.toUpperCase(),
          style: blackTextStyle.copyWith(fontSize: 10),
        ),
      ),
    );
  }
}
