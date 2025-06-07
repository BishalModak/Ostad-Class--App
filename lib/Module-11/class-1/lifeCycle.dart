import 'package:fluter_basic/Module-11/class-1/lifeCycleTest.dart';
import 'package:flutter/material.dart';
class lifeCycle extends StatefulWidget {
  const lifeCycle({super.key});

  @override
  State<lifeCycle> createState() => _lifeCycleState();
}

class _lifeCycleState extends State<lifeCycle> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Initstate open');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('It is dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Cycle'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context)=> lifeCycleTest())  
          );
        }, child: Text('Next page'))
      ),
    );
  }
}
