import 'package:dartz/dartz.dart';

import 'package:flutter_task/core/error/failures.dart';
import 'package:flutter_task/feature/products_screen/data/data_sources/products_ds.dart';

import 'package:flutter_task/feature/products_screen/data/model/products_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/products_repo.dart';

@Injectable(as: ProductsRepo)
class ProductsRepoImpl implements ProductsRepo {
  ProductsDs productsDs;

  ProductsRepoImpl(this.productsDs);

  @override
  Future<Either<Failures, ProductsModel>> getProducts() async {
    try {
      var result = await productsDs.getProducts();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
