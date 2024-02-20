// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List imageList = [
    "https://images.pexels.com/photos/8176112/pexels-photo-8176112.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1437318/pexels-photo-1437318.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/9660/business-money-pink-coins.jpg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/4109272/pexels-photo-4109272.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/8176112/pexels-photo-8176112.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1437318/pexels-photo-1437318.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/9660/business-money-pink-coins.jpg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/4109272/pexels-photo-4109272.jpeg?auto=compress&cs=tinysrgb&w=400",
  ];
  final List titleList = [
    "NIKE SHOP",
    "STARBUCKS",
    "Anna Johnson",
    "From Savings",
    "McDonald's",
    "NIKE SHOP",
    "STARBUCKS",
    "NIKE SHOP",
    "STARBUCKS",
    "Anna Johnson",
    "From Savings",
    "McDonald's",
    "NIKE SHOP",
    "STARBUCKS",
  ];
  final List dateList = [
    "18 Sep",
    "17 Sep",
    "1 Jan",
    "June 6",
    "Dec 22",
    "Apr 30",
    "18 Sep",
    "17 Sep",
    "1 Jan",
    "June 6",
    "Dec 22",
    "Apr 30"
  ];
  final List amountList = [
    -62.68,
    -6.00,
    0.00,
    25.00,
    -12.37,
    -62.94,
    -6.00,
    50.00,
    25.00,
    -12.37
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/40192/woman-happiness-sunrise-silhouette-40192.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Main Account",
                    style: TextStyle(color: Color.fromARGB(255, 37, 41, 161)),
                  ),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '13.458 \$',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.visibility),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Current Balance",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.purple.withOpacity(0.6),
                    ),
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.purple.withOpacity(0.6),
                    ),
                    child: Icon(Icons.arrow_right_alt),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.purple.withOpacity(0.6),
                      ),
                      child: Center(child: Text("Split a purchase")),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("Recent events"),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemCount: imageList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.only(left: 4, right: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(width: 1)),
                    leading: Image.network(
                      imageList[index],
                      height: 45,
                      width: 45,
                      fit: BoxFit.cover,
                    ),
                    title: Text(titleList[index]),
                    subtitle: Text(dateList[index]),
                    trailing: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: amountList[index] < 0
                          ? null
                          : BoxDecoration(
                              color: Colors.purple.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                      child: Text(
                        "${amountList[index].toStringAsFixed(2)} \$",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
