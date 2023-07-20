import 'package:coffee_app/core/utils/colors.dart';
import 'package:coffee_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Container(
    decoration: BoxDecoration(
    color:AppColors.kLoginTextFieldColor.withOpacity(0.6),
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
    showSelectedLabels: false,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.shifting,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
    currentIndex:0,
    onTap: (int index) {

    },
    items: const [
    BottomNavigationBarItem(
    icon: Icon(Icons.house),
    label: 'Home',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.bookmark),
    label: 'Bookmark',
    ),
    ],
    ),
    ),
      body: SafeArea(child: HomeViewBody(),),
    );
  }
}
