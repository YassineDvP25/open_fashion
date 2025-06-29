import 'package:flutter/material.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class Chekout extends StatelessWidget {
  final ProductModel product;
  const Chekout({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(isBlacke: false,),
      body: Column(
        children: [
          Header(text: 'Checkout'.toUpperCase() )
        ],
      ),
    );
  }
}