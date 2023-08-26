import 'package:flutter/material.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image:AssetImage("assets/images/main.jpeg"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60 , left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage('assets/icons/man.png'),
                      fit: BoxFit.fill,
                    )
                ) ,
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(child: Text("Hi, Ahmed" , style: TextStyle(
                    fontSize:20 ,
                    fontWeight: FontWeight.w500,
                    fontFamily: ('Montserrat-VariableFont_wght'),
                  ),) ,),
                  Container(child: Text("let's grab your food" , style: TextStyle(
                    fontSize: 17,
                  ),),),
                ],
              ),
              SizedBox(width: 60,),
              Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(80),
                ),
                child: Badge(
                  label: Text("9+"),
                  child: Icon(Icons.notifications_none ,size: 30,),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.only(top:150.0),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width-50.0,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(80),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.search , size: 40,),
                    SizedBox(width: 10,),
                    Text("Search for food" , style: TextStyle(fontSize: 20 , color: Colors.grey),),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  width:40 ,
                  height:40 ,
                  child: Image(image: AssetImage('assets/icons/filter.png' , ) ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}






