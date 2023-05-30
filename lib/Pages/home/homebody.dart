import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/Core/constants.dart';
import 'package:flutter_ecom_project/Core/sizeconfig.dart';
import 'dart:math';

import 'package:flutter_ecom_project/Pages/home/homebar.dart';
import 'package:flutter_ecom_project/Pages/home/homeheader.dart';

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
                child: Center(
                  child: Text('test'),
                ),
              ),
            ),
          ),
          flexibleSpace: const FlexibleSpaceBar(
              // title: Text('Best Sale Product',
              //   style: TextStyle(color: Colors.black)
              // ),
              // titlePadding: EdgeInsetsDirectional.only(
              //   // start: 0.0,
              //   bottom: 16.0,
              //   top: 16.0
              // ),
            background: HomeHeader()
          ),
          collapsedHeight: 100,


        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {





              return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                  child: Text('$index', textScaleFactor: 5),
                ),
              );
            },
            childCount: 20,
          ),
        ),
        // SliverList(
        //   delegate: SliverChildListDelegate(<Widget>[
        //   ]),
        // ),

      ]),
    );

    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [


              HomeBar(),
              HomeHeader()

            ],

          ),

        ));

  }
}



