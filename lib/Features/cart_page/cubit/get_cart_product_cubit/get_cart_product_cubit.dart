import 'package:bloc/bloc.dart';
import 'package:ecomerce_app/Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_state.dart';
import 'package:ecomerce_app/domain/Entity/rud_cart_item_entity.dart';
import 'package:ecomerce_app/domain/Entity/post_cart_entity.dart';
import 'package:ecomerce_app/domain/use_case/delete_cart_item_use_case.dart';
import 'package:ecomerce_app/domain/use_case/get_cart_item_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartProductCubit extends Cubit<GetCartProductState> {
  GetCartProductCubit(this.getCartItemUseCase, this.deleteCartItemUseCase) : super(RudCartProductInitial());
  final GetCartItemUseCase getCartItemUseCase;
  final DeleteCartItemUseCase deleteCartItemUseCase;
   List<RudCartProductsEntity> productList=[];
   num totalPrice=0;

  static GetCartProductCubit get(context) => BlocProvider.of(context);
  getProductOfCart()async{
    emit(RudCartProductLoading());
    var either = await getCartItemUseCase.invoke();
    return either.fold((error){
      emit(RudCartProductFaliuer(faliures: error));
    }, (response){
      productList = response.data!.products!;
      totalPrice = response.data!.totalCartPrice??0;
      emit(RudCartProductSucsess(getCartItemResponseEntity: response));
    });
  }

  deleteItemInCart({required String id})async{
    var either = await deleteCartItemUseCase.invoke(id: id);
    return either.fold((error){
      emit(RudCartProductFaliuer(faliures: error));
    }, (response){
      productList = response.data!.products!;
      totalPrice = response.data!.totalCartPrice??0;
      print('Delete Sucssefully');
      emit(RudCartProductSucsess(getCartItemResponseEntity: response));
      
    });
  }
}
