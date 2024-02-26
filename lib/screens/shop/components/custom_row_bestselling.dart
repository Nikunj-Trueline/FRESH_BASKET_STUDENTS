import 'package:flutter/material.dart';
import '../../../mediaquery/mediaqueryhelper.dart';
import '../../shop/components/product_card_shop.dart';

Widget customRowForBestSelling({required BuildContext context}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      // scrollDirection: Axis.horizontal,
      children: [
        //   productCard(context: context),
        for (int i = 1; i <= 10; i++)
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: MediaQueryHelper.height * 220,
              width: MediaQueryHelper.width * 430,
              // color: Colors.black87,
              child: productCard(context: context),
            ),
          ),
      ],
    ),
  );
}
