import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom(
      {super.key,
      this.hintText,
      required int maxLines,
      required this.text,
      this.controller,
      this.keyboardType,
      this.obscureText = false,
      this.validator,
      this.prefixIcon});
  final IconData? prefixIcon;
  final String text;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final String? Function(String?)? validator;
  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool hidden = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: const TextStyle(
              fontFamily: 'CenturyGothic',
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColor.grayColor,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffEEEEEE),
                borderRadius: BorderRadius.circular(100)),
            child: TextFormField(
              keyboardType: widget.keyboardType,
              obscureText: (widget.obscureText && hidden),
              style: const TextStyle(
                fontFamily: 'CenturyGothic',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColor.grayColor,
              ),
              controller: widget.controller,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  widget.prefixIcon,
                  color: AppColor.iconColor,
                ),
                // prefixText:  widget.hintText,
                hintStyle: const TextStyle(
                  fontFamily: 'CenturyGothic',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grayColor,
                ),
                hintText: widget.hintText,
                filled: true,
                suffixIcon: widget.obscureText
                    ? GestureDetector(
                        onTap: () {
                          setState(() => hidden = !hidden);
                        },
                        child: Icon(
                          hidden ? Icons.visibility_off : Icons.visibility,
                          color: hidden ? null : AppColor.primaryColor,
                          size: 30,
                        ),
                      )
                    : null,
                fillColor: const Color(0xffEEEEEE),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xfff1f1f1)),
                  borderRadius: BorderRadius.circular(40),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xfff1f1f1)),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              validator: widget.validator,
            ),
          ),
        ],
      ),
    );
  }
}
