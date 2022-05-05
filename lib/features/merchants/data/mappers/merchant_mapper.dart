import 'dart:math';

import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';

extension MerchantMapper on MerchantData {
  Merchant get fromModel {
    // random rates for merchants to be used in the ui
    // it will add to the api later
    List<double> rates = [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5];
    return Merchant(
      id: id,
      name: name ?? '',
      description: description ?? '',
      rate: rates[Random().nextInt(rates.length)],
    );
  }
}
