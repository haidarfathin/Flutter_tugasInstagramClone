import 'package:flutter/material.dart';

class CircularProfile extends StatelessWidget {
  const CircularProfile(
      {Key? key,
      required this.outline,
      required this.size,
      required this.image})
      : super(key: key);

  final double outline;
  final double size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: outline,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.amber.shade300,
            Colors.purple.shade600,
          ],
        ),
      ),
      child: Container(
        width: size,
        height: size - 5,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: CircleAvatar(
          backgroundImage: AssetImage(
            image,
          ),
          radius: size,
        ),
      ),
    );
  }
}
