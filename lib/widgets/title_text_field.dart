import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_text_filled.dart';

import '../utils/app_styles.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextFilled(
          hintText: hint,
        )
      ],
    );
  }
}
