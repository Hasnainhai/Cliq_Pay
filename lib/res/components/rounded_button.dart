import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onpress;
  final Color color;
  const RoundedButton({
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
          color: color,
        ),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(
                  color: AppColor.primaryColor,
                )
              : Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
        ),
      ),
    );
  }
}
