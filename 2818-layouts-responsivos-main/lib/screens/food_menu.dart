import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/food_item.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({Key? key}) : super(key: key);

  final List<Object> items = comidas;
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Text(
              'Menu',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Caveat', fontSize: 32),
            ),
          ),
          // SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          //   return FoodItem(itemTitle: items[index] , itemPrice: itemPrice, imageURI: imageURI)
          // },))
        ],
      ),
    );
  }
}
