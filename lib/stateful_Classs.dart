import 'package:fluter_basic/widgets/cityInfo.dart';
import 'package:flutter/material.dart';

class statfulclass extends StatefulWidget {
  const statfulclass({super.key});

  @override
  State<statfulclass> createState() => _statfulclassState();
}

class _statfulclassState extends State<statfulclass> {
  int counter = 0;

  @override
  void initState() {  //it is use for updateed post show
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 70, color: Colors.deepPurple),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,

                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 50, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 50),

                SizedBox(
                  width: 120,

                  child: ElevatedButton(
                    onPressed: () {
                      //SetState only use in stateful that's why its wanna be update

                      setState(() {
                        counter--;
                      });
                      print(counter);
                    },
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 50, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height: 20,),



            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    cityInfo(cityName: 'New York', image: 'https://i.natgeofe.com/k/5b396b5e-59e7-43a6-9448-708125549aa1/new-york-statue-of-liberty.jpg',),
                    SizedBox(width: 10,),
                    cityInfo(cityName: 'Toronto', image: 'https://cdn.britannica.com/35/100235-050-CE3936EE/view-CN-Tower-Toronto-skyline-observation-deck.jpg'),
                    SizedBox(width: 10,),

                    cityInfo(cityName: 'Dhaka', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjJHRxCpieU4BoE9O5MFA4tu_XQLxtG2N98g&s',),
                    SizedBox(width: 10,),
                  ],
                )
            )

          ],
        ),
      ),
    );
  }
}

