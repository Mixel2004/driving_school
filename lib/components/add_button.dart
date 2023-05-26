import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({required this.onPressed, required this.size, super.key});

  final VoidCallback onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add),
      iconSize: size,
      color: Colors.green,
      onPressed: onPressed,
    );
  }
}
