// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class JualCard extends StatelessWidget {
  final String image;
  final String nama;
  final String poin;
  final String jumlah;
  final String satuan;

  const JualCard({
    super.key,
    required this.image,
    required this.nama,
    required this.poin,
    required this.jumlah,
    required this.satuan,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double height;
    double width;
    double iconsSize;
    double nameSize;
    double poinSize;

    if (screenWidth < 600) {
      height = 110;
      width = 110;
      iconsSize = 25;
      nameSize = 20;
      poinSize = 16;
    } else if (screenWidth < 1000) {
      height = 180;
      width = 180;
      iconsSize = 25;
      nameSize = 25;
      poinSize = 20;
    } else {
      height = 220;
      width = 220;
      iconsSize = 45;
      nameSize = 30;
      poinSize = 24;
    }

    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0xFFC7D0EB)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                  child: Image.asset(
                    image,
                    height: height,
                    width: width,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        nama,
                        style: TextStyle(
                          fontSize: nameSize,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '$poin Poin',
                        style: TextStyle(
                          fontSize: poinSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 8,
                          right: 8,
                        ),
                        height: 50,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 2, color: Color(0xFFC7D0EB)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.remove_circle_outline,
                                size: iconsSize,
                              ),
                            ),
                            Text(
                              jumlah,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              satuan,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.add_circle_outline,
                                size: iconsSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: -15,
              right: -15,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.cancel,
                  color: Colors.red,
                  size: iconsSize,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
