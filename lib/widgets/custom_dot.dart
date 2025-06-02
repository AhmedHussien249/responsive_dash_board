import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive ? const Color(0xff4EB7F2) : const Color(0xffe7e7e7),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}
