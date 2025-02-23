import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Description'),
        Text(
          'Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories.',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}
