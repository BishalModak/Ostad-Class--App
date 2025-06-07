import 'package:flutter/material.dart';

class ModuleMedia extends StatefulWidget {
  const ModuleMedia({super.key});

  @override
  State<ModuleMedia> createState() => _ModuleMediaState();
}

class _ModuleMediaState extends State<ModuleMedia> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    //double screenWidth = MediaQuery.of(context).size.width;   //EBhabe o lekha jay
    double fontSize = screenSize.width > 600 ? 32:18;
    return Scaffold(
      appBar: AppBar(title: Text('Media Query')),

      //its show the background color
      /*body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Colors.cyan,
        child: Column(
        Content)*/
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: screenSize.width * 0.2,
              height: screenSize.height * 0.3,
              color: Colors.red,
            ),
          ),

          Text('This is Medea Query text', style: TextStyle(
            fontSize: fontSize,
          ),),

          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: List.generate(30, (index){
                return Container(
                color: Colors.red,
                  height: 50,
                  width: 50,
    );
            }
            ),
          ),


          //it is for making layout
          /*LayoutBuilder(builder: (context,constrains){
            if(constrains.maxWidth >600){
              return GridView.count(crossAxisCount: 3);
            }
            else{
              return GridView.count(crossAxisCount: 2);
            }

          })*/


        ],
      ),
    );
  }
}
