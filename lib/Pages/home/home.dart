import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/Core/sizeconfig.dart';
import 'package:flutter_ecom_project/Pages/home/homebody.dart';
import 'package:flutter_ecom_project/Pages/home/homecomponents.dart';


class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
  static String routeName = "/home";


  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            backgroundColor: Colors.black12,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Voucer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_membership_outlined),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
