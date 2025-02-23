import 'package:ecomerce_app/core/widgets/const.dart';
import 'package:ecomerce_app/core/widgets/counter_widget.dart';
import 'package:flutter/material.dart';

class CountProductSection extends StatelessWidget {
  const CountProductSection({
    super.key,
    
  });

 

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
            child: Text('3,230 Sold'),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text('4.8'),
              Text('(7500)'),
              Spacer(),
              CounterWidget(),
            ],
          ),
        )
      ],
    );
  }
}


