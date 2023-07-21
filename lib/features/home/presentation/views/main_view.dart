import 'package:coffee_app/core/utils/colors.dart';
import 'package:coffee_app/core/utils/string.dart';
import 'package:coffee_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color:const Color(0xffF6F6F6),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.22),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          showUnselectedLabels: true,
          selectedLabelStyle: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.w900),
          unselectedLabelStyle: GoogleFonts.lato(fontSize: 12,fontWeight: FontWeight.w900),
          type: BottomNavigationBarType.fixed,
           selectedItemColor: AppColors.kSecondaryColor,
           unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.house_rounded),
                label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
                          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
                          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Profile',
                          ),
          ],
        ),
      ),
      body: AppStrings.kPages[_currentIndex],
    );
  }
}