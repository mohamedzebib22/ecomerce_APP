import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key, required this.desc});
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Description'),
        ReadMoreText(
          desc,
          trimMode: TrimMode.Line,
          trimLines: 2,
          colorClickableText: Colors.pink,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color(0xff06004F)),
        ),
      ],
    );
  }
}
