import 'package:flutter/material.dart';
import 'package:sampahku/presentation/auth/login_page.dart';

import '../../component/custom_textfield.dart';
import '../../component/menu_button.dart';
import '../../core/assets/icons.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameC = TextEditingController();
  final emailC = TextEditingController();
  final passC = TextEditingController();
  final noTeleponC = TextEditingController();
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600 || constraints.maxWidth < 900) {
            return SafeArea(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  form(context)
                ],
              ),
            );
          } else {
            return SafeArea(
              child: ListView(
                padding: const EdgeInsets.only(
                  left: 300,
                  right: 300,
                  top: 60,
                ),
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  form(context)
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Column form(BuildContext context) {
    return Column(
      children: [
        CustomTextfield(
          controller: nameC,
          keyboardType: TextInputType.emailAddress,
          label: 'Nama Lengkap',
          size: 15,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextfield(
          controller: emailC,
          keyboardType: TextInputType.emailAddress,
          label: 'Email',
          size: 15,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextfield(
          controller: noTeleponC,
          keyboardType: TextInputType.phone,
          label: 'Nomor Telepon',
          size: 15,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextfield(
          controller: passC,
          label: 'Password',
          size: 15,
          obscureText: isHide,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isHide = !isHide;
              });
            },
            icon: isHide == true
                ? Image.asset(
                    AppIcons.hideEyes,
                    width: 22,
                  )
                : const Icon(
                    Icons.remove_red_eye_outlined,
                  ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width, 45),
            backgroundColor: Colors.teal,
          ),
          onPressed: () {},
          child: const Text(
            'Daftar',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            MenuButton(
              label: 'Google',
              iconPath: AppIcons.google,
              onPressed: () {},
              size: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            MenuButton(
              label: 'Facebook',
              iconPath: AppIcons.facebook,
              onPressed: () {},
              size: 50,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Colors.grey,
          // thickness: 2,
          indent: 30,
          endIndent: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sudah Punya Akun ?',
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              },
              child: const Text(
                'Masuk',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
