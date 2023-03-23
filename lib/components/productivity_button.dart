import 'package:flutter/material.dart';

class ProductivityButton extends StatelessWidget {
  const ProductivityButton({
    super.key,
    required this.color,
    required this.text,
    required this.size,
    required this.onPressed,
  });

  final Color color;
  final String text;
  final double size;
  // Dispara quando o botão for pressionado
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          width: 20,
          color: Colors.orange,
        ),
      ),
      onPressed: onPressed,
      child: Text('Teste'),
    );
  }
}

// return Material(
//       borderRadius: BorderRadius.circular(20),
//       clipBehavior: Clip.antiAlias,
//       child: MaterialButton(
//         minWidth: size,
//         color: color,
//         onPressed: onPressed,
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
