// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sampahku/component/custom_textfield.dart';
import 'package:sampahku/core/assets/icons.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final namaC = TextEditingController();
  final alamatC = TextEditingController();

  String gender = 'Laki-laki';
  String status = 'Aktif';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 20,
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              children: [
                const Center(
                  child: foto(
                    height: 140,
                    width: 140,
                    radius: 70,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber[500],
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Unggah Foto',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                cardForm(),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 45),
                    backgroundColor: Colors.teal,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Simpan',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          } else if (constraints.maxWidth < 900) {
            return ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        const Center(
                          child: foto(
                            height: 200,
                            width: 200,
                            radius: 100,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber[500],
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Unggah Foto',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: cardForm(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 45),
                    backgroundColor: Colors.teal,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Simpan',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          } else {
            return ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        const Center(
                          child: foto(
                            height: 200,
                            width: 200,
                            radius: 100,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber[500],
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Unggah Foto',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: cardForm(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 60),
                    backgroundColor: Colors.teal,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Simpan',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Card cardForm() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextfield(
              controller: alamatC,
              label: 'Nama Lengkap',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextfield(
              controller: namaC,
              label: 'Alamat',
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Jenis Kelamin',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: const Text(
                            'Laki-laki',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          value: 'Laki-laki',
                          groupValue: gender,
                          dense: true,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: const Text(
                            'Perempuan',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          value: 'Perempuan',
                          groupValue: gender,
                          dense: true,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Status',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: const Text(
                            'Aktif',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          value: 'Aktif',
                          groupValue: status,
                          dense: true,
                          onChanged: (value) {
                            setState(() {
                              status = value!;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: const Text(
                            'Non-Aktif',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          value: 'Non-Aktif',
                          groupValue: status,
                          dense: true,
                          onChanged: (value) {
                            setState(() {
                              status = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class foto extends StatelessWidget {
  final double height;
  final double width;
  final double radius;
  const foto({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: height,
      width: width,
      decoration: ShapeDecoration(
        color: Colors.grey[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image.asset(
          AppIcons.person,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
