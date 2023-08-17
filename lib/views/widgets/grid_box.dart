import 'package:flutter/material.dart';

class GridContainer extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  final Image image;
  final String name;
  const GridContainer({
    super.key,
    required this.color,
    required this.onPressed,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              image,
              const SizedBox(
                width: 12,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
