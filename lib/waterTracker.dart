import 'package:fluter_basic/widgets/addwaterbtn.dart';
import 'package:flutter/material.dart';


class waterTracker extends StatefulWidget {
  const waterTracker({super.key});

  @override
  State<waterTracker> createState() => _waterTrackerState();
}

class _waterTrackerState extends State<waterTracker> {
  int currentInTake = 0;
  final int goal = 2000;

  void waterAdd(int amount) {
    setState(() {
      currentInTake = (currentInTake + amount).clamp(0, goal);
    });
  }

  void resetWater() {
    setState(() {
      currentInTake = 0;
    });
  }




  @override
  Widget build(BuildContext context) {
    double progress = (currentInTake / goal).clamp(0.0, 1.0);
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          'Water Tracker',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Today's InTank",
                    style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '$currentInTake LTR',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    //its use for making a progressbar circle type
                    value: progress,
                    backgroundColor: Colors.grey,
                    color: Colors.blue,
                    strokeWidth: 10,
                  ),
                ),

                Text(
                  '${(progress * 100).toInt()}%',
                  style: TextStyle(fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),

            SizedBox(height: 40),

            Wrap(
              spacing: 20,
              children: [
                addWaterButton(amount: 200,
                  onClick: () => waterAdd(200),
                  icon: Icons.local_drink,),
                addWaterButton(amount: 500,
                  onClick: () => waterAdd(500),
                  icon: Icons.local_drink,),
                addWaterButton(amount: 1000,
                  onClick: () => waterAdd(1000),
                  icon: Icons.local_drink,),
              ],
            ),

            SizedBox(height: 40,),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red
                    ),
                    onPressed: () => resetWater(),
                    child: Text('Reset', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

