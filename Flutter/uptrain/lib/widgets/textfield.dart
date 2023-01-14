import 'package:flutter/material.dart';
import 'package:uptrain/utilities/styles.dart';

import '../utilities/color.dart';

class TextFieldContainer extends StatelessWidget {
  final icon;
  final text;
  const TextFieldContainer({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.bodyColor,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(icon),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(text,
              style: kTitleText,
            ),
          ),
        ],
      ),
    );
  }
}
