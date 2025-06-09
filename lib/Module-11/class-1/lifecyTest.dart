import 'package:flutter/material.dart';
class lifecyTest extends StatefulWidget {
  const lifecyTest({super.key});

  @override
  State<lifecyTest> createState() => _lifecyTestState();
}

class _lifecyTestState extends State<lifecyTest> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Initstate from page 2');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('Dispose from page-2');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Life Cycle 2', style: TextStyle(
        color: Colors.white
      ),),
      backgroundColor: Colors.blue,
    ),
    );
  }
}
