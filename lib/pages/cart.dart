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
          : _cartItems(),
      bottomNavigationBar: cartItems.item.isEmpty
          ? null
          : _bottomAppBart(context),
    );
  }

  Container _bottomAppBart(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1),
        ),
      ),
      child: BottomAppBar(
        color: Colors.white,
        height: 160,
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total amount",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                SizedBox(height: 8),
                Text(
                  "\$${cartItems.calculateTotal().toStringAsFixed(2)}",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 25),
            MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(vertical: 15),
              color: Color(0xff962EFF),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Proceed",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _cartItems() {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(height: 0),
            itemCount: cartItems.item.length,
            itemBuilder: (context, index) {
              final entry = cartItems.item.entries.toList()[index];
              final food = entry.value['item'] as FreshFoodModel;
              final quantity = entry.value['quantity'] as int;
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.01),
                      blurRadius: 2,
                      spreadRadius: 0.8,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Color(0xffFFF5CC),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: SvgPicture.asset(
                            food.iconPath,
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              food.name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text("\$${food.price.toStringAsFixed(2)}"),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: -20,
                          left: 30,
                          child: SvgPicture.asset(
                            "assets/icons/circle-x.svg",
                            color: Colors.red,
                            height: 17.5,
                            width: 17.5,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/minus.svg"),
                            Text("$quantity"),
                            SvgPicture.asset("assets/icons/plus.svg"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
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
