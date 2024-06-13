import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 5.0,
              child: ListTile(
                leading: Image.network(
                  "https://images.unsplash.com/photo-1709178295038-acbeec786fcf?q=80&w=1227&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
                title: const Text("Iphone 15 Pro"),
                subtitle: const Text(
                  "Apple iphone 15th generation",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                trailing: const Text(
                  "\$999",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
