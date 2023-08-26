import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/detaile_screen.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      getJsonData();
    });
  }

  List data=[];

  getJsonData()async{
    var jsondata = await rootBundle.loadString('JSONFolder/json_data.json');
    setState(() {
      data = json.decode(jsondata);
    });
  }

  @override
  Widget build(BuildContext context) {

    if(data.isEmpty){
      return Center(child: CircularProgressIndicator(color: Colors.black,));
    }else{
      return SingleChildScrollView(
        padding: const EdgeInsets.only(right: 15,),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: (){
                    try {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            List l = [data[0]['image'] , data[0]['name'] , data[0]['time'] , data[0]['distance'] , data[0]['price']];
                            return DetailPage(data_: l,);
                          }));
                    }catch(e){
                      print("==================================");
                      print(e);
                      print("==================================");
                    }
                  },
                  child: Column(
                    children: [
                      Image(image: AssetImage("${data[0]['image']}") , height: 150,fit: BoxFit.cover ,), //assets/images/food1.jpg
                      SizedBox(height: 5,),
                      Text("${data[0]['name']}" , style: TextStyle(fontSize: 18,),),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text("${data[0]['time']}"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.electric_bike),
                              Text(" ${data[0]['distance']}"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(" ${data[0]['price']} " , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold,),),
                          Container(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              onPressed: (){},
                              backgroundColor: Colors.orange,
                              child: Icon(Icons.add , size: 20,color: Colors.white,),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: (){
                    try {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            List l = [data[1]['image'] , data[1]['name'] , data[1]['time'] , data[1]['distance'] , data[1]['price']];
                            return DetailPage(data_: l,);
                          }));
                    }catch(e){
                      print("==================================");
                      print(e);
                      print("==================================");
                    }
                  },
                  child: Column(
                    children: [
                      Image(image: AssetImage("${data[1]['image']}") , height: 150,fit: BoxFit.cover ,),
                      SizedBox(height: 5,),
                      Text("${data[1]['name']}" , style: TextStyle(fontSize: 18,),),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text("${data[1]['time']}"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.electric_bike),
                              Text(" ${data[1]['distance']}"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("${data[1]['price']}" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold,),),
                          Container(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              onPressed: (){},
                              backgroundColor: Colors.orange,
                              child: Icon(Icons.add , size: 20,color: Colors.white,),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: (){
                    try {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            List l = [data[2]['image'] , data[2]['name'] , data[2]['time'] , data[2]['distance'] , data[2]['price']];
                            return DetailPage(data_: l,);
                          }));
                    }catch(e){
                      print("==================================");
                      print(e);
                      print("==================================");
                    }
                  },
                  child: Column(
                    children: [
                      Image(image: AssetImage("${data[2]['image']}") , height: 150,fit: BoxFit.cover ,),
                      SizedBox(height: 5,),
                      Text("${data[2]['name']}" , style: TextStyle(fontSize: 18,),),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text("${data[2]['time']}"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.electric_bike),
                              Text(" ${data[2]['distance']}"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("${data[2]['price']}" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold,),),
                          Container(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              onPressed: (){},
                              backgroundColor: Colors.orange,
                              child: Icon(Icons.add , size: 20,color: Colors.white,),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: (){
                    try {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            List l = [data[3]['image'] , data[3]['name'] , data[3]['time'] , data[3]['distance'] , data[3]['price']];
                            return DetailPage(data_: l,);
                          }));
                    }catch(e){
                      print("==================================");
                      print(e);
                      print("==================================");
                    }
                  },
                  child: Column(
                    children: [
                      Image(image: AssetImage("${data[3]['image']}") , height: 150,fit: BoxFit.cover ,),
                      SizedBox(height: 5,),
                      Text("${data[3]['name']}" , style: TextStyle(fontSize: 18,),),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text("${data[3]['time']}"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.electric_bike),
                              Text(" ${data[3]['distance']}"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("${data[3]['price']}" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold,),),
                          Container(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              onPressed: (){},
                              backgroundColor: Colors.orange,
                              child: Icon(Icons.add , size: 20,color: Colors.white,),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: (){
                    try {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            List l = [data[4]['image'] , data[4]['name'] , data[4]['time'] , data[4]['distance'] , data[4]['price']];
                            return DetailPage(data_: l,);
                          }));
                    }catch(e){
                      print("==================================");
                      print(e);
                      print("==================================");
                    }
                  },
                  child: Column(
                    children: [
                      Image(image: AssetImage("${data[4]['image']}") , height: 150,fit: BoxFit.cover ,),
                      SizedBox(height: 5,),
                      Text("${data[4]['name']}" , style: TextStyle(fontSize: 18,),),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text("${data[4]['time']}"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.electric_bike),
                              Text(" ${data[4]['distance']}"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("${data[4]['price']}" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold,),),
                          Container(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              onPressed: (){},
                              backgroundColor: Colors.orange,
                              child: Icon(Icons.add , size: 20,color: Colors.white,),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}



