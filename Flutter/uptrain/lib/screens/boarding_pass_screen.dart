import 'package:flutter/material.dart';
import 'package:uptrain/components/row.dart';
import 'package:uptrain/screens/ticket_option_screen.dart';
import 'package:uptrain/utilities/color.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:uptrain/utilities/styles.dart';
import 'package:uptrain/widgets/button.dart';

class BoardingPassScreen extends StatelessWidget {
  final String name;

  const BoardingPassScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Boarding Pass"),
        elevation: 0,
        backgroundColor: AppColor.primaryColor,
      ),

      body: ListView(
        children: [
          Container(
            color: AppColor.primaryColor,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 480,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 100, right: 20, left: 20, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColor.bodyColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                        style: kTitleText,
                      ),
                      const Text("2248 acela",
                        style: kTitleGrey,
                      ),
                      const Divider(),
                      const SizedBox(height: 25,),

                      TwoLineRow(firstText: "New York, NY", secondText: "Boston, MA"),

                      const ThreeLineIconRow(firstText: "NYC", icon: Icons.time_to_leave, secondText: "BBY"),

                      const ThreeLineRow(firstText: "Oct 20, 06:25 AM", secondText: "5h 45m", thirdText: "Oct 20, 10:05 AM"),
                      const Divider(),
                      const SizedBox(height: 25,),

                      const ThreeLineRow(firstText: "Train No.", secondText: "Class", thirdText: "Ticket ID"),
                      const ThreeLineRow(firstText: "224MP", secondText: "Business", thirdText: "A098674"),
                      const Divider(),
                      const SizedBox(height: 25,),

                      const ThreeLineRow(firstText: "Passengers", secondText: "Seat", thirdText: "Baggage"),
                      const ThreeLineRow(firstText: "1 Adult", secondText: "Seat 3C", thirdText: "20kg"),
                      const Divider(),
                      const SizedBox(height: 25,),

                      BarcodeWidget(
                        data: "This is barcode",
                        barcode: Barcode.code128(),
                        height: 100,
                        padding: const EdgeInsets.all(10),
                      ),

                    ],
                  ),
                ),

                const Button(buttonText: "Download Ticket", page: TicketOptionScreen(), margin: 23,),

              ],
            ),
          ),
        ],

      ),
    );
  }
}
