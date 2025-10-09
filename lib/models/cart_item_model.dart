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

  double calculateTotal() {
    double total = 0;
    for (var entry in item.entries) {
      final food = entry.value['item'] as FreshFoodModel;
      final quantity = entry.value['quantity'] as int;
      total += food.price * quantity;
    }
    return total;
  }
}


CartItemModel cartItems = CartItemModel({});