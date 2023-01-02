import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
    'https://static.skyassets.com/contentstack/assets/blt143e20b03d72047e/blt026849bb80760305/6319d979c1a0e62da40cec4e/Carousel_iPhone14Plus_Blue_Placement02-PreOrder.png',
    'https://eg.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/66/626272/1.jpg?0894',
    'https://static.skyassets.com/contentstack/assets/blt143e20b03d72047e/blt026849bb80760305/6319d979c1a0e62da40cec4e/Carousel_iPhone14Plus_Blue_Placement02-PreOrder.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See All',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: ((context, index) {
              return SingleProduct(image: list[index]);
            }),
          ),
        )
      ],
    );
  }
}
