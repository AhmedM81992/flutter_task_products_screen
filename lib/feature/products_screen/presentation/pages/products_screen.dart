import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/config.dart';
import 'package:flutter_task/core/utils/app_colors.dart';

import '../bloc/products_bloc.dart';
import '../widgets/card_item_widget.dart';
import '../widgets/custom_app_bar.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsBloc>()..add(GetProductsEvent()),
      child: BlocConsumer<ProductsBloc, ProductsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.backGround,
            body: Column(
              children: [
                CustomAppBar(),
                Expanded(
                  child: GridView.builder(
                    itemCount: state.productsModel?.products?.length,
                    itemBuilder: (context, index) {
                      return CardItemsWidget(
                        index: index,
                        productModel: state.productsModel,
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      mainAxisExtent: 237,
                    ),
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 10,
                      bottom: 10,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
