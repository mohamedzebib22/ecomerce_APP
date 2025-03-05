import 'package:bloc/bloc.dart';
import 'package:ecomerce_app/Features/prpoduct_tap/cubit/get_product_state.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';
import 'package:ecomerce_app/domain/use_case/get_product_use_case.dart';
import 'package:ecomerce_app/domain/use_case/post_cart_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';



@injectable
class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit(this.getProductUseCase, this.postCartUseCase) : super(GetProductInitial());

  final GetProductUseCase getProductUseCase;
  final PostCartUseCase postCartUseCase;
  List<ProductEntity> productList=[];
  

  static GetProductCubit get(context) => BlocProvider.of(context);
  getProduct()async{
    emit(GetProductLoading());
    var either =await getProductUseCase.invoke();
    return either.fold((error){
      emit(GetProductFaliur(faliures: error));
    }, (response){
      productList = response.data!;
      emit(GetProductSucsess(getProductEntity: response));
    });
  }

  addToCart({required String id})async{
    emit(PostProductLoading());
    var either =await postCartUseCase.invoke(id: id);
    return either.fold((error){
      emit(PostProductFaliur(faliures: error));
    }, (response){
     int numOfCartItems = response.numOfCartItems!.toInt();
      print('===/===/===$numOfCartItems===/===/===');
      emit(PostProductSucsess(postProduct: response));
    });
  }
}
