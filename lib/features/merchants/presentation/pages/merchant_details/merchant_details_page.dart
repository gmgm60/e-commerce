import 'package:ecommerce/core/presentation/widgets/app_empty_widget.dart';
import 'package:ecommerce/core/presentation/widgets/app_error_widget.dart';
import 'package:ecommerce/core/presentation/widgets/list_shimmer.dart';
import 'package:ecommerce/core/presentation/widgets/product_grid_item.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart';
import 'package:ecommerce/features/merchants/presentation/bloc/merchants_cubit/merchants_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MerchantDetailsPage extends StatelessWidget {
  const MerchantDetailsPage({Key? key, required this.merchantId})
      : super(key: key);
  final int merchantId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            getIt<MerchantsCubit>()..getMerchantDetails(merchantId: merchantId),
        child: BlocBuilder<MerchantsCubit, MerchantsStates>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const ListShimmer(),
              detailsLoaded: (merchantDetails) =>
                  merchantDetails.products.isNotEmpty
                      ? GridView.count(
                          shrinkWrap: true,
                          primary: false,
                          crossAxisCount: 2,
                          physics: const BouncingScrollPhysics(),
                          childAspectRatio: .6,
                          children: List.generate(
                            merchantDetails.products.length,
                            (index) => ProductGridItem(
                              product: merchantDetails.products[index],
                            ),
                          ),
                        )
                      : const AppEmptyWidget(),
              error: (error) => AppErrorWidget(
                error: error,
              ),
              orElse: () => Container(),
            );
          },
        ),
      ),
    );
  }
}
