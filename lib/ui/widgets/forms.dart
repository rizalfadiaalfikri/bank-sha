import 'package:flutter/material.dart';
import 'package:bank_sha/shared/theme.dart';

class CustomForm extends StatelessWidget {
  final String title;
  final bool obsecureText;
  final TextEditingController? controller;
  final bool isShowTitle;

  const CustomForm({
    Key? key,
    required this.title,
    this.obsecureText = false,
    this.controller,
    this.isShowTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTitle)
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        if (isShowTitle)
          SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: obsecureText,
          controller: controller,
          decoration: InputDecoration(
            hintText: !isShowTitle ? title : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        )
      ],
    );
  }
}
