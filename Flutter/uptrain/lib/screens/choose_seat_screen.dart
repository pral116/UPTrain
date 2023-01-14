import 'package:flutter/material.dart';
import 'package:uptrain/utilities/color.dart';
import 'package:book_my_seat/book_my_seat.dart';
import 'package:uptrain/utilities/styles.dart';

import '../widgets/seat.dart';

class ChooseSeatScreen extends StatefulWidget {
  const ChooseSeatScreen({Key? key}) : super(key: key);

  @override
  State<ChooseSeatScreen> createState() => _ChooseSeatScreenState();
}

class _ChooseSeatScreenState extends State<ChooseSeatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Seat"),
        backgroundColor: Color(0xFFeeeeee),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: Color(0xFFeeeeee),
        child: ListView(
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 500,
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("NYP",
                                  style: kWhiteColorText,
                                  ),
                                Icon(Icons.drive_eta, color: Colors.white,),
                                Text("BBY",
                                  style: kWhiteColorText,
                                  ),
                              ],
                            ),
                            const SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Oct 20, 04:20 AM",
                                  style: kTitleGrey,
                                ),
                                Text("Oct 20, 10:20 AM",
                                  style: kTitleGrey),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.only(top: 100),
                        height: 400,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: const Seat(),
                      ),
                    ],
                  ),
                ),

                // button container
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.bodyColor,
                        blurRadius: 5,
                      ),
                    ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Standard", style: kTitleGrey,
                          ),
                          Text("Seat 3C", style: kTitleGrey,
                          ),
                        ],
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text("Confirm", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
