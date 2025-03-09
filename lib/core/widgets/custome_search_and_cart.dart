import 'package:ecomerce_app/Features/cart_page/views/cart_page.dart';
import 'package:ecomerce_app/Features/favourite_tap/cubit/wish_list_cubit.dart';
import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/ads_section.dart';
import 'package:ecomerce_app/Features/product_tap/cubit/get_product_cubit.dart';
import 'package:ecomerce_app/Features/product_tap/cubit/get_product_state.dart';
import 'package:ecomerce_app/core/helper/cach_helper.dart';
import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeSearchAndCart extends StatelessWidget {
  CustomeSearchAndCart({super.key, this.titleController, this.onChanged});
  var cartItemNumber;
  TextEditingController? titleController;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFeild(
            onChanged: onChanged,
            controller: titleController,
            radius: 26,
            prefix: Icon(Icons.search),
            hintText: 'what do you search for?',
            isFilled: true,
            filledColor: Colors.white,
          ),
        ),
        BlocBuilder<GetProductCubit, GetProductState>(
          builder: (context, state) {
            if (state is PostProductSucsess) {
              cartItemNumber = state.postProduct.numOfCartItems;
            } else {
              cartItemNumber = CachHelper().getData(key: 'numOfCartItems');
            }
            return Badge(
              alignment: AlignmentDirectional.topStart,
              backgroundColor: Colors.green,
              label: Text('$cartItemNumber'),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, CartPage.id);
                  },
                  icon: Icon(
                    Icons.shopping_cart_checkout_outlined,
                    size: 35.sp,
                  )),
            );
          },
        )
      ],
    );
  }
}
