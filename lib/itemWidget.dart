// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:api_listview_flutte_demo/Catalog_model.dart';

// ignore: camel_case_types
class itemWidget extends StatelessWidget {
  final Item item;
  const itemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(height: 60, width: 60, item.image!),
        title: Text(item.name!),
      ),
    );
  }
}
