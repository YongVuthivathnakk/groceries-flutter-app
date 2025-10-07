import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        actionsPadding: EdgeInsets.only(right: 20),
        
        title: const Text(
          "Groceries App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        leading: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, top: 10),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.07),
            borderRadius: BorderRadius.circular(50),
          ),
          child: SvgPicture.asset(
            'assets/icons/scan-line.svg',
            height: 20,
            width: 20,
          ),
        ),

        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 35,
              decoration: BoxDecoration(
                color: Color(0xff49C149),
                borderRadius: BorderRadius.circular(50)
              ),              
              child: SvgPicture.asset(
                'assets/icons/user.svg',
                color: Colors.white,
              ),

            ),
          ),
        ],
        centerTitle: true,
      ),
    );
  }
}
