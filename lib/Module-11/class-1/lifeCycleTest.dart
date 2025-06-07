import 'package:flutter/material.dart';
class lifeCycleTest extends StatefulWidget {
  const lifeCycleTest({super.key});

  @override
  State<lifeCycleTest> createState() => _lifeCycleTestState();
}

class _lifeCycleTestState extends State<lifeCycleTest> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Initstate from page-2 open');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('It is dispose from page-1');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page-2'),
      ),
    );
  }
}
