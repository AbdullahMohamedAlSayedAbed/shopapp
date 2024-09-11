import 'package:flutter/material.dart';
import 'package:shopapp/features/categories/data/models/categories_model/datum.dart';

class CustomStackCategories extends StatelessWidget {
  const CustomStackCategories({
    super.key,
    this.categoriesModel,
  });
  final Datum? categoriesModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Image(
            image: NetworkImage(
              categoriesModel?.image.toString() ??
                  "https://student.valuxapps.com/storage/uploads/banners/1689106848R4Nxl.photo_2023-07-11_23-08-19.png",
            ),
            height: 80,
            width: 80,
            fit: BoxFit.cover),
        Container(
            color: Colors.black54,
            width: 80,
            child: Text(
              categoriesModel?.name.toString() ?? "",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            )),
      ],
    );
  }
}
