import 'package:flutter/material.dart';

void main() {
  runApp(FoodPandaApp());
}

class FoodPandaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodPandaHomePage(),
    );
  }
}

class FoodPandaHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("UI Design", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.pinkAccent,
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Text(
              "Food Panda",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/panda.png', // Ensure this image exists in your project
                    height: 60,
                    width: 60,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'FoodPanda',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Are you hungry? Order Now...',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'SET MENU',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      MenuContainer(icon: Icons.local_pizza, label: "Pizza"),
                      MenuContainer(icon: Icons.fastfood, label: "Burger"),
                      MenuContainer(icon: Icons.local_drink, label: "Juice"),
                      MenuContainer(icon: Icons.rice_bowl, label: "Fried Rice"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuContainer extends StatelessWidget {
  final IconData icon;
  final String label;

  MenuContainer({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.pinkAccent, // Pink background color for container
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent, // Match button color to container
              padding: EdgeInsets.all(20),
              shape: CircleBorder(),
              shadowColor: Colors.transparent, // Remove button shadow
            ),
            onPressed: () {},
            child: Icon(icon, color: Colors.white, size: 35), // White icon color
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 16, color: Colors.white), // White text color
          ),
        ],
      ),
    );
  }
}
