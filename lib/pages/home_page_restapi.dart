import 'package:flutter/material.dart';
import 'package:json_app/models/user.dart';
import 'package:json_app/services/user_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Rest API Call",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

            //final imageUrl = user['picture']['thumbnail'];
            return ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text(user.name.last),
              subtitle: Text(user.email),
            );
          }),
    );
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
