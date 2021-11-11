// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:ffi';
import 'dart:html';
import 'dart:async';
import 'package:http/src/response.dart';
import 'package:awesomeapp/bg_image.dart';
import 'package:awesomeapp/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TextEditingController _nameController= TextEditingController();
  //var myText="Change me";
  
  var url= "https://jsonplaceholder.typicode.com/photos";
  

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData()async{
    var res = http.get(Uri.https('https://jsonplaceholder.typicode.com/photos', 'api/people'));
    
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
      ),
      drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          //myText=_nameController.text;
          //setState(() {});
        },
        child: Icon(Icons.refresh),
        ),  
    );
  }
}
