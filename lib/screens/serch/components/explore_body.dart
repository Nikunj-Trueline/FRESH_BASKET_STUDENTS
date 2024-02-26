import 'package:flutter/material.dart';

class ExploreBody extends StatefulWidget {
  const ExploreBody({super.key});

  @override
  State<ExploreBody> createState() => _ExploreBodyState();
}

class _ExploreBodyState extends State<ExploreBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("E X P L R E S C R E E N "),
    ));
  }
}

/*
SizedBox(
        height: double.infinity,
        // color: Colors.deepPurple,
        child: Column(
          children: [
            SizedBox(
              height: MediaQueryHelper.height * 160,
              // color: Colors.grey,
              child: Column(
                children: [
                  customHeaderRow(
                      header: "Find Products",
                      path: "assets/images/Carrot1.png",
                      height: 50,
                      width: 50),
                  commonSizeBox(height: 10),
                ],
              ),
            ),
            SizedBox(
              height: MediaQueryHelper.height * 670,
              //color: Colors.green,
              child: bodyForExplore(context: context),
            )
          ],
        ),
      ),
 */
