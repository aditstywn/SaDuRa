import 'package:flutter/material.dart';
import 'package:sampahku/presentation/home/home_page.dart';
import 'package:sampahku/presentation/pesan/pesan_page.dart';
import 'package:sampahku/presentation/profile/profile_page.dart';
import 'package:sampahku/presentation/sampah/sampah_page.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const SampahPage(),
    const PesanPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.teal.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, -2),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: BottomNavigationBar(
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            backgroundColor: Colors.teal,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 35,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 35,
                ),
                label: 'Sampah',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_rounded,
                  color: Colors.white,
                  size: 35,
                ),
                label: 'Pesan',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_pin,
                  color: Colors.white,
                  size: 35,
                ),
                label: 'Setting',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
