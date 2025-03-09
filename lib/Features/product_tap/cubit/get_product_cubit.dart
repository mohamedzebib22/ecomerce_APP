import 'package:bloc/bloc.dart';
import 'package:ecomerce_app/Features/product_tap/cubit/get_product_state.dart';
import 'package:ecomerce_app/core/helper/cach_helper.dart';
import 'package:ecomerce_app/core/widgets/show_dialog_msg.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';
import 'package:ecomerce_app/domain/use_case/get_product_use_case.dart';
import 'package:ecomerce_app/domain/use_case/post_cart_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:quickalert/quickalert.dart';



@injectable
class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit(this.getProductUseCase, this.postCartUseCase) : super(GetProductInitial());

  final GetProductUseCase getProductUseCase;
  final PostCartUseCase postCartUseCase;
  List<ProductEntity> productList=[];
  List<ProductEntity> filterList=[];
  int numOfCartItems = 0;
  TextEditingController filterTitle= TextEditingController();
  static GetProductCubit get(context) => BlocProvider.of(context);
  
  getProduct() async {
    if (productList.isEmpty) {
      emit(GetProductLoading());
      var either = await getProductUseCase.invoke();
      return either.fold((error) {
        emit(GetProductFaliur(faliures: error));
      }, (response) {
        productList = response.data!;
        filterList = productList; 
        emit(GetProductSucsess(getProductEntity: response));
      });
    }
  }

  addToCart({required String id,context})async{
    var either =await postCartUseCase.invoke(id: id);
    return either.fold((error){
      emit(PostProductFaliur(faliures: error));
    }, (response){
      numOfCartItems = response.numOfCartItems!.toInt();
      var cartItemNumber = CachHelper().saveData(key: 'numOfCartItems', value: numOfCartItems);
      print('===/===/===$numOfCartItems===/===/===');
      print('Added Cart Succseflly');
      ShowDialogMsg.showDialogtext(context: context, confirmText: 'AddToCart',type: QuickAlertType.success, title: 'Add', body: 'Are you Added This Item In Cart',
       confirm: (){
        Navigator.pop(context);
       });
      emit(PostProductSucsess(postProduct: response));
      emit(GetProductSucsess(getProductEntity: GetProductEntity(data: filterList)));
      //getProduct();
    });
  }
  searchProduct(String title){
    filterList = productList.where((item){
      return item.title!.toLowerCase().contains(title.toLowerCase());
    }).toList();
    emit(GetProductSucsess(getProductEntity: GetProductEntity(data: filterList)));
  }
}
