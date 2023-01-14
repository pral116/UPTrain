import 'package:flutter/material.dart';

import '../screens/choose_seat_screen.dart';
import '../utilities/color.dart';
import '../utilities/styles.dart';

class ChooseSeatContainer extends StatelessWidget {
  const ChooseSeatContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context){
            return const ChooseSeatScreen();
          }),
        );
      },
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppColor.bodyColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.event_seat,
                shadows: [
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("Seat Number", style: kTitleText,),
                  Text("Add preferences", style: kTitleText,),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_forward,),
            ),
          ],
        ),
      ),
    );
  }
}
