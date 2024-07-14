import 'package:dio/dio.dart';
import 'package:flutter_task/core/api/api_manager/api_manager.dart';
import 'package:flutter_task/feature/products_screen/data/model/products_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/api_manager/end_points.dart';
import 'products_ds.dart';

@Injectable(as: ProductsDs)
class ProductsDsImpl implements ProductsDs {
  ApiManager apiManager;

  ProductsDsImpl(this.apiManager);

  @override
  Future<ProductsModel> getProducts() async {
    var response = await apiManager.getData(EndPoint.productsEndpoint);
    ProductsModel productsModel = ProductsModel.fromJson(response.data);
    return productsModel;
  }
}
