import 'package:flutter/material.dart';
import 'package:sampahku/core/assets/image.dart';

import 'widgets/jual_card.dart';
import 'widgets/proses_button.dart';

class JualPage extends StatelessWidget {
  const JualPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jual Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 20,
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600 || constraints.maxWidth < 920) {
            return const SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  JualCard(
                    image: AppImage.botolKaca,
                    jumlah: '10',
                    nama: 'Botol Kaca',
                    poin: '200',
                    satuan: 'Botol/Pcs',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  JualCard(
                    image: AppImage.kertas,
                    jumlah: '20',
                    nama: 'Botol Kaca',
                    poin: '500',
                    satuan: 'Kg/Pcs',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  JualCard(
                    image: AppImage.besi,
                    jumlah: '20',
                    nama: 'Besi',
                    poin: '500',
                    satuan: 'Kg/Batang',
                  ),
                ],
              ),
            );
          } else {
            return GridView(
              padding: const EdgeInsets.all(30),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 3,
              ),
              children: const [
                JualCard(
                  image: AppImage.botolKaca,
                  jumlah: '10',
                  nama: 'Botol Kaca',
                  poin: '200',
                  satuan: 'Botol/Pcs',
                ),
                JualCard(
                  image: AppImage.kertas,
                  jumlah: '20',
                  nama: 'Botol Kaca',
                  poin: '500',
                  satuan: 'Kg/Pcs',
                ),
                JualCard(
                  image: AppImage.besi,
                  jumlah: '20',
                  nama: 'Besi',
                  poin: '500',
                  satuan: 'Kg/Batang',
                ),
              ],
            );
          }
        },
      ),
      // body: const SingleChildScrollView(
      //   padding: EdgeInsets.symmetric(
      //     vertical: 8.0,
      //     horizontal: 16.0,
      //   ),
      //   child: Column(
      //     children: [
      //       JualCard(
      //         image: AppImage.botolKaca,
      //         jumlah: '10',
      //         nama: 'Botol Kaca',
      //         poin: '200',
      //         satuan: 'Botol/Pcs',
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       JualCard(
      //         image: AppImage.kertas,
      //         jumlah: '20',
      //         nama: 'Botol Kaca',
      //         poin: '500',
      //         satuan: 'Kg/Pcs',
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8),
        child: ProcessButton(
          data: '${500} Point ',
          proses: 'Jual',
          onPressed: () {},
        ),
      ),
    );
  }
}
