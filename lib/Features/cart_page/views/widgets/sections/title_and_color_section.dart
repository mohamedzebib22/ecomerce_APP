import 'package:ecomerce_app/Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_cubit.dart';
import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_price.dart';
import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_product.dart';
import 'package:ecomerce_app/core/widgets/counter_widget.dart';
import 'package:ecomerce_app/core/widgets/show_dialog_msg.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class TitleAndColorSection extends StatelessWidget {
  const TitleAndColorSection({
    super.key, required this.title, required this.price, required this.countItem, required this.id,
    
  });

 
  final String title;
  final num price;
  final num countItem;
  final String id;
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style:const TextStyle(fontSize: 8,overflow:TextOverflow.ellipsis ),),
              IconButton(onPressed: (){
               // 
                ShowDialogMsg.showDialogtext(context: context,
                 type: QuickAlertType.warning, 
                 title: 'Delete ',
                  body: 'Are You Sure To Delete $title !!!!', 
                  confirm: (){
                    GetCartProductCubit.get(context).deleteItemInCart(id: id);
                    Navigator.pop(context);
                  });
              
              }, icon:const Icon(Icons.delete_forever_outlined,size: 24,color: Colors.black,))
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
            children: [CustomPrice(price: price,), CounterWidget(countItem: countItem, id: id,  )],
          ),
         
        ],
        
      ),
    );
  }
}