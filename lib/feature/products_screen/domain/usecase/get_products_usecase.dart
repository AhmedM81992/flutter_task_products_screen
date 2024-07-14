import 'package:dartz/dartz.dart';
import 'package:flutter_task/core/error/failures.dart';
import 'package:flutter_task/feature/products_screen/data/model/products_model.dart';
import 'package:flutter_task/feature/products_screen/domain/repository/products_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductsUsecase {
  ProductsRepo productsRepo;

  GetProductsUsecase(this.productsRepo);

  Future<Either<Failures, ProductsModel>> call() => productsRepo.getProducts();
}
