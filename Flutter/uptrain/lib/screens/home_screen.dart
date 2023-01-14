import 'package:flutter/material.dart';
import 'package:uptrain/models/lists.dart';
import 'package:uptrain/screens/browse_train_screen.dart';
import 'package:uptrain/utilities/color.dart';
import 'package:uptrain/utilities/styles.dart';
import 'package:uptrain/widgets/show_routes.dart';
import 'package:uptrain/widgets/textfield_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bodyColor,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                // stack first container
                Container(
                  padding: const EdgeInsets.all(15),
                  color: AppColor.primaryColor,
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Uptrain",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                              Text("Book your next train!",
                                style: kTitleGrey),
                            ],
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: const Icon(
                              Icons.notification_add_outlined,
                              size: 30,
                              color: Colors.white,
                            ),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          OutlinedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                AppColor.appbarButtonColor1,
                              ),
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.double_arrow, color: Colors.black,),
                                Text("One Way", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10,),
                          OutlinedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                AppColor.appbarButtonColor2,
                              ),
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.refresh, color: Colors.black,),
                                Text("Round trip", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // stack textfield container
                const SearchTextFieldContainer(),
              ],
            ),

            const SizedBox(height: 18,),

            // Show routes container
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Popular Routes",
                        style: kTitleText,
                      ),
                      Text("See all",
                        style: kTitleGrey,
                      ),
                    ],
                  ),

                  Container(
                    padding: const EdgeInsets.all(13),
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    child: const ShowRoutesContainer(),
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
