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
      "ไข่เจียวนุ่มฟูต้นตำรับมาจากหาดใหญ่ที่เป็นหาดไม่เล็ก",
      "50 บาท"
      
    ],
    [
      "https://food.mthai.com/app/uploads/2014/12/iStock-494899370.jpg",
      "ไข่กระทะฮาวาย",
      "กระทะฮาวายที่เต็มไปด้วยความเร้าร้อนของทราย",
      "70 บาท"
      
    ],
    [
      "https://images.aws.nestle.recipes/resized/12f17c7de982b57fdf3e4c9091cd3b29_steamed-egg-with-minced-pork_944_531.jpeg",
      "ไข่ตุ๋นคุณหนู",
      "ไข่ตุ๋นที่ดูน่ารับประทานมีความหอมละมุนของเห็ดที่ไม่ใช่ผัก",
      "60 บาท"
   
    ],
    [
      "http://www.pim.in.th/images/all-side-dish-egg/egg-soup-with-mushroom/106.JPG",
      "ไข่น้ำทะเล",
      "ไข่น้ำทะเลดังนั้นจะเค็มนิดนึงเพราะเป็นน้ำเค็มไม่ใช่น้ำจืด",
      "80 บาท"
      
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
                    Image.network(
                      foodLists[index][0],
                      fit: BoxFit.cover,
                      width: 150,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        children: [
                          Text(
                            "${foodLists[index][1]}",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 21, 21, 21),
                                fontWeight: FontWeight.bold,
                               ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${foodLists[index][2]}",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 70, 55, 48),
                            ),
                          ),
                          Text(
                            "${foodLists[index][3]}",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 70, 55, 48),
                            ),
                          
                          
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                
                
 Container(
                  alignment: Alignment.bottomLeft,
                  child: Chip(
                    backgroundColor: Color.fromARGB(255, 183, 24, 24),
                    label: Text(
                      "Hot",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),


                Container(
                  alignment: Alignment.bottomCenter,
                  child: Chip(
                    backgroundColor: Color.fromARGB(255, 155, 79, 79),
                    label: Text(
                      "Order Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
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
