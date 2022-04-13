import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/merchants/presentation/bloc/merchants_cubit/merchants_cubit.dart';
import 'package:ecommerce/features/merchants/presentation/bloc/merchants_cubit/merchants_states.dart';
import 'package:ecommerce/features/merchants/presentation/widgets/merchant_item.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MerchantsPage extends StatelessWidget {
  const MerchantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<MerchantsCubit>()..getMerchants(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(context.tr.merchants),
          ),
          body: BlocBuilder<MerchantsCubit, MerchantsStates>(
              builder: (context, state) {
            return state.maybeWhen(
                loaded: (merchants) {
                  return ListView.builder(
                      itemCount: merchants.length,
                      itemBuilder: (context, index) {
                        return MerchantItem(merchant: merchants[index]);
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
