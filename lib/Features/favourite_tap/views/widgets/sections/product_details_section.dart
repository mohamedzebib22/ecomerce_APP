import 'package:ecomerce_app/Features/favourite_tap/cubit/wish_list_cubit.dart';
import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_price.dart';
import 'package:ecomerce_app/core/widgets/custom_text.dart';
import 'package:ecomerce_app/core/widgets/product_image_section.dart';
import 'package:ecomerce_app/core/widgets/cart_button.dart';
import 'package:ecomerce_app/domain/Entity/get_product_wish_list.dart';
import 'package:flutter/material.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({
    super.key, required this.productItem,
  });
 
  final WishListItemEntity productItem;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var errorImage = 'https://cdn.pixabay.com/photo/2015/06/09/16/12/error-803716_1280.png';
    return Container(
      margin: EdgeInsets.symmetric(vertical: width*0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Row(
        children: [
          ProductImageSection(image: productItem.imageCover ?? errorImage,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(title: productItem.title ??''),
                   
                    IconButton(onPressed: (){
                      WishListCubit.get(context).deleteProductishList(id: productItem.id??'');
                    }, icon: Icon(Icons.delete_outlined,size: 24,color: Colors.black,))
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text('Black color'),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [CustomPrice(price: productItem.price ??0,), CartButton(onTap: () {})],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
