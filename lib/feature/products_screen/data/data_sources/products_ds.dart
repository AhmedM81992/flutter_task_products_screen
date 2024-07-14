import '../model/products_model.dart';

abstract class ProductsDs {
  Future<ProductsModel> getProducts();
}
