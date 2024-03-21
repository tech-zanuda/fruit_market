import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/components/colors.dart';
//import 'package:fruit_market/components/nav_bar.dart';
import 'package:fruit_market/components/products.dart';
import 'package:fruit_market/components/icons.dart';
import 'package:fruit_market/components/product_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //bottomNavigationBar: bottomNavBar,
        body: Padding(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: SingleChildScrollView(
        child: SafeArea(
            left: false,
            right: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top padding
                const SizedBox(
                  height: 30,
                ),
                // Top row of widgets
                Row(
                  children: <Widget>[
                    // Avatar container
                    Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Theme.of(context).primaryColorLight,
                        shape: SmoothRectangleBorder(
                          borderRadius: SmoothBorderRadius(
                              cornerRadius: 10, cornerSmoothing: 0.6),
                        ),
                      ),
                      // Avatar picture
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset('assets/images/avatar.png'),
                      ),
                    ),
                    // Padding avatar - greeting text
                    const SizedBox(
                      width: 14,
                    ),
                    // Greeting text
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi AdSSCode!',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Lets get some item!',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    // Padding between greeting text and cart button
                    const Expanded(
                      child: SizedBox(),
                    ),
                    // Badge on the cart icon
                    Badge.count(
                      offset: const Offset(-3, 3),
                      backgroundColor: Theme.of(context).primaryColor,
                      count: 2,
                      // Cart icon button
                      child: IconButton(
                          onPressed: () {
                            print('Cart Icon Button');
                          },
                          icon: cartDefaultIcon),
                    )
                  ],
                ),
                // Padding
                const SizedBox(
                  height: 30,
                ),
                // Row with search bar and filter
                Row(
                  children: [
                    // Search bar
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        width: 245,
                        height: 62,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: SmoothRectangleBorder(
                            borderRadius: SmoothBorderRadius(
                                cornerRadius: 20, cornerSmoothing: 0.6),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                        child: SearchBar(
                          shadowColor: const MaterialStatePropertyAll(
                              Colors.transparent),
                          backgroundColor: const MaterialStatePropertyAll(
                              Colors.transparent),
                          surfaceTintColor: const MaterialStatePropertyAll(
                              Colors.transparent),
                          overlayColor: const MaterialStatePropertyAll(
                              Colors.transparent),
                          leading: searchIcon,
                          hintText: 'Search item...',
                          textStyle: const MaterialStatePropertyAll(TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.only(right: 20, left: 20)),
                        ),
                      ),
                    ),
                    // Padding between search bar and filter
                    const SizedBox(
                      width: 24,
                    ),
                    // Filter
                    FilledButton(
                      style: FilledButton.styleFrom(
                        fixedSize: const Size(62, 62),
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {
                        print('Cart Icon Button');
                      },
                      child: filterIcon,
                    ),
                  ],
                ),
                // Padding
                const SizedBox(
                  height: 37,
                ),
                // Popular item text
                const Text(
                  'Popular item',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // Padding
                const SizedBox(
                  height: 14,
                ),
                // List View popular items
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 270),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductItem(
                            name: productList[index].name,
                            type: productList[index].type,
                            image: productList[index].image,
                            price: productList[index].price);
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      itemCount: productList.length),
                ),
                // Padding
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Recent shop',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // Padding
                const SizedBox(
                  height: 14,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  width: 330,
                  height: 117,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/strawberry.png'),
                      const SizedBox(
                        width: 30,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Strawberry',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Fruit',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: greyColor),
                          ),
                          Text(
                            '\$18.99',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: primaryColor),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    ));
  }
}
