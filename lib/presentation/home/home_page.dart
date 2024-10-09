// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sampahku/core/assets/image.dart';

import 'widgets/card_book.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SaDuRa',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.recycling,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.contact_support_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 605) {
            // Mobile layout
            return ListView(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 270,
                      decoration: const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Selamat Datang, Adit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Point Saldo Anda : ',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '10.000',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.refresh,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.white,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'No : A45.2022.01',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.qr_code_scanner_outlined,
                                  size: 70,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -45,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.teal[300],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.arrow_circle_up_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              const Text(
                                'Bagi Point',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.teal[300],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.currency_exchange_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              const Text(
                                'Tukar Poin',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.teal[300],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.history,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              const Text(
                                'Riwayat',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(
                    top: 50,
                  ),
                  height: 300,
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardBook(
                          imageUrl: AppImage.buangSampah,
                          judul: 'Buang Sampah',
                          konten:
                              'Membuang sampah pada tempatnya adalah tanggung jawab setiap individu untuk menjaga kebersihan lingkungan.',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        CardBook(
                          imageUrl: AppImage.bumi,
                          judul: 'Cintai Bumi',
                          konten:
                              'Mencintai bumi berarti menjaga alam dengan penuh tanggung jawab.Seperti membuang sampah pada tempatnya.',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        CardBook(
                          imageUrl: AppImage.pohon,
                          judul: 'Bibit',
                          konten:
                              'Menanam pohon adalah salah satu cara terbaik untuk menjaga kelestarian bumi, selain daur ulang sampah',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else if (constraints.maxWidth < 900) {
            // Tablet layout
            return ListView(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 270,
                      decoration: const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Selamat Datang, Adit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Point Saldo Anda : ',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '10.000',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.refresh,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.white,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'No : A45.2022.01',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.qr_code_scanner_outlined,
                                  size: 70,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -65,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.teal[300],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.arrow_circle_up_outlined,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                              const Text(
                                'Bagi Point',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.teal[300],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.currency_exchange_outlined,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                              const Text(
                                'Tukar Poin',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.teal[300],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.history,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                              const Text(
                                'Riwayat',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(top: 50),
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardBook(
                        imageUrl: AppImage.buangSampah,
                        judul: 'Buang Sampah',
                        konten:
                            'Membuang sampah pada tempatnya adalah tanggung jawab setiap individu untuk menjaga kebersihan lingkungan.',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      CardBook(
                        imageUrl: AppImage.bumi,
                        judul: 'Cintai Bumi',
                        konten:
                            'Mencintai bumi berarti menjaga alam dengan penuh tanggung jawab.Seperti membuang sampah pada tempatnya.',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      CardBook(
                        imageUrl: AppImage.pohon,
                        judul: 'Bibit',
                        konten:
                            'Menanam pohon adalah salah satu cara terbaik untuk menjaga kelestarian bumi, selain daur ulang sampah',
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            // Desktop layout
            return ListView(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 350,
                      width: 900,
                      decoration: const BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10,
                          ),
                          height: 300,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.teal[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Selamat Datang, Adit',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Point Saldo Anda : ',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          '10.000',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.refresh,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: Colors.white,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'No : A45.2022.01',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.qr_code_scanner_outlined,
                                      size: 150,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.teal[300],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_circle_up_outlined,
                                    color: Colors.white,
                                    size: 60,
                                  ),
                                ),
                                const Text(
                                  'Bagi Point',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.teal[300],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Icon(
                                    Icons.currency_exchange_outlined,
                                    color: Colors.white,
                                    size: 60,
                                  ),
                                ),
                                const Text(
                                  'Tukar Poin',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.teal[300],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Icon(
                                    Icons.history,
                                    color: Colors.white,
                                    size: 60,
                                  ),
                                ),
                                const Text(
                                  'Riwayat',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(top: 50),
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardBook(
                        imageUrl: AppImage.buangSampah,
                        judul: 'Buang Sampah',
                        konten:
                            'Membuang sampah pada tempatnya adalah tanggung jawab setiap individu untuk menjaga kebersihan lingkungan.',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      CardBook(
                        imageUrl: AppImage.bumi,
                        judul: 'Cintai Bumi',
                        konten:
                            'Mencintai bumi berarti menjaga alam dengan penuh tanggung jawab.Seperti membuang sampah pada tempatnya.',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      CardBook(
                        imageUrl: AppImage.pohon,
                        judul: 'Bibit',
                        konten:
                            'Menanam pohon adalah salah satu cara terbaik untuk menjaga kelestarian bumi, selain daur ulang sampah',
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
      // ListView(
      //   children: [
      //     Stack(
      //       clipBehavior: Clip.none,
      //       children: [
      //         Container(
      //           height: 270,
      //           decoration: const BoxDecoration(
      //             color: Colors.teal,
      //             borderRadius: BorderRadius.only(
      //               bottomLeft: Radius.circular(30),
      //               bottomRight: Radius.circular(30),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.all(20),
      //           height: 200,
      //           width: double.infinity,
      //           decoration: BoxDecoration(
      //             color: Colors.teal[300],
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: Padding(
      //             padding: const EdgeInsets.all(16.0),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 const Text(
      //                   'Selamat Datang, Adit',
      //                   style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 20,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     const Text(
      //                       'Point Saldo Anda : ',
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                     Row(
      //                       children: [
      //                         const Text(
      //                           '10.000',
      //                           style: TextStyle(
      //                             fontSize: 25,
      //                             fontWeight: FontWeight.bold,
      //                             color: Colors.white,
      //                           ),
      //                         ),
      //                         const SizedBox(
      //                           width: 5,
      //                         ),
      //                         IconButton(
      //                           onPressed: () {},
      //                           icon: const Icon(
      //                             Icons.refresh,
      //                             color: Colors.white,
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                   ],
      //                 ),
      //                 const Divider(
      //                   color: Colors.white,
      //                 ),
      //                 const Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   crossAxisAlignment: CrossAxisAlignment.end,
      //                   children: [
      //                     Text(
      //                       'No : A45.2022.01',
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                     Icon(
      //                       Icons.qr_code_scanner_outlined,
      //                       size: 70,
      //                       color: Colors.white,
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Positioned(
      //           bottom: -45,
      //           left: 0,
      //           right: 0,
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Column(
      //                 children: [
      //                   Container(
      //                     margin: const EdgeInsets.symmetric(
      //                       horizontal: 20,
      //                     ),
      //                     height: 60,
      //                     width: 60,
      //                     decoration: BoxDecoration(
      //                       color: Colors.teal[300],
      //                       borderRadius: BorderRadius.circular(15),
      //                     ),
      //                     child: const Icon(
      //                       Icons.arrow_circle_up_outlined,
      //                       color: Colors.white,
      //                       size: 40,
      //                     ),
      //                   ),
      //                   const Text(
      //                     'Bagi Point',
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   )
      //                 ],
      //               ),
      //               Column(
      //                 children: [
      //                   Container(
      //                     margin: const EdgeInsets.symmetric(
      //                       horizontal: 20,
      //                     ),
      //                     height: 60,
      //                     width: 60,
      //                     decoration: BoxDecoration(
      //                       color: Colors.teal[300],
      //                       borderRadius: BorderRadius.circular(15),
      //                     ),
      //                     child: const Icon(
      //                       Icons.currency_exchange_outlined,
      //                       color: Colors.white,
      //                       size: 40,
      //                     ),
      //                   ),
      //                   const Text(
      //                     'Tukar Poin',
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   )
      //                 ],
      //               ),
      //               Column(
      //                 children: [
      //                   Container(
      //                     margin: const EdgeInsets.symmetric(
      //                       horizontal: 20,
      //                     ),
      //                     height: 60,
      //                     width: 60,
      //                     decoration: BoxDecoration(
      //                       color: Colors.teal[300],
      //                       borderRadius: BorderRadius.circular(15),
      //                     ),
      //                     child: const Icon(
      //                       Icons.history,
      //                       color: Colors.white,
      //                       size: 40,
      //                     ),
      //                   ),
      //                   const Text(
      //                     'Riwayat',
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(16),
      //       margin: const EdgeInsets.only(top: 50),
      //       height: 300,
      //       child: const SingleChildScrollView(
      //         scrollDirection: Axis.horizontal,
      //         child: Row(
      //           children: [
      //             CardBook(
      //               imageUrl: AppImage.buangSampah,
      //               judul: 'Buang Sampah',
      //               konten:
      //                   'Membuang sampah pada tempatnya adalah tanggung jawab setiap individu untuk menjaga kebersihan lingkungan.',
      //             ),
      //             SizedBox(
      //               width: 16,
      //             ),
      //             CardBook(
      //               imageUrl: AppImage.bumi,
      //               judul: 'Cintai Bumi',
      //               konten:
      //                   'Mencintai bumi berarti menjaga alam dengan penuh tanggung jawab.Seperti membuang sampah pada tempatnya.',
      //             ),
      //             SizedBox(
      //               width: 16,
      //             ),
      //             CardBook(
      //               imageUrl: AppImage.pohon,
      //               judul: 'Bibit',
      //               konten:
      //                   'Menanam pohon adalah salah satu cara terbaik untuk menjaga kelestarian bumi, selain daur ulang sampah',
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
