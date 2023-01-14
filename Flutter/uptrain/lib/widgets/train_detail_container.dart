import 'package:flutter/material.dart';

import '../components/row.dart';
import '../utilities/color.dart';
import '../utilities/styles.dart';
import 'modal_bottom_sheet.dart';

class TrainDetailContainer extends StatelessWidget {
  const TrainDetailContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColor.bodyColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.white60,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Acela",
                  style: kTitleText),
              Text("Fastest",
                  style: kTitleText),
            ],
          ),
          const SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("06: 15 AM",
                  style: kTitleGrey
              ),
              Icon(Icons.drive_eta),
              Text("06: 15 AM",
                style: kTitleGrey,
              ),
            ],
          ),
          const SizedBox(height: 10,),

          const ThreeLineRow(firstText: "From Station", secondText: "1h 5m", thirdText: "To Station"),
          const Divider(),
          const SizedBox(height: 20,),

          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context){
                    return const ShowModalBottomSheet();
                  });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("View details",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_forward, color: Colors.blue,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
