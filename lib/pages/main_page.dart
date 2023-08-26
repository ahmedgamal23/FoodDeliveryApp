import 'package:flutter/material.dart';
import '../screens/mainpage_screen.dart';
import '../widgets/categories.dart';
import '../widgets/products_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MainPageScreen(),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 18.0 , right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Food Category" , style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w900,
                  ),),
                  Row(
                    children: [
                      Text("See more" , style: TextStyle(fontWeight: FontWeight.bold , color: Color(0xFFC75C05) , ),),
                      SizedBox(width: 5,),
                      Icon(Icons.east_rounded , size: 20, color: Color(0xFFC75C05) , ),
                    ],
                  ),
                ],
              ),
            ),
            Categories(),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 18.0 , right: 20.0),
              child: Row(
                children: [
                  Text("Food For You" , style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w900,
                  ),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Products(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xFF03021E),
        child: Icon(Icons.card_travel_rounded ,),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 40,
        child: Container(
          padding: const EdgeInsets.only(left: 10 , right: 10,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.home_filled , size: 30,),
              Icon(Icons.account_circle_outlined , size: 30,),
              Icon(Icons.attach_money_rounded , size: 30,),
              Icon(Icons.settings , size: 30,),
            ],
          ),
        ),
      ) ,
    );
  }
}




















