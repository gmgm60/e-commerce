import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_state.freezed.dart';

@Freezed()
 class CartState with _$CartState{
factory CartState.init()=_Init;
factory CartState.loading()=_Loading;
factory CartState.done()=_Done;
factory CartState.error({required String errMsg})=_Error;

}

