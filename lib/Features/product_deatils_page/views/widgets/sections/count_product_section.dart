import 'package:ecomerce_app/core/widgets/const.dart';
import 'package:ecomerce_app/core/widgets/counter_widget.dart';
import 'package:flutter/material.dart';

class CountProductSection extends StatelessWidget {
  const CountProductSection({
    super.key, required this.solid, required this.rating, required this.quantity,
    
  });

  final num solid;
  final num rating;
  final num quantity;
  

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: width * 0.23,
          height: height * 0.03,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.blue, width: 1),
          ),
          child: Center(
            child: Text('${solid} Sold'),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text('$rating'),
              Text('(${quantity})'),
              Spacer(),
              CounterWidget(countItem: 0,),
            ],
          ),
        )
      ],
    );
  }
}


