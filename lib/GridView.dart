import 'package:flutter/material.dart';

class gridView extends StatelessWidget {
  const gridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        backgroundColor: Colors.tealAccent,
      ),

      //Grid View Count
      // body: GridView.count(
      //     crossAxisCount: 2,
      //   padding: const EdgeInsets.all(10),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: List.generate(50, (index){
      //     return Card(
      //       //use card here for background shadow
      //       child: ListTile(
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete),
      //         title: Text('Bishal'),
      //         subtitle: Text("01302974 $index"),
      //       ),
      //     );
      //   }),
      //
      // ),

      //Grid View Builder
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25,
        ),
        itemCount: 20,
        itemBuilder: (contex,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.phone, color: Colors.white),
                  const SizedBox(height: 10,),
                  const Text("Send Money",style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          );
        },


      ),
    );
  }
}
