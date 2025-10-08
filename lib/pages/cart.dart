import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries_shoping_flutter_app/models/cart_item_model.dart';
import 'package:groceries_shoping_flutter_app/models/fresh_food_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: cartItems.item.isEmpty
          ? Center(child: Text("Cart is empty"))
          : Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 25),
                      itemCount: cartItems.item.length,
                      itemBuilder: (context, index) {
                        final entry = cartItems.item.entries.toList()[index];
                        final food = entry.value['item'] as FreshFoodModel;
                        final quantity = entry.value['quantity'] as int;

                        return Row(
                          children: [
                            SvgPicture.asset(
                              food.iconPath,
                              height: 30,
                              width: 30,
                            ),
                            Text(food.name + " x " + "$quantity"),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xff962EFF),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [Text("Total amount:"), Text("\$10.00")],
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Color(0xff962EFF),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        "My Cart",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),

      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset("assets/icons/chevron-left.svg"),
      ),
      centerTitle: true,
    );
  }
}
