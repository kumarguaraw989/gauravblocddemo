import 'package:flutter/material.dart';
import '../../../../Data/Models/homepage_model.dart';

class ListTileBuilder extends StatelessWidget {
  const ListTileBuilder(
    this.data, {
    Key? key,
  }) : super(key: key);

  final HomePageModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          data.result!.token!,
          style: const TextStyle(
              color: Colors.blue, fontSize: 40.00, fontWeight: FontWeight.bold),
        ),
        Text(
          data.result!.userId!,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 27.00,
          ),
        ),
        Text(
          "ID: ${data.result!.token!}",
          style: const TextStyle(
              color: Colors.red, fontSize: 27.00, fontWeight: FontWeight.bold),
        )
      ],

    );
  }
}
