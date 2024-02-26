import 'package:flutter/material.dart';
import 'package:fresh_basket/common/search_field.dart';
import 'package:fresh_basket/mediaquery/mediaqueryhelper.dart';
import 'common_sizebox.dart';

/*
Common row for header which is used in shop and explore
screen.
 */

Widget customHeaderRow(
    {required String header,
    required String path,
    double? height,
    double? width}) {
  return SizedBox(
    height: MediaQueryHelper.height * 178,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(path),
              height: height,
              width: width,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              header,
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'poppins',
                  color: Colors.black87),
            ),
          ],
        ),
        commonSizeBox(height: 20),
        const SearchField(),
      ],
    ),
  );
}
