// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:json_app/models/catalog.dart';
import 'package:json_app/pages/home_page_detail.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.item,
  });
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
      child: Card(
          elevation: 3.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeDetailPage(
                                  catalog: item,
                                  item: item,
                                )));
                  },
                  child: Container(
                    //padding: EdgeInsets.all(32.0),
                    height: 80,
                    width: 100,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Hero(
                      tag: Key(item.itemId),
                      child: Image.network(item.itemImage),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.itemName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: AutofillHints.newPassword,
                        ),
                      ),
                      Text(
                        item.itemDesc,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${item.itemPrice}",
                            style: const TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  overlayColor: Colors.white),
                              onPressed: () {},
                              child: const Text(
                                "Buy",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
