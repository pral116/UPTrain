import 'package:flutter/material.dart';

import '../models/lists.dart';
import '../utilities/color.dart';
import '../utilities/styles.dart';

class TicketClassContainer extends StatelessWidget {
  const TicketClassContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      // width: 300,
      child: ListView.builder(
        itemCount: ticketClass.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index){
          return Container(
            margin: const EdgeInsets.all(10),
            height: 250,
            width: 300,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: AppColor.bodyColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white60,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Standard",
                        style: kTitleText),
                    Text("\$0.00",
                        style: kTitleText),
                  ],
                ),
                const Divider(),
                const SizedBox(height: 15,),

                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.find_in_page),
                    ),
                    Text("Power Plugs", style: kTitleGrey,),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.find_in_page),
                    ),
                    Text("Extra legroom", style: kTitleGrey,),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.find_in_page),
                    ),
                    Text("Extra legroom", style: kTitleGrey,),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.find_in_page),
                    ),
                    Text("Semi refundable", style: kTitleGrey,),
                  ],
                ),

                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.find_in_page),
                    ),
                    Text("Non refundable", style: kTitleGrey,),
                  ],
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
