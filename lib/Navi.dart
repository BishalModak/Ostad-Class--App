import 'package:fluter_basic/Module_9_Class-3.dart';
import 'package:flutter/material.dart';
import 'package:fluter_basic/GridView.dart';
import 'package:fluter_basic/class-1.dart';
import 'package:fluter_basic/listView.dart';
import 'package:fluter_basic/mediaQuery.dart';
import 'package:fluter_basic/module-9_todo.dart';
import 'package:fluter_basic/stateful_Classs.dart';
import 'module_9_class-2.dart';

class Navi extends StatelessWidget {
  const Navi({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate width for 3 buttons per row with spacing
    final double buttonWidth = MediaQuery.of(context).size.width / 3;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Page', style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              children: [
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: const Text("Home"),
                  ),
                ),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => list()),
                      );
                    },
                    child: const Text("List View"),
                  ),
                ),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => gridView()),
                      );
                    },
                    child: const Text("Grid View"),
                  ),
                ),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => statfulclass()),
                      );
                    },
                    child: const Text("Stateful"),
                  ),
                ),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => todoApp()),
                      );
                    },
                    child: const Text("Todo App"),
                  ),
                ),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ModuleMedia()),
                      );
                    },
                    child: const Text("Media Query"),
                  ),
                ),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => moduleNineclassTwo()),
                      );
                    },
                    child: const Text("ApectRation and Sizebox"),
                  ),
                ),

                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => extraClass()),
                      );
                    },
                    child: const Text("App drawer"),
                  ),
                ),

                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Back"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
