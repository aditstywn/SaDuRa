// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class KategoriCard extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onPressed;

  const KategoriCard({
    super.key,
    required this.iconPath,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double height;
    double fontSize;

    if (screenWidth < 600) {
      height = 100;
      fontSize = 14;
    } else if (screenWidth < 900) {
      height = 250;
      fontSize = 18;
    } else {
      height = 400;
      fontSize = 22;
    }

    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: height,
            decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  iconPath,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
