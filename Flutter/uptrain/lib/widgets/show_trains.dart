import 'package:flutter/material.dart';
import 'package:uptrain/components/row.dart';
import 'package:uptrain/utilities/styles.dart';

import '../models/lists.dart';
import '../screens/boarding_pass_screen.dart';


class ShowTrainsContainer extends StatelessWidget {
  const ShowTrainsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: train.length,
      itemBuilder: (context, index){
        return GestureDetector(
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context){
                return BoardingPassScreen(name: train[index].name);
              }),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                  ),
                ]
            ),
            height: 180,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(train[index].name),
                    Container(
                      height: 20,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.greenAccent,
                      ),
                      child: Text(train[index].cheapest,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),

                ThreeLineIconRow(firstText: train[index].fromTime, icon: Icons.timer, secondText: train[index].toTime),
                const SizedBox(height: 10,),

                ThreeLineRow(firstText: train[index].fromStation, secondText: train[index].timeInterval, thirdText: train[index].toStation),
                const Divider(),
                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey,
                      ),
                      child: Text(train[index].transfer,
                          textAlign: TextAlign.center),
                    ),
                    Text(train[index].rate,
                      style: kTitleText,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
