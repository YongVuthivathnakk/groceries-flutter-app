import 'package:flutter/material.dart';

class FreshFoodModel {
  String name;
  String iconPath;
  Color borderColor;
  Color backgroundColor;
  Color priceColor;
  String price;

  FreshFoodModel({
    required this.name,
    required this.iconPath,
    required this.borderColor,
    required this.backgroundColor,
    required this.priceColor,
    required this.price,
  });

  static List<FreshFoodModel> getFood() {
    List<FreshFoodModel> food = [];

    food.add(
      FreshFoodModel(
        name: "Avocado",
        iconPath: "assets/icons/avacado-food-fruit-svgrepo-com.svg",
        borderColor: Color(0xff1DAC1D),
        backgroundColor: Color(0xffA5EBA5),
        priceColor: Color(0xff008000),
        price: r"$4.00",
      ),
    );

    food.add(
      FreshFoodModel(
        name: "Banana",
        iconPath: "assets/icons/avacado-food-fruit-svgrepo-com.svg",
        borderColor: Color(0xffFFC559),
        backgroundColor: Color(0xffFFFF68),
        priceColor: Color(0xffFFA600),
        price: r"$2.50",
      ),
    );

    food.add(
      FreshFoodModel(
        name: "Chocolate",
        iconPath: "assets/icons/chocolate-svgrepo-com.svg",
        borderColor: Color(0xff604830),
        backgroundColor: Color(0xff604830),
        priceColor: Color(0xff604830),
        price: r"$5.50",
      ),
    );

    food.add(
      FreshFoodModel(
        name: "Watermelon",
        iconPath: "assets/icons/avacado-food-fruit-svgrepo-com.svg",
        borderColor: Color(0xff1DAC1D),
        backgroundColor: Color(0xffA5EBA5),
        priceColor: Color(0xff008000),
        price: r"$6.00",
      ),
    );
    return food;
  }
}
