import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_mapper.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';

extension MerchantMapper on MerchantData {
  Merchant get fromModel {
    final productEntities = products != null
        ? products!.map((productModel) => productModel.toDomain()).toList()
        : [];
    return Merchant(
      merchantName: merchantName ?? '',
      phone: phone ?? '',
      address: address ?? '',
      rating: rating ?? 0.0,
      products: productEntities as List<Product>,
    );
  }
}
