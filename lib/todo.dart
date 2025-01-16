import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(
          child: Text("todo"),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width:kIsWeb ? MediaQuery.of(context).size.width*0.5:double.infinity,
                  padding: EdgeInsets.only(top: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300.0),
                  child: Icon(Icons.access_alarm,color: Colors.amber),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
