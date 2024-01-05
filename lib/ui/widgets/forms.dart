import 'package:flutter/material.dart';
import 'package:bank_sha/shared/theme.dart';

class CustomForm extends StatelessWidget {
  final String title;
  final bool obsecureText;
  final TextEditingController? controller;

  const CustomForm(
      {Key? key,
      required this.title,
      this.obsecureText = false,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obsecureText,
          controller: controller,
          decoration: InputDecoration(
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
