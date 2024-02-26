import 'package:flutter/material.dart';
import '../../../mediaquery/mediaqueryhelper.dart';
import 'custom_row_for_shop.dart';

Widget middleContainer({required int itemCount, required List images}) {
  return Padding(
    padding: const EdgeInsets.only(left: 18, right: 18),
    child: Container(
        height: MediaQueryHelper.height * 160,
        width: MediaQueryHelper.width * double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.amber.shade50,
              blurRadius: 10,
              offset: const Offset(2, 3),
            ),
          ],
          border: Border.all(
              width: 0.1, color: Colors.black, style: BorderStyle.solid),

          borderRadius: BorderRadius.circular(10),
          //color: Colors.purple,
        ),
        child: PageView.builder(
          itemCount: itemCount,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Center(
                  child: SizedBox(
                      height: MediaQueryHelper.height * 130,
                      child: Image.asset(images[index])),
                ),
                const Spacer(),
                customRowForShop(currentIndex: index)
              ],
            );
          },
        )),
  );
}
