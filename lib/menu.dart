import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<List<dynamic>> foodLists = [
    [
      "https://www.amarinbabyandkids.com/app/uploads/2022/05/%E0%B9%84%E0%B8%82%E0%B9%88%E0%B9%80%E0%B8%88%E0%B8%B5%E0%B8%A2%E0%B8%A7FB.jpg",
      "ไข่เจียวหาดใหญ่",
      80
    ],
    [
      "https://food.mthai.com/app/uploads/2014/12/iStock-494899370.jpg",
      "ไข่กระทะฮาวาย",
      90
    ],
    [
      "https://images.aws.nestle.recipes/resized/12f17c7de982b57fdf3e4c9091cd3b29_steamed-egg-with-minced-pork_944_531.jpeg",
      "ไข่ตุ๋นคุณหนู",
      70
    ],
    [
      "http://www.pim.in.th/images/all-side-dish-egg/egg-soup-with-mushroom/106.JPG",
      "ไข่น้ำทะเล",
      80
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodLists.length,
      itemBuilder: (_, index) {
        return Card(
          // elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          child: Container(
            height: 100,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(foodLists[index][0],
                    fit: BoxFit.cover,
                    width: 150,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        children:  [
                        Text("${foodLists[index][1]}",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Color.fromARGB(255, 237, 125, 166)
                        ),),
                        SizedBox(height: 10,),

 Text("฿${foodLists[index][2]}",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 244, 255, 30),
                          backgroundColor: Color.fromARGB(255, 221, 128, 183)
                        ),),





                      ],
                      ),
                    )
                  ],
                ),


Container(
  alignment: Alignment.bottomCenter,
  child: Chip(
    backgroundColor: Color.fromARGB(255, 191, 131, 148),
    label: Text("Order Now",
    style: TextStyle(
   color: Colors.white,
    fontSize: 12,
    ),
  ),
  ),
),





              ],
            ),
          ),
        );
      },
    );
  }
}
