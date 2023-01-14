import 'package:flutter/material.dart';

import '../utilities/styles.dart';

class TwoLineRow extends StatelessWidget {
  final firstText;
  final secondText;
  TwoLineRow({Key? key, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText,
          style: kTitleGrey,
        ),
        Text(secondText, style: kTitleGrey),
      ],
    );
  }
}

class ThreeLineRow extends StatelessWidget {
  final firstText;
  final secondText;
  final thirdText;
  const ThreeLineRow({Key? key, required this.firstText, required this.secondText, required this.thirdText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText,
            style: kTitleGrey
        ),
        Text(secondText,
            style: kTitleGrey
        ),
        Text(thirdText,
            style: kTitleGrey
        ),
      ],
    );
  }
}

class ThreeLineIconRow extends StatelessWidget {
  final firstText;
  final icon;
  final secondText;
  const ThreeLineIconRow({Key? key, required this.firstText, required this.icon, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText,
            style: kTitleText),
        Icon(icon),
        Text(secondText, style: kTitleText),
      ],
    );
  }
}

class IconAndTextRow extends StatelessWidget {
  final icon;
  final color;
  final firstText;
  final secondText;
  const IconAndTextRow({Key? key, required this.icon, required this.color, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color,),
        const SizedBox(width: 10,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(firstText, style: kTitleGrey,),
            Text(secondText, style: kTitleGrey,),
          ],
        ),
      ],
    );
  }
}



