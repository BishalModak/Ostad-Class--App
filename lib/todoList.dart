import 'package:flutter/material.dart';

class todoList extends StatefulWidget {
  const todoList({super.key});

  @override
  State<todoList> createState() => _todoListState();
}

class _todoListState extends State<todoList> {
  List<Map<String, dynamic>> tasks = [];
  bool showActiveTask = true;

  void _addTask(String task) {
    setState(() {
      tasks.add({'task': task, 'completed': false});
    });
    Navigator.pop(context);
  }

  void _editTask(int index, String updateTask) {
    setState(() {
      tasks[index]['task'] = updateTask;
    });
    Navigator.pop(context);
  }

  void _showTaskDialogue({int? index}) {
    TextEditingController _taskcontroller = TextEditingController(
      text: index != null ? tasks[index]['task'] : '',
    );

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(
              index != null ? 'Edit Task' : 'Add Task',
              style: TextStyle(color: Colors.black),
            ),
            content: TextField(
              controller: _taskcontroller,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(hintText: 'Enter Task'),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                onPressed: () {
                  if (_taskcontroller.text.trim().isNotEmpty) {
                    if (index != null) {
                      _editTask(index, _taskcontroller.text);
                    } else {
                      _addTask(_taskcontroller.text);
                    }
                  }
                },
                child: Text('Save'),
              ),
            ],
          ),
    );
  }

  void _toggleTaskStatus(int index) {
    setState(() {
      tasks[index]['completed'] = !tasks[index]['completed'];
    });
  }

  void _deleteTaskStatus(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  int get activeCount => tasks.where((task) => !task['completed']).length;

  int get completedCount => tasks.where((task) => task['completed']).length;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filterTasks =
        tasks.where((task) => task['completed'] != showActiveTask).toList();
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(title: Text('Todo App')),
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    showActiveTask = true;
                  });
                },
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 4),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Text(
                            activeCount.toString(),
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Active',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    showActiveTask = false;
                  });
                },
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 4),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Text(
                            completedCount.toString(),
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Complated', // Kept original spelling
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filterTasks.length,
              itemBuilder: (context, index) {
                int actualIndex = tasks.indexOf(filterTasks[index]);

                return Dismissible(
                  key: Key(UniqueKey().toString()),
                  background: Container(
                    color: Colors.green,
                    child: Icon(Icons.check_box, color: Colors.white),
                  ),
                  secondaryBackground: Container(
                    color: Colors.red,
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    if (direction == DismissDirection.startToEnd) {
                      _toggleTaskStatus(actualIndex);
                    } else {
                      _deleteTaskStatus(actualIndex);
                    }
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(
                        filterTasks[index]['task'],
                        style: TextStyle(
                          fontSize: 16,
                          decoration:
                              filterTasks[index]['completed']
                                  ? TextDecoration.lineThrough
                                  : null,
                        ),
                      ),
                      leading: Checkbox(
                        shape: CircleBorder(),
                        value: filterTasks[index]['completed'],
                        onChanged: (value) => _toggleTaskStatus(actualIndex),
                      ),
                      trailing: IconButton(
                        onPressed: () => _showTaskDialogue(index: actualIndex),
                        icon: Icon(Icons.edit),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showTaskDialogue(),
        child: Icon(Icons.add),
      ),
    );
  }
}
