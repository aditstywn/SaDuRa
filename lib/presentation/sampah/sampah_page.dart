import 'package:flutter/material.dart';
import 'package:sampahku/core/assets/image.dart';
import 'package:sampahku/presentation/sampah/jual_page.dart';
import 'package:sampahku/presentation/sampah/widgets/proses_button.dart';

import 'widgets/kategori_card.dart';

class SampahPage extends StatelessWidget {
  const SampahPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount;
    double crossAxisSpacing;
    double mainAxisExtent;
    double fontSize;
    double pHor;
    double pVer;

    if (screenWidth < 600) {
      crossAxisCount = 3;
      crossAxisSpacing = 16;
      mainAxisExtent = 150;
      fontSize = 16;
      pHor = 16.0;
      pVer = 8.0;
    } else if (screenWidth < 900) {
      crossAxisCount = 3;
      crossAxisSpacing = 16;
      mainAxisExtent = 300;
      fontSize = 20;
      pHor = 16.0;
      pVer = 8.0;
    } else {
      crossAxisCount = 2;
      crossAxisSpacing = 80;
      mainAxisExtent = 450;
      fontSize = 24;
      pHor = 80.0;
      pVer = 20.0;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kategori Sampah',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 20,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: pHor,
          vertical: pVer,
        ),
        children: [
          Text(
            'Berikut ini adalah kategori sampah yang bisa ditukar untuk daur ulang',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GridView(
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: crossAxisSpacing,
              mainAxisExtent: mainAxisExtent,
            ),
            children: [
              KategoriCard(
                onPressed: () {},
                iconPath: AppImage.botolplastik,
                label: 'Botol Plastik',
              ),
              KategoriCard(
                onPressed: () {},
                iconPath: AppImage.kertas,
                label: 'Kertas',
              ),
              KategoriCard(
                onPressed: () {},
                iconPath: AppImage.kardus,
                label: 'Kardus',
              ),
              KategoriCard(
                onPressed: () {},
                iconPath: AppImage.besi,
                label: 'Besi',
              ),
              KategoriCard(
                onPressed: () {},
                iconPath: AppImage.botolKaca,
                label: 'Botol Kaca',
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8),
        child: ProcessButton(
          data: '${2} Kategori ',
          proses: 'Proses',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const JualPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
