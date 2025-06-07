import 'package:flutter/material.dart';

class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        backgroundColor: Colors.amber,
      ),

      //List View part

      // body: ListView(
      //   children: [
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.black,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.green,
      //     ),
      //
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.blue,
      //     ),
      //
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.tealAccent,
      //     ),
      //
      //
      //   ],
      // ),\

      //ListView.builder

      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Card(
            //use card here for background shadow
            child: ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete),
              title: Text('Bishal'),
              subtitle: Text("01302974 $index"),
            ),
          );
        },
      ),
    );
  }
}
