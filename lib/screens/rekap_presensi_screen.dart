import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iscp_project/screens/main_screen.dart';

import '../screens/profile_setting_screen.dart';
import '../themes.dart';

class RekapPresensiScreen extends StatelessWidget {
  const RekapPresensiScreen({super.key});

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
              Row(
                children: [
                  IconButton(
                    onPressed: () => Get.off(
                      () => const MainScreen(),
                    ),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'rekap presensi'.toUpperCase(),
                    style: whiteTextStyle.copyWith(fontWeight: bold),
                  ),
                ],
              ),

              //NOTE: Detail rekap presensi
              SizedBox(height: whiteSpace),
              Text(
                'December 2022',
                style: whiteTextStyle.copyWith(fontWeight: bold),
              ),

              _kehadiran(
                hadir: '1',
                status: 'H',
              ),
              _kehadiran(
                hadir: '2',
                status: 'H',
              ),
              _kehadiran(
                hadir: '3',
                status: 'H',
              ),
              _kehadiran(
                hadir: '4',
                status: 'S',
              ),
              _kehadiran(
                hadir: '5',
                status: 'H',
              ),
              _kehadiran(
                hadir: '6',
                status: 'A',
              ),
              _kehadiran(
                hadir: '7',
                status: '-',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _kehadiran({
    String? hadir,
    String? status,
  }) {
    Color st = kGreenColor;
    switch (status) {
      case 'H':
        st = kGreenColor;
        break;
      case 'A':
        st = kRedColor;
        break;
      case 'S':
        st = kRedColor;
        break;
      default:
        st = Colors.white;
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(
        left: 10,
      ),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Kehadiran $hadir'.toUpperCase(),
            style: blackTextStyle.copyWith(
              fontSize: 10,
              fontWeight: bold,
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: st,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
            child: Center(
              child: Text(
                status!,
                style: blackTextStyle.copyWith(fontWeight: bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
