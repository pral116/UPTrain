import 'package:flutter/material.dart';
import 'package:uptrain/components/row.dart';
import 'package:uptrain/models/lists.dart';
import 'package:uptrain/screens/choose_seat_screen.dart';
import 'package:uptrain/screens/home_screen.dart';
import 'package:uptrain/utilities/color.dart';
import 'package:uptrain/utilities/styles.dart';
import 'package:uptrain/widgets/button.dart';
import 'package:uptrain/widgets/modal_bottom_sheet.dart';
import 'package:uptrain/widgets/seat_choose_container.dart';
import 'package:uptrain/widgets/show_trains.dart';
import 'package:uptrain/widgets/ticket_class_container.dart';
import 'package:uptrain/widgets/train_detail_container.dart';

class TicketOptionScreen extends StatelessWidget {
  const TicketOptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ticket Option", style: TextStyle(color: Colors.black),),
        backgroundColor: Color(0xFFeeeeee),
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: Container(
        padding: const EdgeInsets.all(20),
        color: Color(0xFFeeeeee),

        child: ListView(
          children: [
            // first container
            const TrainDetailContainer(),
            const SizedBox(height: 20,),

            // Select class
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Select Your Class", style: kTitleText,),
                SizedBox(height: 10,),

                TicketClassContainer(),
              ],
            ),
            const SizedBox(height: 20,),

            // Seating
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Seating", style: kTitleText,),
                SizedBox(height: 8,),
                ChooseSeatContainer(),
              ],
            ),
            const SizedBox(height: 20,),

            //total
            Container(
              padding: const EdgeInsets.all(10),
              height: 80,
              color: AppColor.bodyColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Total", style: kTitleGrey,),
                      Text("\$152.00", style: kTitleText,),
                    ],
                  ),

                  OutlinedButton(
                    onPressed: (){},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("Continue", style: TextStyle(color: Colors.white),),
                    ),

                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}
