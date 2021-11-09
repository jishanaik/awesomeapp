import 'dart:ffi';
import 'package:awesomeapp/bg_image.dart';
import 'package:awesomeapp/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController= TextEditingController();
  var myText="Change me";
  @override
  void initState() {
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child:  Column(
              children: [
                BgImage(),
                Text(
                  myText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter something here",
                      labelText: "Name"
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText=_nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
        ),  
    );
  }
}
