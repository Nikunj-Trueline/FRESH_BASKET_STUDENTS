import 'package:flutter/material.dart';

Widget bodyForExplore({required BuildContext context}) {
  return const Scaffold(
    body: Center(
      child: Text("E X P L O R S C R E E N"),
    ),
  );
}

/*
Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
          crossAxisSpacing: 22,
          mainAxisSpacing: 22,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey,
                width: 0.6,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: const AssetImage("assets/images/oranges.jpg"),
                    //      height: MediaQuery.of(context).size.height * 0.1,
                    height: MediaQueryHelper.height * 150,
                    width: double.infinity,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Center(
                    child: Text(
                      'Herbal Drink'.toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
  );

 */
