import 'package:flutter/material.dart';

enum CardState { hidden, visible, guessed }

class CardItem {
  CardItem({
    required this.value,
    required this.imageAsset, // Cambia a imageAsset
    required this.color,
    this.state = CardState.hidden,
  });

  final int value;
  final String
      imageAsset; // Cambia a String para almacenar la ubicación de la imagen
  final Color color;
  CardState state;
}
