import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_error_widget.dart';
import 'package:ecommerce/core/presentation/widgets/list_shimmer.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
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
                  return MerchantsList(merchants: merchants);
                },
                loading: () => const ListShimmer(),
                error: (error) => AppErrorWidget(
                      error: error,
                    ),
                orElse: () => Container());
          }),
        ));
  }
}

class MerchantsList extends StatefulWidget {
  const MerchantsList({Key? key, required this.merchants}) : super(key: key);

  final List<Merchant> merchants;

  @override
  State<MerchantsList> createState() => _MerchantsListState();
}

class _MerchantsListState extends State<MerchantsList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _addMerchants();
    });
  }

  Future _addMerchants() async {
    for (var _ in widget.merchants) {
      await Future.delayed(const Duration(milliseconds: 200));
      _counter++;
      _listKey.currentState!.insertItem(_counter - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        key: _listKey,
        initialItemCount: _counter,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
            child: MerchantItem(
              merchant: widget.merchants[index],
              onTap: () {
                AutoRouter.of(context).navigate(
                    MerchantDetailsRoute(merchant: widget.merchants[index]));
              },
            ),
            position: animation.drive(Tween<Offset>(
                begin: const Offset(1, 0), end: const Offset(0, 0))),
          );
        });
  }
}
