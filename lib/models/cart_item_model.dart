import 'package:groceries_shoping_flutter_app/models/fresh_food_model.dart';





class CartItemModel {
  Map<String, Map<String, dynamic>> item;
  
  CartItemModel(this.item);


  void addItem(FreshFoodModel foodItem) {
    if(item.containsKey(foodItem.name)) {
      item[foodItem.name]!['quantity'] += 1;
    } else {
      item[foodItem.name] = {
        'item': foodItem,
        'quantity': 1,
      };
    }
  }


}

CartItemModel cartItems = CartItemModel({});
