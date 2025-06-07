import 'package:flutter/material.dart';
class todoApp extends StatefulWidget {
  const todoApp({super.key});

  @override
  State<todoApp> createState() => _todoAppState();
}

class _todoAppState extends State<todoApp> {
  void _addTask(){
    if(taskcontroller.text.isNotEmpty){
      setState(() {
        _task.add(taskcontroller.text);
        taskcontroller.clear();
      });

    }
  }

  void _deleteTask(int index){
    setState(() {
      _task.removeAt(index);
    });
  }

  List<String> _task=[];
  TextEditingController taskcontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo app'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: taskcontroller,
                  decoration: InputDecoration(
                      labelText: 'Enter Task',
                      border: OutlineInputBorder()
                  ),
                )),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: _addTask, child: Text('Add')),


              ],
            ),
            SizedBox(height: 20,),
            Expanded(child:  ListView.builder(
                itemCount: _task.length,
                itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      title: Text(_task[index]),
                      trailing: IconButton(onPressed:()=> _deleteTask(index), icon: Icon(Icons.delete), color: Colors.red,),
                    ),
                  );
                }))

          ],
        ),

      ),
    );
  }
}
