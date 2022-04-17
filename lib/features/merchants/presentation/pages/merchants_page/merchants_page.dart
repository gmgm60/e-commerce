import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart';
import 'package:ecommerce/features/merchants/presentation/bloc/merchants_cubit/merchants_states.dart';
import 'package:ecommerce/features/merchants/presentation/widgets/merchant_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MerchantsPage extends StatelessWidget {
  const MerchantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<MerchantsCubit>()..getMerchants(),
        child: Scaffold(
          body: BlocBuilder<MerchantsCubit, MerchantsStates>(
              builder: (context, state) {
            return state.maybeWhen(
                loaded: (merchants) {
                  return ListView.builder(
                      itemCount: merchants.length,
                      itemBuilder: (context, index) {
                        return MerchantItem(
                          merchant: merchants[index],
                          onTap: () {
                            AutoRouter.of(context).navigate(
                                MerchantDetailsRoute(
                                    merchant: merchants[index]));
                          },
                        );
                      });
                },
                loading: () => const AppProgressIndicator(),
                error: (error) => Center(
                      child: Text(error),
                    ),
                orElse: () => Container());
          }),
        ));
  }
}
