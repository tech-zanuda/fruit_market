import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/components/colors.dart';
import 'package:fruit_market/components/icons.dart';
import 'package:intl/intl.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.type});
  final String name;
  final String type;
  final String image;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 15),
          padding: const EdgeInsets.all(15),
          width: 165,
          height: 250,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: SmoothRectangleBorder(
              borderRadius:
                  SmoothBorderRadius(cornerRadius: 20, cornerSmoothing: 0.6),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  print('Clicked favorite $name');
                },
                icon: heartDefaultIcon,
                style: IconButton.styleFrom(fixedSize: const Size(25, 25)),
              ),
              Image.asset(image),
              Text(
                name,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              Text(
                type,
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: greyColor),
              ),
              Text(
                NumberFormat.currency(symbol: '\$').format(price),
                style: const TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ],
    );
  }
}
