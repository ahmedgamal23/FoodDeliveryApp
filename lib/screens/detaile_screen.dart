import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final List data_;
  const DetailPage({super.key , required this.data_ });

  @override
  State<DetailPage> createState() => _DetailPageState();

}

class _DetailPageState extends State<DetailPage> {
  int itemCount=0;
  int price=0;
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
       String strPrice = widget.data_[4].toString().replaceFirst("\$", '');
       price = int.parse(strPrice);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey(),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 270,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("${widget.data_[0]}"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(top: 50 , left: 25, ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.arrow_back,size: 30,),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(top: 50 , right: 25, ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.favorite_border,size: 30,),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15,),
          Text("${widget.data_[1]}" , style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(Icons.watch_later_outlined , color: Colors.green,),
                  Text("${widget.data_[2]}"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_on , color: Colors.grey,),
                  Text("${widget.data_[3]}"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star_border_outlined , color: Colors.orange,),
                  Text("4.9" , style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('(1.7k reviews)' , style: TextStyle(fontWeight: FontWeight.w300),),
                ],
              ),
            ],
          ),
          SizedBox(height: 15,),
          Divider(
            color: Colors.grey,
            height: 20,
            thickness: 1,
            indent: 5,
            endIndent: 5,
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${widget.data_[4]}" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30,color: Colors.orange,),),
                Container(
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: InkWell(
                          onTap: (){
                            if(itemCount != 0){
                              setState(() {
                                itemCount-=1;
                              });
                            }
                          },
                          child: Icon(Icons.remove)),
                      ),
                      Text("$itemCount" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold,),),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              itemCount+=1;
                            });
                          },
                          child: Icon(Icons.add)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10,top: 8,),
                alignment: Alignment.topLeft,
                child: Text(
                  "About Food",
                  style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20 , ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10,top: 8,),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nulla justo, sagittis non orci a, hendrerit tristique augue. Proin id lobortis est. Donec ultrices venenatis accumsan. Vestibulum auctor fringilla nisl. Phasellus dictum a enim nec fermentum.",
                  style: TextStyle(fontSize: 15,color: Colors.black54 , ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20,),
          //Spacer(),
          Container(
            height: 60,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width-50,
            margin: const EdgeInsets.only(top: 20,),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: (){

              },
              child: Text("Add to oreder \$${price*itemCount} " , style: TextStyle(color: Colors.white70 ,fontSize: 20 , fontWeight: FontWeight.bold ),)),
          ),

        ],
      ),
    );
  }
}








