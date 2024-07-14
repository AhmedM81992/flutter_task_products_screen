import 'package:bloc/bloc.dart';
import 'package:flutter_task/core/enums/enums.dart';
import 'package:flutter_task/core/error/failures.dart';
import 'package:flutter_task/feature/products_screen/data/model/products_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecase/get_products_usecase.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

@injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  GetProductsUsecase getProductsUsecase;

  ProductsBloc(this.getProductsUsecase) : super(const ProductsState()) {
    on<GetProductsEvent>((event, emit) async {
      emit(state.copyWith(getProductsStatus: RequestStatus.loading));

      var result = await getProductsUsecase();
      result.fold((l) {
        emit(state.copyWith(
            productsFailures: l, getProductsStatus: RequestStatus.failures));
      }, (r) {
        emit(state.copyWith(
            productsModel: r, getProductsStatus: RequestStatus.success));
      });
    });
  }
}
