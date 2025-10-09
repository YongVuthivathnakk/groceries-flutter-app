import 'package:flutter/material.dart';

class FreshFoodModel {
  String name;
  String iconPath;
  Color borderColor;
  Color backgroundColor;
  Color priceColor;
  double price;
  void Function()? onPressed;

  FreshFoodModel({
    required this.name,
    required this.iconPath,
    required this.borderColor,
    required this.backgroundColor,
    required this.priceColor,
    required this.price,
    required this.onPressed,

  });

  static List<FreshFoodModel> getFood() {
    List<FreshFoodModel> food = [];

    food.add(
      FreshFoodModel(
        name: "Avocado",
        iconPath: "assets/icons/avocado.svg",
        borderColor: Color(0xff1DAC1D),
        backgroundColor: Color(0xffA5EBA5),
        priceColor: Color(0xff008000),
        price: 4.00,
        onPressed: () {}
      ),
    );

    food.add(
      FreshFoodModel(
        name: "Banana",
        iconPath: "assets/icons/banana.svg",
        borderColor: Color(0xffFFC559),
        backgroundColor: Color(0xffFFFF68),
        priceColor: Color(0xffFFA600),
        price: 2.50,
        onPressed: () {}

      ),
    );

    food.add(
      FreshFoodModel(
        name: "Chocolate",
        iconPath: "assets/icons/chocolate.svg",
        borderColor: Color(0xff604830),
        backgroundColor: Color(0xff604830),
        priceColor: Color(0xff604830),
        price: 5.50,
        onPressed: () {}

      ),
    );

    food.add(
      FreshFoodModel(
        name: "Watermelon",
        iconPath: "assets/icons/watermelon.svg",
        borderColor: Color(0xff1DAC1D),
        backgroundColor: Color(0xffA5EBA5),
        priceColor: Color(0xff008000),
        price: 6.00,
        onPressed: () {}

      ),
    );

    
    food.add(
      FreshFoodModel(
        name: "Celery",
        iconPath: "assets/icons/celery.svg",
        borderColor: Color(0xff558B2F),
        backgroundColor: Color(0xff8BC34A),
        priceColor: Color(0xff33691E),
        price: 5.50,
        onPressed: () {}

      ),
    );

    
    food.add(
      FreshFoodModel(
        name: "Meat",
        iconPath: "assets/icons/steak.svg",
        borderColor: Color(0xffF44336),
        backgroundColor: Color(0xffFF6F65),
        priceColor: Color(0xffD1262C),
        price: 2.50,
        onPressed: () {}

      ),
    );

    
    food.add(
      FreshFoodModel(
        name: "Cheese",
        iconPath: "assets/icons/cheese.svg",
        borderColor: Color(0xffFFB300),
        backgroundColor: Color(0xffFFF1BA),
        priceColor: Color(0xffFFA000),
        price: 6.50,
        onPressed: () {}

      ),
    );

    
    food.add(
      FreshFoodModel(
        name: "Soda",
        iconPath: "assets/icons/soda.svg",
        borderColor: Color(0xffA52A2A),
        backgroundColor: Color(0xffFF7E82),
        priceColor: Color(0xffA52A2A),
        price: 5.50,
        onPressed: () {}

      ),
    );


    return food;
  }
}
