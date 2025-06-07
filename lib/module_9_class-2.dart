import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class moduleNineclassTwo extends StatefulWidget {
  const moduleNineclassTwo({super.key});

  @override
  State<moduleNineclassTwo> createState() => _moduleNineclassTwoState();
}

class _moduleNineclassTwoState extends State<moduleNineclassTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aspect Ration | Functional Sizebox')),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),


            //Resposinve part
            Container(
              height: 200.h,
              width: 300.w,
              color: Colors.blueGrey,
            ),

            Text('This is Responsive Text', style: TextStyle(
              fontSize: 30.sp,
              color: Colors.black
            ),),


            //Frational Sizebox Part
            FractionallySizedBox(
              widthFactor: 0.5, // eta full width ar 50% jayga nise
              child: ElevatedButton(onPressed: (){}, child: Text("Submit")),
            ),

            SizedBox(height: 20,),

            //Flexible Part
            Row(
              children: [
                Flexible(
                    flex: 2,
                    child: Container(
                        height: 100, color: Colors.yellow,
                    ),
                ),

                Flexible(
                  flex: 3, //its adjust the ratio
                    child: Container(
                        height: 100, color: Colors.purpleAccent,
                    )),
              ],
            ),

            Column(
              children: [
                Container(height: 100, color: Colors.blueAccent),

                Container(height: 50, color: Colors.lightGreenAccent),
              ],
            ),

            //Expended part
            //in this case we cant use Expand in where is row (When we use Expand it cant find any size thats why its shows error)
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Persion-1'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Persion-2'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Persion-3'),
                  ),
                ),
              ],
            ),



            // Aspect Ratio Part
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.orange),
            ),

            AspectRatio(
              aspectRatio: 9 / 16,
              child: Container(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
