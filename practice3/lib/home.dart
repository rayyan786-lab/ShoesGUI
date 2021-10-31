import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var shoe_name = [
    "Men's FuelCell Echo",
    "Men's FuelCell Robel",
    "Side blocks 1200"
  ];
  var shoe_price = ["99.99", "129.99", "139.99"];
  var shoe_image = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("mobisport"),
        leading: Image.asset("onlylogo.jpeg"),
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          const ListTile(
            leading: Text("Running"),
            trailing: Text("15 results"),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: shoe_name.length,
                itemExtent: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Colors.white,
                    leading: Container(
                      color: Colors.blue,
                      width: 70,
                      child: Image.asset(
                        shoe_image[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                    title: Text(shoe_name[index]),
                    subtitle: Text(shoe_price[index]),
                    trailing: Icon(Icons.cabin_outlined),
                    contentPadding: EdgeInsets.all(20),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
/*
      body: ListView.builder(
          itemCount: shoe_name.length,
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Colors.yellow,
              leading: Container(
                width: 100,
                child: Image.asset(shoe_image[index]),
              ),
              title: Text(shoe_name[index]),
            );
          }),
          */
/*
Widget logo() {
  return Container(
    margin: const EdgeInsets.only(left: 30),
    //padding: const EdgeInsets.all(20),
    //Abhi child wrap with center kya hwa ha to padding ki zaroorat nahi ha
    child: const Center(child: Text("Picture")),
    height: 50,
    width: 50,
    decoration: const BoxDecoration(
      color: Colors.yellow,
      shape: BoxShape.circle,
    ),
  );
}
*/
