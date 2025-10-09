import 'package:groceries_shoping_flutter_app/models/fresh_food_model.dart';

class CartItemModel {
  Map<String, Map<String, dynamic>> item;

  CartItemModel(this.item);

  void addItem(FreshFoodModel foodItem) {
    if (item.containsKey(foodItem.name)) {
      item[foodItem.name]!['quantity'] += 1;
    } else {
      item[foodItem.name] = {'item': foodItem, 'quantity': 1};
    }
  }

  void decreaseItem(FreshFoodModel foodItem) {
    if (item.containsKey(foodItem.name)) {
      final currentQty = item[foodItem.name]!['quantity'];
      if (currentQty > 1) {
        item[foodItem.name]!['quantity'] = currentQty - 1;
      } else {
        // remove item completely if quantity hits 0
        item.remove(foodItem.name);
      }
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
