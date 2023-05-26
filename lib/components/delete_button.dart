import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({required this.onPressed, required this.size, key})
      : super(key: key);

  final VoidCallback onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      iconSize: size,
      color: Colors.red,
      onPressed: onPressed,
    );
  }
}
