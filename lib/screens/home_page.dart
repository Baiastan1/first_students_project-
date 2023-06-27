import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> task = ['Do homework', 'learn new words'];

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                  hintText: 'Напишите задачу', border: OutlineInputBorder()),
            ),
          ),
          SizedBox(height: 125),
          Container(
            height: 550,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Text(
                    '${task.first}',
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    '${task[1]}',
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                task.add(controller.text);
              });
            },
            child: Text('Add'),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              task.remove(controller.text);
            },
            child: Text('Remove'),
          )
        ],
      ),
    );
  }
}
