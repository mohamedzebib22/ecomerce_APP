import 'package:bloc/bloc.dart';
import 'package:ecomerce_app/Features/prpoduct_tap/cubit/get_product_state.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';
import 'package:ecomerce_app/domain/use_case/get_product_use_case.dart';
import 'package:injectable/injectable.dart';



@injectable
class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit(this.getProductUseCase) : super(GetProductInitial());

  final GetProductUseCase getProductUseCase;
  List<ProductEntity> productList=[];
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
}
