import 'package:bloc/bloc.dart';
import 'package:ecomerce_app/Features/favourite_tap/cubit/wish_list_state.dart';
import 'package:ecomerce_app/domain/use_case/get_item_wish_list_use_case.dart';
import 'package:ecomerce_app/domain/use_case/post_wish_list_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';


@injectable
class WishListCubit extends Cubit<WishListState> {
  WishListCubit(this.getItemWishListUseCase, this.postWishListUseCase) : super(WishListInitial());

  final GetItemWishListUseCase getItemWishListUseCase;
  final PostWishListUseCase postWishListUseCase;
  static WishListCubit get(context) => BlocProvider.of(context);

  getItemInWishList() async{
    var either =await getItemWishListUseCase.invoke();
    emit(WishListLoading());
    return either.fold((error){
      emit(WishListFailuer(faliures: error));
    }, (response){
      emit(WishListSucsess(getProductWishListResponseEntity: response));
    });
  }

  postItemInWishList({required String id}) async{
    var either =await postWishListUseCase.invoke(id: id);
    emit(WishListLoading());
    return either.fold((error){
      emit(WishListFailuer(faliures: error));
    }, (response){
      print('======Product Added Sucssefully');
      emit(WishListPostSucsess( postAndDeleteItem: response));
    });
  }
}
