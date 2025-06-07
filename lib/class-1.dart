import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),

        //Body Raw wise
        /* body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:  Row(
          children: [
            Text('This is Row', style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),),
            SizedBox(
              width: 15,
            ),

            Text('This is Row', style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),),
            SizedBox(
              width: 15,
            ),

            Text('This is Row', style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),),
            SizedBox(
              width: 15,
            ),

            Text('This is Row', style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),),
            SizedBox(
              width: 15,
            ),
          ],
        ),

      )*/

        //Body Column Wise
        body: SingleChildScrollView(
            child: Center(  //use center here for align all items center
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, //its work column wise
                  children: [
                    InkWell(
                      /*onTap: (){
                print('its work');
              },*/

                      /*onDoubleTap: (){
                print('Double tap me');
              },*/

                      /* onLongPress: (){
                print('Tight hug plz');
                },*/
                        child: Icon(
                          Icons.add,
                          size: 50,
                          color: Colors.red,
                        )),
                    IconButton(
                        onPressed: () {
                          print('Content deleted');
                        },
                        icon: Icon(Icons.delete)),
                    TextButton(
                        onPressed: () {
                          print("Ahh its hard");
                        },
                        child: Text(
                          "Press me",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'this is column',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                )
            )));
  }
}
