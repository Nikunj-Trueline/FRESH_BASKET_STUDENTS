import 'package:flutter/material.dart';
import '../../../common/common_header_row.dart';
import '../../../common/common_sizebox.dart';
import 'custom_row_bestselling.dart';
import 'custom_row_exclusive.dart';
import 'heading_row.dart';
import 'middle_container_shop.dart';

class ShoppingBody extends StatefulWidget {
  const ShoppingBody({super.key});

  @override
  State<ShoppingBody> createState() => _ShoppingBodyState();
}

class _ShoppingBodyState extends State<ShoppingBody> {
  List images = [
    "assets/images/i3.png",
    "assets/images/header1.png",
    "assets/images/i1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  customHeaderRow(
                      header: "Surat, Gujarat",
                      path: "assets/images/location.png",
                      height: 30,
                      width: 30),
                  commonSizeBox(height: 10),
                  middleContainer(images: images, itemCount: images.length),
                  commonSizeBox(height: 20),
                  headingRow(
                      textForHeading: "Exclusive offers",
                      textForButton: "See all"),
                  commonSizeBox(height: 15),
                ],
              ),
              customRowForExclusive(context: context),
              commonSizeBox(height: 10),
              headingRow(
                  textForHeading: "Best Selling", textForButton: "See all"),
              customRowForBestSelling(context: context),
              headingRow(textForHeading: "Groceries", textForButton: "See all"),
              customRowForBestSelling(context: context),
            ],
          ),
        ),
      ),
    );
  }
}

/*
 Container(
                color: Colors.orange,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
 */
