import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class RoundedButton2 extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onpress;
  final Color color;
  const RoundedButton2({
    super.key,
    required this.title,
    required this.onpress,
    this.loading = false,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 48.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            border: Border.all(width: 2, color: color)),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(
                  color: AppColor.primaryColor,
                )
              : Text(
                  title,
                  style: const TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
        ),
      ),
    );
  }
}
