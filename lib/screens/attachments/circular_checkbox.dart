// ignore_for_file: must_be_immutable

import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../Utilities/color_utility.dart';

class CircularCheckBox extends StatefulWidget {
  bool isChecked;
  final double? padding;
  final Color? uncheckedBackgroundColor;
  final Color? checkedBackgroundColor;
  void Function(bool value)? onChange;
  CircularCheckBox({
    this.isChecked = false,
    this.padding,
    this.uncheckedBackgroundColor,
    this.checkedBackgroundColor,
    this.onChange,
    super.key,
  });

  @override
  State<CircularCheckBox> createState() => _CircularCheckBoxState();
}

class _CircularCheckBoxState extends State<CircularCheckBox> {
  late bool _isChecked;

  @override
  void initState() {
    _initOperations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color checkedBackgroundColor =
        widget.checkedBackgroundColor ?? ColorUtility.primaryColor;
    Color uncheckedBackgroundColor =
        widget.uncheckedBackgroundColor ?? Colors.white;
    return Container(
      decoration: BoxDecoration(
        color: _isChecked ? checkedBackgroundColor : uncheckedBackgroundColor,
        shape: BoxShape.circle,
        border: Border.all(
          color: _isChecked ? Colors.transparent : ColorUtility.primaryColor,
        ),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          _isChecked = !_isChecked;
          if (widget.onChange != null) {
            widget.onChange!(_isChecked);
          }
          setState(() {});
        },
        child: _isChecked
            ? Icon(
                Icons.check,
                size: 20.dp,
                color: Colors.white,
              )
            : RobotoCustomText(
                text: "T",
                textColor: widget.uncheckedBackgroundColor ?? Colors.white,
              ),
      ),
    );
  }

  void _initOperations() {
    _isChecked = widget.isChecked;
    setState(() {});
  }
}
