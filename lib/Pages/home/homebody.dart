import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/Core/constants.dart';
import 'package:flutter_ecom_project/Core/sizeconfig.dart';
import 'dart:math';

import 'package:flutter_ecom_project/Pages/home/homebar.dart';
import 'package:flutter_ecom_project/Pages/home/homeheader.dart';
import 'package:flutter_ecom_project/Pages/product/productfull.dart';


class HomeBody extends StatelessWidget {
  // const HomeBody({Key? key}) : super(key: key);
  const HomeBody({
    Key key,
    // @required this.svgSrc,
    this.numOfitem = 0,
    // @required this.press,
  }) : super(key: key);

  final int numOfitem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // color: Colors.white,
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          title: HomeBar(),
          pinned: true,
          expandedHeight: 400.0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              // color: Colors.redAccent,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Best Sale Product',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          flexibleSpace: const FlexibleSpaceBar(

            background: HomeHeader()
          ),
          collapsedHeight: 120,


        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    print('testtap');

                    // Navigator.pushNamed(context, ProductFull.routeName);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductFull()),
                    );

                  },
                  child: Container(
                    // color: index.isOdd ? Colors.white : Colors.black12,
                    height: 300.0,
                    width: 100,
                    child: Center(
                      // child: Text('$index', textScaleFactor: 5),
                      child: Image.asset("assets/images/ecomtest2.png"),

                    ),
                  ),
                ),
              );
            },
            // childCount: 4,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            childAspectRatio: 1.0,
          ),
        ),
      ]),
    );
  }
}



