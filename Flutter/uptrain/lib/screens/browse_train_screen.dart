import 'package:flutter/material.dart';
import 'package:uptrain/components/row.dart';
import 'package:uptrain/models/lists.dart';
import 'package:uptrain/screens/boarding_pass_screen.dart';
import 'package:uptrain/utilities/color.dart';
import 'package:uptrain/utilities/styles.dart';
import 'package:uptrain/widgets/show_trains.dart';

class BrowseTrain extends StatelessWidget {
  const BrowseTrain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              // upper appbar container
              Container(
                padding: const EdgeInsets.all(10),
                height: 230,
                color: AppColor.primaryColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: () {
                          Navigator.pop(context);
                        },
                            icon: const Icon(Icons.arrow_back, color: Colors.white,),
                        ),
                        IconButton(onPressed: () {},
                          icon: const Icon(Icons.filter, color: Colors.white,),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),

                    TwoLineRow(firstText: "New York, NY", secondText: "Boston, MA"),
                    const SizedBox(height: 10,),

                    TwoLineRow(firstText: "NYP", secondText: "BBY"),
                    const SizedBox(height: 25,),

                    // Date
                    Container(
                      padding: const EdgeInsets.all(20),
                      height: 60,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          Text("Oct 18",
                            style: kWhiteColorText,
                          ),
                          SizedBox(width: 25,),
                          Text("Oct 19",
                            style: kWhiteColorText,
                          ),
                          SizedBox(width: 25,),
                          Text("October 20",
                            style: kWhiteColorText,
                          ),
                          SizedBox(width: 25,),
                          Text("Oct 21",
                            style: kWhiteColorText,
                          ),
                          SizedBox(width: 25,),
                          Text("Oct 22",
                            style: kWhiteColorText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Body
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  color: AppColor.bodyColor,
                  child: const ShowTrainsContainer(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
