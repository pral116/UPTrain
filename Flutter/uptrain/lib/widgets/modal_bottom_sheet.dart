import 'package:flutter/material.dart';
import 'package:uptrain/components/row.dart';
import 'package:uptrain/utilities/styles.dart';

import '../utilities/color.dart';

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.bodyColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Journey", style: kTitleText,),
                IconButton(
                  onPressed: (){

                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 20,),

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

            const ThreeLineIconRow(firstText: "06:15 AM", icon: Icons.drive_eta, secondText: "06: 15 AM"),
            const SizedBox(height: 10,),

            const ThreeLineRow(firstText: "From Station", secondText: "1h 5m", thirdText: "To Station"),
            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 90,
                  color: Color(0xFFeeeeee),
                  child: const Center(child: Text("0 Transfers")),
                ),
                const Text("\$152.00",
                  style: kTitleText
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 20,),

            Column(
              children: [
                const IconAndTextRow(icon: Icons.drive_eta, color: Colors.black, firstText: "Penn Station", secondText: "06:15 AM, New York, NY"),
                const SizedBox(height: 20,),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 30,
                    width: 90,
                    color: Color(0xFFeeeeee),
                    child: const Center(child: Text("3h 45m")),
                  ),
                ),
                const SizedBox(height: 20,),

                const IconAndTextRow(icon: Icons.location_history, color: Colors.green, firstText: "Book Bay Station", secondText: "10:03 AM, New York, NY"),
              ],
            ),

          ]
      ),
    );
  }
}
