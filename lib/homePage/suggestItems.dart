import 'package:flutter/material.dart';
import 'package:mobile_shop/catalogePage/designCardPhone.dart';
import 'package:mobile_shop/modul/modul.dart';

class SuggestItems extends StatefulWidget {
  const SuggestItems({super.key});

  @override
  State<SuggestItems> createState() => _SuggestItemsState();
}

class _SuggestItemsState extends State<SuggestItems> {
  @override
  Widget build(BuildContext context) {
    suggested_items.shuffle();
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.012,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            childAspectRatio: 0.77),
        itemCount: suggested_items.length,
        itemBuilder: (context, index) {
          return CardPhone(
            namePhone: suggested_items[index][0],
            price: suggested_items[index][1],
            imagePhone: suggested_items[index][2],
            colorPhone: suggested_items[index][3],
          );
        },
      ),
    );
  }
}
