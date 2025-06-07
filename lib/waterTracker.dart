import 'package:flutter/material.dart';
class waterTracker extends StatefulWidget {
  const waterTracker({super.key});

  @override
  State<waterTracker> createState() => _waterTrackerState();
}

class _waterTrackerState extends State<waterTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Tracker', style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),),
      ),

      body: Column(
        children: [
          Container(
            
            child: Column(
              children: [
                Text("Today's InTanl", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(height: 10,),
                Text('2000ml', style: TextStyle(
                  fontSize: 28,

                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
