part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default(RequestStatus.init) RequestStatus getProductsStatus,
    ProductsModel? productsModel,
    Failures? productsFailures,
  }) = _ProductsState;
}
