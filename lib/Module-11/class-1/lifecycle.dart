import 'package:flutter/material.dart';
import 'alart.dart';

import 'lifecyTest.dart';

class lifecycle extends StatefulWidget {
  const lifecycle({super.key});

  @override
  State<lifecycle> createState() => _lifecycleState();
}

class _lifecycleState extends State<lifecycle> {
  @override
  void initState() { //app jokhon open korbo tokhon start hobe
    // TODO: implement initState
    super.initState();
    print('from initstate');
  }

  //setIstate is use for update the widget

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependensis');
  }

  @override
  void dispose() { // jokhon page theke ber hobo tokhon call hoy
    // TODO: implement dispose
    super.dispose();
    print('Dispose called');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Life Cycle", style: TextStyle(
        color: Colors.white,

      ),),
      backgroundColor: Colors.blue,
    ),
      body: Center(
        child: Wrap(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>lifecyTest()));
            }, child: Text('Next page')),
            SizedBox(width: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>alart()));
            }, child: Text('Alart')),
          ]
        )


      ),
    );
  }
}
