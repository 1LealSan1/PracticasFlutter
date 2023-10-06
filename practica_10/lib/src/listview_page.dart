// ignore_for_file: unnecessary_string_interpolations, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  final List<String> _clasesPokemon = [
    'Normal',
    'Fighting',
    'Flying',
    'Poison',
    'Ground',
    'Rock',
    'Bug',
    'Ghost',
    'Steel',
    'Fire',
    'Water',
    'Grass',
    'Electric',
    'Psychic',
    'Ice',
    'Dragon',
    'Dark',
    'Fairy',
    'Unknown',
    'Shadow'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Practica 10 - Pika pika chu'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: ListView.builder(
          itemCount: _clasesPokemon.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {},
              title: Text('${_clasesPokemon[index]}'),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLc3dIigZFG64N8Fpc8RsQuBkBZKhOTYWuCg&usqp=CAU'),
                radius: 16.0,
              ),
              trailing: const Icon(Icons.arrow_right),
            );
          },
        ));
  }
}
