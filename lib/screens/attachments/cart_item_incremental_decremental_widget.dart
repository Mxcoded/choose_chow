import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartItemIncrementalDecrementalWidget extends StatefulWidget {
  const CartItemIncrementalDecrementalWidget({super.key});

  @override
  State<CartItemIncrementalDecrementalWidget> createState() =>
      _CartItemIncrementalDecrementalWidgetState();
}

class _CartItemIncrementalDecrementalWidgetState
    extends State<CartItemIncrementalDecrementalWidget> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          style: _style(),
          onPressed: _count > 1
              ? () => _performIncrementDecrement(isIncrement: false)
              : null,
          child: const Icon(FontAwesomeIcons.minus),
        ),
        RobotoCustomText(
          text: "$_count",
          fontWeight: FontWeight.w500,
          fontSize: 20.dp,
        ),
        ElevatedButton(
          style: _style(),
          onPressed: () => _performIncrementDecrement(),
          child: const Icon(
            Icons.add,
          ),
        )
      ],
    );
  }

  ButtonStyle _style() => Theme.of(context).elevatedButtonTheme.style!.copyWith(
        iconColor: const WidgetStatePropertyAll(
          Colors.white,
        ),
        shape: const WidgetStatePropertyAll(
          CircleBorder(),
        ),
      );

  void _performIncrementDecrement({bool isIncrement = true}) {
    if (isIncrement) {
      _count++;
    } else {
      _count--;
    }
    setState(() {});
  }
}
