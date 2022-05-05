import 'dart:math';

import 'package:ecommerce/features/merchants/data/models/merchant_details/merchant_details_model.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant_details.dart';
import 'package:ecommerce/features/products/data/mappers/product_mapper.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';

extension MerchantDetailsMapper on MerchantDetailsData {
  MerchantDetails get fromModel {
    List<Product> _products =
        products.map((productModel) => productModel.toDomain()).toList();
    // random rates for merchants to be used in the ui
    // it will add to the api later
    List<double> rates = [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5];
    return MerchantDetails(
        id: id,
        name: name ?? '',
        description: description ?? '',
        rate: rates[Random().nextInt(rates.length)],
        products: _products);
  }
}
