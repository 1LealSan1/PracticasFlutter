// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:convert';

class ViewPage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica 12: pokedex'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/pokedex.json'),
            initialData: [],
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              var showData = json.decode(snapshot.data.toString());
              return ListView.builder(
                  itemCount: showData.length,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                      title: Text(showData[index]['name']),
                      subtitle: Text(showData[index]['type'].toString()),
                    );
                  });
            }),
      ),
    );
  }
}
