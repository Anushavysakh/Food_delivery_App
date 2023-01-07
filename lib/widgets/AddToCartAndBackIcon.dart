import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class AddToCartAndBackIcon extends StatelessWidget {
  const AddToCartAndBackIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade100,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: Dimensions.iconSize16,
            ),
            onPressed: () {},
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey.shade100,
          child: IconButton(
            icon: Icon(
              Icons.shopping_cart,
              size: Dimensions.iconSize16,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
