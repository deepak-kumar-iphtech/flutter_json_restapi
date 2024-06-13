// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:json_app/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    super.key,
    required this.catalog,
    required Item item,
  });
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Hero(
                tag: Key(catalog.itemId),
                child: Image.network(catalog.itemImage)),
            Text(catalog.itemName),
            Text(catalog.itemDesc)
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(catalog.itemPrice),
              ElevatedButton(onPressed: () {}, child: const Text("Buy")),
            ],
          ),
        ));
  }
}
