import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black38.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: TextFormField(
            textInputAction: TextInputAction.search,
            textAlign: TextAlign.left,
            decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Search Product',
                hintStyle: TextStyle(color: Colors.black54, fontSize: 28),
                prefixIconColor: Colors.black54,
                prefixIcon: Icon(Icons.search, size: 32, color: Colors.black87),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
          ),
        ),
      ),
    );
  }
}
