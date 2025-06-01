import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeaders extends StatelessWidget {
  const AllExpensessItemHeaders(
      {super.key, required this.icon, this.iconColor, this.imageBackground});

  final String icon;
  final Color? iconColor;
  final Color? imageBackground;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
              color: imageBackground ?? const Color(0xFFFAFAFA),
              shape: const OvalBorder()),
          child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
                iconColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: iconColor == null ? const Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
