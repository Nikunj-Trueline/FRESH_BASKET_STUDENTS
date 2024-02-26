import 'package:flutter/material.dart';

Widget productCard({required BuildContext context}) {
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
            height: MediaQuery.of(context).size.height * 0.085,
            width: double.infinity,
          ),
          Text(
            'Herbal Drink'.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const Text(
            '25 ml, Price',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const Text(
                "\$1.55",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
