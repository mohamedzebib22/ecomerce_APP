import 'package:bloc/bloc.dart';
import 'package:ecomerce_app/Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_state.dart';
import 'package:ecomerce_app/domain/Entity/get_cart_item_entity.dart';
import 'package:ecomerce_app/domain/Entity/post_cart_entity.dart';
import 'package:ecomerce_app/domain/use_case/get_cart_item_use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartProductCubit extends Cubit<GetCartProductState> {
  GetCartProductCubit(this.getCartItemUseCase) : super(GetCartProductInitial());
  final GetCartItemUseCase getCartItemUseCase;

   List<GetCartProductsEntity> productList=[];
   num totalPrice=0;
  getProductOfCart()async{
    emit(GetCartProductLoading());
    var either = await getCartItemUseCase.invoke();
    return either.fold((error){
      emit(GetCartProductFaliuer(faliures: error));
    }, (response){
      productList = response.data!.products!;
      totalPrice = response.data!.totalCartPrice??0;
      emit(GetCartProductSucsess(getCartItemResponseEntity: response));
    });
  }
}
