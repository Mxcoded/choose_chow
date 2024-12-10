import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../Utilities/asset_image_utility.dart';
import 'collection_widget.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 17.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              right: 3.w,
            ),
            child: const CollectionWidget(
              collectionName: "Popular",
              imageUrl: AssetImageUtility.collectionImage1,
              isActive: true,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 3.w,
            ),
            child: const CollectionWidget(
              collectionName: "Western",
              imageUrl: AssetImageUtility.collectionImage2,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 3.w,
            ),
            child: const CollectionWidget(
              collectionName: "Local",
              imageUrl: AssetImageUtility.collectionImage3,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 3.w,
            ),
            child: const CollectionWidget(
              collectionName: "Grilled",
              imageUrl: AssetImageUtility.collectionImage4,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 3.w,
            ),
            child: const CollectionWidget(
              collectionName: "Drinks",
              imageUrl: AssetImageUtility.collectionImage1,
            ),
          ),
        ],
      ),
    );
  }
}
