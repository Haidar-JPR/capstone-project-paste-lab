import 'package:flutter/material.dart';

import '../themes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.width = double.infinity,
    required this.name,
    required this.press,
  }) : super(key: key);

  final double width;
  final String name;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        backgroundColor: kButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(whiteSpace),
        ),
        minimumSize: Size(
          width,
          50,
        ),
      ),
      child: Text(
        name,
        style: whiteTextStyle,
      ),
    );
  }
}
