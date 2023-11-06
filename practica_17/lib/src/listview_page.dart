// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last, no_leading_underscores_for_local_identifiers, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:practica_17/data/movies.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Map<String, dynamic>> pelis = [...movies];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 17 - Dismissed'),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
          itemCount: pelis.length,
          itemBuilder: (BuildContext context, int index) {
            final item = pelis[index];
            return Slidable(
              child: ListTile(
                title: Text(item['title_name']),
                subtitle: Text(item['genres']),
              ),
              actionPane: SlidableDrawerActionPane(),
              actions: [
                IconSlideAction(
                    caption: 'Agregar',
                    color: Colors.green,
                    icon: Icons.library_add,
                    onTap: () => onDismissed(index, 'Agregar')),
              ],
              secondaryActions: [
                IconSlideAction(
                    caption: 'Eliminar',
                    color: Colors.red,
                    icon: Icons.library_add,
                    onTap: () => onDismissed(index, 'Eliminar')),
              ],
            );
          }),
    );
  }

  onDismissed(int index, String accion) {
    setState(() {
      final _snackBar = SnackBar(content: Text('Accion: $accion'));
      pelis.removeAt(index);

      switch (accion) {
        case 'Agregar':
          ScaffoldMessenger.of(context).showSnackBar(_snackBar);
          break;
        case 'Eliminar':
          ScaffoldMessenger.of(context).showSnackBar(_snackBar);
          break;
      }
    });
  }
}
