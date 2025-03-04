import 'package:ecomerce_app/Features/product_tap/cubit/get_product_cubit.dart';
import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_price.dart';
import 'package:ecomerce_app/core/helper/cach_helper.dart';
import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';
import 'package:flutter/material.dart';

class CustomProduct extends StatelessWidget {
  const CustomProduct({
    super.key,

    required this.product, 
  });

  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.01),
      width: width * 0.44,
      height: height * 0.30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blue, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width * 0.44,
            height: height * 0.13,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(product.imageCover ?? 'https://cdn.pixabay.com/photo/2015/06/09/16/12/error-803716_1280.png'),fit: BoxFit.fill)),
          ),
          ListTile(
            title: Text(
              product.title ?? '',
              maxLines: 2,
              style: TextStyle(fontSize: 12),
            ),
           
          ),
          CustomPrice(price: product.price ?? 0 ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Review'),
                  Text('(${product.ratingsAverage})'),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  
                  GetProductCubit.get(context).addToCart(id: product.id??'');
                },
                child: Image.asset('assets/images/addicon.png')),
            ],
          )
        ],
      ),
    );
  }
}
