import 'package:flutter/material.dart';
import 'package:uptrain/utilities/styles.dart';

import '../screens/browse_train_screen.dart';
import '../utilities/color.dart';

class Button extends StatelessWidget {
  final buttonText;
  final page;
  final double margin;
  const Button({Key? key, required this.buttonText, required this.page, required this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context){
            return page;
          }),
        );
      },
      child: Container(
        margin: EdgeInsets.all(margin),
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.buttonColor,
        ),
        child: Center(child: Text(buttonText,
          style: kTitleText,
        )),
      ),
    );
  }
}
