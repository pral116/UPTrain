import 'package:flutter/material.dart';
import 'package:uptrain/utilities/styles.dart';

import '../models/lists.dart';
import '../utilities/color.dart';

class ShowRoutesContainer extends StatelessWidget {
  const ShowRoutesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: routes.length,
      itemBuilder: (context, index){
        return Container(
          margin: const EdgeInsets.all(8),
          width: 250,
          decoration: BoxDecoration(
              color: AppColor.bodyColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3
                ),
              ]
          ),
          child: Row(
            children: [
              const SizedBox(width: 5,),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    routes[index].image,
                    fit: BoxFit.cover,
                    height: 80,
                    width: 50,),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(routes[index].from,
                    style: kTitleGrey,
                  ),
                  const SizedBox(height: 20,),
                  Text(routes[index].text),
                  Row(
                    children: [
                      Text(routes[index].amount, style: kTitleGrey,),
                      const SizedBox(width: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(Icons.star, color: Colors.yellow,),
                          Text(routes[index].rating),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
    },
    );
  }
}
