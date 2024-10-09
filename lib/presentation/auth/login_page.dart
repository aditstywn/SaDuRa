import 'package:flutter/material.dart';
import 'package:sampahku/component/custom_textfield.dart';
import 'package:sampahku/component/menu_button.dart';
import 'package:sampahku/core/assets/icons.dart';
import 'package:sampahku/core/assets/image.dart';
import 'package:sampahku/presentation/auth/register_page.dart';
import 'package:sampahku/presentation/home/main_nav.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailC = TextEditingController();
  final passC = TextEditingController();
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
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'Masuk ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    AppImage.logo,
                    height: 180,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  formLogin(context)
                ],
              ),
            );
          } else {
            return SafeArea(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 200.0,
                  vertical: 200.0,
                ),
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            const Center(
                              child: Text(
                                'Masuk ',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              AppImage.logo,
                              height: 200,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: formLogin(context),
                      )
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Column formLogin(BuildContext context) {
    return Column(
      children: [
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
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainNav(),
                ));
          },
          child: const Text(
            'Masuk',
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
              'Apakah Sudah Punya Akun ?',
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ));
              },
              child: const Text(
                'Daftar',
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
