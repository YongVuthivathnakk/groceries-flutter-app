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

  void _getFood() {
    food = FreshFoodModel.getFood();
  }

  @override
  Widget build(BuildContext context) {
    _getFood();
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          _landingTitle(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fresh items",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                // Container(
                //   child: ListView.separated(
                //     shrinkWrap: true,
                //     itemCount: food.length,
                //     separatorBuilder: (context, index) => SizedBox(width: 25),
                //     itemBuilder: (context, index) {
                //       return Container(child: Text(food[index].name));
                //     },
                //   ),
                // ),
                Container(
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // <-- 2 items per row
                      crossAxisSpacing: 25, // space between columns
                      mainAxisSpacing: 25, // space between rows
                      childAspectRatio:
                          1.2, // adjust item size ratio (width / height)
                    ),
                    itemCount: food.length,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(food[index].name),
                      );
                    },
                  ),
                ),
              ],
            ),
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
