import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceries_shoping_flutter_app/pages/home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 10, right: 10),
            child: SvgPicture.asset('assets/icons/food-basket.svg'),
          ),

          SizedBox(height: 20),

          // Title
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'We Deliver\nGroceres at your\ndoorstep',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Grocery app gives you vegetable and fruits. Order items from this app.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),

          SizedBox(height: 40),

          // Button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context, 
              MaterialPageRoute(
                builder: (context) {
                return HomePage();
              })
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff962EFF),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
