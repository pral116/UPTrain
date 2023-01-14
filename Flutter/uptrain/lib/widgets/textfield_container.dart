import 'package:flutter/material.dart';
import 'package:uptrain/widgets/button.dart';
import 'package:uptrain/widgets/textfield.dart';

import '../screens/browse_train_screen.dart';
import '../utilities/color.dart';

class SearchTextFieldContainer extends StatelessWidget {
  const SearchTextFieldContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 280,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 150),
      decoration: BoxDecoration(
          color: AppColor.bodyColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2,2),
              blurRadius: 2,
            ),
            BoxShadow(
              color: Colors.grey,
              offset: Offset(-2,-2),
              blurRadius: 2,
            ),
          ]
      ),
      child: Column(
        children: const [
          TextFieldContainer(icon: Icons.drive_eta, text: "New York, NY"),
          TextFieldContainer(icon: Icons.drive_eta, text: "Boston, BY"),
          TextFieldContainer(icon: Icons.calendar_month, text: "Thu, Oct 20"),

          // Button
          Button(buttonText: "Search Train", page: BrowseTrain(), margin: 0,),

        ],
      ),
    );
  }

}
