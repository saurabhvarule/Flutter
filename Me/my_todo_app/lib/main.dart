import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter To-Do List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Task> tasks = [];
  List<Task> allTasks = [];
  TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'To-Do List',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '${tasks.length} ${tasks.length == 1 ? 'Task' : 'Tasks'}',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions result) {
              setState(() {
                if (result == FilterOptions.completed) {
                  tasks = allTasks.where((task) => task.isCompleted).toList();
                } else if (result == FilterOptions.incomplete) {
                  tasks = allTasks.where((task) => !task.isCompleted).toList();
                } else {
                  tasks = List.from(allTasks);
                }
              });
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<FilterOptions>>[
              const PopupMenuItem<FilterOptions>(
                value: FilterOptions.all,
                child: Text('All Tasks'),
              ),
              const PopupMenuItem<FilterOptions>(
                value: FilterOptions.completed,
                child: Text('Completed Tasks'),
              ),
              const PopupMenuItem<FilterOptions>(
                value: FilterOptions.incomplete,
                child: Text('Incomplete Tasks'),
              ),
            ],
          ),
        ],
      ),
      drawer: AppDrawer(), // Add the app drawer
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return TaskItem(
                    task: tasks[index],
                    onDelete: () {
                      setState(() {
                        allTasks.remove(tasks[index]);
                        tasks.removeAt(index);
                      });
                    },
                    onToggle: () {
                      setState(() {
                        tasks[index].toggle();
                      });
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: taskController,
                decoration: InputDecoration(
                  labelText: 'Add Task',
                ),
                onSubmitted: (value) {
                  setState(() {
                    Task newTask = Task(title: value);
                    tasks.add(newTask);
                    allTasks.add(newTask);
                    taskController.clear();
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Example of navigating to the login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Go to Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Navigation',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              // Add navigation to settings page or any other desired action
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    final String apiUrl =
        'https://example.com/api/login'; // Replace with your actual API endpoint

    final Map<String, dynamic> data = {
      'username': usernameController.text,
      'password': passwordController.text,
    };

    final http.Response response = await http.post(
      Uri.parse(apiUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      // Successful login
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final String token =
          responseData['token']; // Retrieve the authentication token
      // Handle the token as needed (e.g., store it in a secure manner, navigate to the next screen, etc.)
      print('Login successful. Token: $token');
    } else {
      // Failed login
      print('Login failed. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class Task {
  final String title;
  bool isCompleted;

  Task({required this.title, this.isCompleted = false});

  void toggle() {
    isCompleted = !isCompleted;
  }
}

enum FilterOptions {
  all,
  completed,
  incomplete,
}

class TaskItem extends StatelessWidget {
  final Task task;
  final VoidCallback onDelete;
  final VoidCallback onToggle;

  TaskItem({
    required this.task,
    required this.onDelete,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.title,
        style: TextStyle(
          decoration: task.isCompleted ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(task.isCompleted
                ? Icons.check_box
                : Icons.check_box_outline_blank),
            onPressed: onToggle,
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
