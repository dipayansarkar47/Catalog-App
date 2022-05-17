import 'package:velocity_x/velocity_x.dart';

import 'package:first_app/Models/cart.dart';
import 'package:first_app/Models/catalog.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
