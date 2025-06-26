import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class restAPI extends StatefulWidget {
  const restAPI({super.key});

  @override
  State<restAPI> createState() => _restAPIState();
}

class _restAPIState extends State<restAPI> {
  List users = [];
  bool isloading = false;

  Future<void> fatchUsers() async {
    try {
      setState(() {
        isloading = true;
      });
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users'),
        headers: {'Accept': 'application/json'},
      );

      log('Response Status Code: ${response.statusCode}');
      log('Response Body: ${response.body}');

      if (response.statusCode == 200) {
        setState(() {
          users = jsonDecode(response.body);
          isloading = false;
        });
      } else {
        setState(() {
          isloading = false;
        });
        throw Exception(
          'Failed to load users. Status code: ${response.statusCode}',
        );
      }
    } catch (e) {
      setState(() {
        isloading = false;
      });
      log('An error occurred: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fatchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User List using API')),
      body:
          isloading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurpleAccent,
                      child: Text(
                        user['name'][0], // No change needed here, this is correct.
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    title: Text(user['name']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          'UserName: ${user['username']}',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'Email: ${user['email']}',
                          style: TextStyle(color: Colors.grey),
                        ),
                        // Corrected the key from '[phone]' to 'phone'
                        Text(
                          'Phone: ${user['phone']}',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'Website: ${user['website']}',
                          style: TextStyle(color: Colors.grey),
                        ),
                        // Corrected the key from 'adress' to 'address'
                        Text(
                          'Address: ${user['address']['street']}, ${user['address']['city']}',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              ),
    );
  }
}
