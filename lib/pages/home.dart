import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceries_shoping_flutter_app/models/fresh_food_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FreshFoodModel> food = [];

  // functions
  void _getFood() {
    food = FreshFoodModel.getFood();
  }

  @override
  Widget build(BuildContext context) {
    // Call functions
    _getFood();

    return Scaffold(
      appBar: appBar(),
      floatingActionButton: Stack(
        clipBehavior: Clip.none,
        children: [
          // The floating button itself
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.black,
            child: SvgPicture.asset(
              "assets/icons/shopping-cart.svg",
              color: Colors.white,
            ),
          ),

          // The red badge (top-left corner)
          Positioned(
            top: -14.5, // moves upward
            left: 45, // moves to left
            child: Container(
              padding: EdgeInsets.all(7.5),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                "1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ), 
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          _landingTitle(),
          SizedBox(height: 30),
          _freshFood(),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  Padding _freshFood() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Fresh items", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // <-- 2 items per row
              crossAxisSpacing: 25, // space between columns
              mainAxisSpacing: 25, // space between rows
              childAspectRatio: 0.7,
            ),
            itemCount: food.length,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: food[index].backgroundColor.withOpacity(0.6),
                  border: Border.all(
                    color: food[index].borderColor,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 15),

                    SvgPicture.asset(
                      food[index].iconPath,
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(height: 10),
                    Text(food[index].name),
                    SizedBox(height: 20),

                    MaterialButton(
                      onPressed: () {},
                      color: food[index].priceColor,
                      child: Text(
                        food[index].price,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Padding _landingTitle() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Good morning", style: TextStyle(color: Colors.grey)),
          SizedBox(height: 10),
          Text(
            "Let’s  order fresh items for you",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      leadingWidth: 65,
      title: const Text(
        "Groceries App",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),

      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xff49C149),
            ),
            child: SvgPicture.asset(
              'assets/icons/user.svg',
              color: Colors.white,
            ),
          ),
        ),
      ],
      centerTitle: true,
    );
  }
}
