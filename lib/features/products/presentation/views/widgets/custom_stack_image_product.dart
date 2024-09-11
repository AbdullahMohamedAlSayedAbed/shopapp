import 'package:flutter/material.dart';
import 'package:shopapp/features/Home/data/models/home_model/product.dart';

class CustomStackImageProduct extends StatelessWidget {
  const CustomStackImageProduct({super.key, this.product});
  final Product? product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Image.network(
          product?.image.toString() ??
              'https://student.valuxapps.com/storage/uploads/banners/1689106848R4Nxl.photo_2023-07-11_23-08-19.png',
          width: double.infinity,
          height: 200,
        ),
        if (product?.discount != 0)
          Container(
            color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: const Text(
              'DISCOUNT',
              style: TextStyle(color: Colors.white),
            ),
          ),
      ],
    );
  }
}
