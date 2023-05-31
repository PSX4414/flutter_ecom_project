import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/Core/constants.dart';
import 'package:flutter_ecom_project/Core/sizeconfig.dart';



class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            margin: EdgeInsets.symmetric(),
            // margin: EdgeInsets.all(getProportionateScreenWidth(20)),
            // padding: EdgeInsets.symmetric(
            //   horizontal: getProportionateScreenWidth(20),
            //   vertical: getProportionateScreenWidth(15),
            // ),

            decoration: BoxDecoration(
              color: Color(0xFF4A3298),
              // borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset("assets/images/ecomtest.png",
                fit:BoxFit.fill
            ),

          ),




          Container(
            height: 100,
              child: ProductCategories())
        ],
      ),
    );

  }
}

class ProductCategories extends StatelessWidget {
  // const ProductCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Categories
          Expanded(

            child: Column(
              children: [
                Container(
                    // padding: EdgeInsets.all(getProportionateScreenWidth(2)),
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                            Icons.category,
                          size: 35,
                        ),
                        // SizedBox(height: 2),
                        // icon// text
                      ],
                    ),
                ),
                Text("Category"),
              ],

            ),
          ),
          Expanded(

            child: Column(
              children: [
                Container(
                  // padding: EdgeInsets.all(getProportionateScreenWidth(2)),
                  height: 80,
                  width: 50,
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.flight,
                        size: 35,
                      ),
                      // SizedBox(height: 2),
                      // icon// text
                    ],
                  ),
                ),
                Text("Flight"),
              ],

            ),
          ),
          Expanded(

            child: Column(
              children: [
                Container(
                  // padding: EdgeInsets.all(getProportionateScreenWidth(2)),
                  height: 80,
                  width: 50,
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.request_page_outlined,
                        size: 35,
                      ),
                      // SizedBox(height: 2),
                      // icon// text
                    ],
                  ),
                ),
                Text("Bill"),
              ],

            ),
          ),
          Expanded(

            child: Column(
              children: [
                Container(
                  // padding: EdgeInsets.all(getProportionateScreenWidth(2)),
                  height: 80,
                  width: 50,
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.data_usage,
                        size: 35,
                      ),
                      // SizedBox(height: 2),
                      // icon// text
                    ],
                  ),
                ),
                Text("Data Plan"),
              ],

            ),
          ),
          Expanded(

            child: Column(
              children: [
                Container(
                  // padding: EdgeInsets.all(getProportionateScreenWidth(2)),
                  height: 80,
                  width: 50,
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.monetization_on,
                        size: 35,
                      ),
                      // SizedBox(height: 2),
                      // icon// text
                    ],
                  ),
                ),
                Text("Top Up"),
              ],

            ),
          ),
        ]


      // List.generate(
      //   categories.length,
      //       (index) => ProductCategoryCard(
      //     icon: categories[index]["icon"],
      //     text: categories[index]["text"],
      //     press: () {},
      //   ),
      // ),
    );
  }
}


