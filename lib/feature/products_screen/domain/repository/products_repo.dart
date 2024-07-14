import 'package:dartz/dartz.dart';
import 'package:flutter_task/feature/products_screen/data/model/products_model.dart';

import '../../../../core/error/failures.dart';

abstract class ProductsRepo {
  Future<Either<Failures, ProductsModel>> getProducts();
}
