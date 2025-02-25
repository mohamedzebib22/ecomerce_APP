import 'package:bloc/bloc.dart';
import 'package:ecomerce_app/Features/home_tap/cubits/cubit/category_state.dart';
import 'package:ecomerce_app/domain/use_case/get_brand_use_case.dart';
import 'package:ecomerce_app/domain/use_case/get_category_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';


@injectable
class CategoryAndBrandCubit extends Cubit<CategoryAndBrandState> {
  CategoryAndBrandCubit(this.getCategoryUseCase,
   //this.getBrandUseCase
   ) : super(CategoryInitial());
  final GetCategoryUseCase getCategoryUseCase;
  //final GetBrandUseCase getBrandUseCase;

  getAllCategory()async{
    emit(CategoryLoading());
    var either = await getCategoryUseCase.invoke();
    return either.fold((error){
      emit(CategoryFaluire(errMessage: error));
    },(response){
      emit(CategorySucsess(categoryAndBrandEntity: response));
    });
  }

  // getAllBrands()async{
  //   emit(BrandLoading());
  //   var either = await getBrandUseCase.invoke();
  //   return either.fold((error){
  //     emit(BrandFaluire(errMessage: error));
  //   }, (response){
  //     emit(BrandSucsess(categoryAndBrandEntity: response));
  //   });
  // }
}
