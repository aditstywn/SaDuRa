import 'package:flutter/material.dart';

class CardBook extends StatelessWidget {
  final String judul;
  final String konten;
  final String imageUrl;
  final double? width;

  const CardBook({
    super.key,
    required this.judul,
    required this.konten,
    required this.imageUrl,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double cardWidth;

    if (screenWidth >= 1024) {
      // Desktop
      cardWidth = width ?? 290;
    } else if (screenWidth >= 730) {
      // Tablet
      cardWidth = width ?? 220;
    } else {
      // Mobile
      cardWidth = width ?? 180;
    }

    return Container(
      padding: const EdgeInsets.all(8),
      height: 240,
      width: cardWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(3, 3),
          )
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            height: 100,
          ),
          const Divider(
            indent: 20,
            endIndent: 20,
            color: Colors.grey,
          ),
          Text(
            judul,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            konten,
            overflow: TextOverflow.clip,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
