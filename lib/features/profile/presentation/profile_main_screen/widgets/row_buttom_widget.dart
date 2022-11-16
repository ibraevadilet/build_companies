import 'package:all_build_companies/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class RowButtom extends StatelessWidget {
  RowButtom({Key? key, required this.name, required this.icon})
      : super(key: key);
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 10),
        Text(name, style: AppTextStyles.s16W500()),
        const Spacer(),
        const Icon(Icons.chevron_right),
      ],
    );
  }
}
