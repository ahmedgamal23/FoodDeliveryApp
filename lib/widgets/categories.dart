import 'package:flutter/material.dart';


class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:const EdgeInsets.only(right: 20),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:18.0,left: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Image(
                        height: 35,
                        image: AssetImage('assets/icons/hamburger.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 18.0,top: 5,),
                child: Text("Burger"),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:18.0,left: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Image(
                        height: 35,
                        image: AssetImage('assets/icons/salad.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 18.0,top: 5,),
                child: Text("salad"),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:18.0,left: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Image(
                        height: 35,
                        image: AssetImage('assets/icons/pancakes.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 18.0,top: 5,),
                child: Text("pancakes"),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:18.0,left: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Image(
                        height: 35,
                        image: AssetImage('assets/icons/pizza.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 18.0,top: 5,),
                child: Text("pizza"),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:18.0,left: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Image(
                        height: 35,
                        image: AssetImage('assets/icons/burger.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 18.0,top: 5,),
                child: Text("Burger"),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:18.0,left: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Image(
                        height: 35,
                        image: AssetImage('assets/icons/cake.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 18.0,top: 5,),
                child: Text("cake"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}






