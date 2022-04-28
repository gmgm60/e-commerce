import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';

extension MerchantMapper on MerchantData {
  Merchant get fromModel {
    // final productEntities = products != null
    //     ? products!.map((productModel) => productModel.toDomain()).toList()
    //     : [];
    return Merchant(
      id: id,
      name: name ?? '',
      description: description ?? '',
      phone: '01215021458',
      address: 'any address',
      rating: 0.0,
      products: [],
    );
  }
}
