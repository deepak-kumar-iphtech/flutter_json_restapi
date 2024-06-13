import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_app/models/catalog.dart';
import 'package:json_app/widgets/Item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 3));

    ///Loading data
    final loadData = await rootBundle.loadString("assets/files/catalog.json");

    ///Decoding data
    final decodeData = jsonDecode(loadData);

    /// Mapping json data with model
    var productsData = decodeData["products"];
    Catalog.item = List.from(productsData)
        .map<Item>((item) => Item.fromJson(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: (Catalog.item.isNotEmpty)
            ? ListView.builder(
                itemCount: Catalog.item.length,
                itemBuilder: (context, index) {
                  final products = Catalog.item[index];
                  // final image = products['name'];

                  return ItemWidget(
                    item: products,
                  );
                })
            : const CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {},
          child: const Icon(
            CupertinoIcons.cart,
            color: Colors.amber,
          )),
    );
  }
}
