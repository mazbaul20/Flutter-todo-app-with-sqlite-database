import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/Style.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo App')),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: AppInputDecoration("Enter Task"),
                      onSubmitted: (_)=> (),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Add'),
                      style: AppButtonStyle(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 90,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  // todo variable _todos[index]
                  return Card(
                    child: SizeBox50(
                      Row(
                        children: [
                          Expanded(flex: 5, child: Text("${index + 1}")),
                          Expanded(
                            flex: 10,
                            child: Checkbox(
                              value: true,
                              onChanged: (_) => (),
                            ),
                          ),
                          Expanded(
                            flex: 75,
                            child: Text(
                              "Todo title",
                              style: TextStyle(
                                decoration:
                                TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: TextButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
