import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mini_proyecto02/models/card_item.dart';

class MemoryCard extends StatelessWidget {
  const MemoryCard({
    required this.card,
    required this.index,
    required this.onCardPressed,
    super.key,
  });

  final CardItem card;
  final int index;
  final ValueChanged<int> onCardPressed;

  void _handleCardTap() {
    if (card.state == CardState.hidden) {
      Timer(const Duration(milliseconds: 100), () {
        onCardPressed(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _handleCardTap,
      child: Card(
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color:
            card.state == CardState.visible || card.state == CardState.guessed
                ? card.color
                : null, // Establece el color en null para que no haya fondo
        child: Center(
          child: card.state == CardState.hidden
              ? Image.asset(
                  'assets/atras.png') // Reemplaza 'tu_imagen.png' con la ubicación de tu imagen
              : SizedBox.expand(
                  child: FittedBox(
                    child: Image.asset(
                      card.imageAsset,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
