import 'package:ecomerce_app/core/widgets/const.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
        width: width * 0.20,
        height: height * 0.03,
        decoration: BoxDecoration(
          color: Color(0xff004182),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageIcon(
              AssetImage(minceIcon),
              color: Colors.white,
            ),
            Text(
              '0',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            ImageIcon(
              AssetImage(plusIcon),
              color: Colors.white,
            ),
          ],
        ));
  }
}
