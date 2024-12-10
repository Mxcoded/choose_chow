import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/ingredients_widget.dart';
import 'package:choose_chow/screens/attachments/instructions_widget.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class InstructionIngredientWidget extends StatefulWidget {
  const InstructionIngredientWidget({super.key});

  @override
  State<InstructionIngredientWidget> createState() =>
      _InstructionIngredientWidgetState();
}

class _InstructionIngredientWidgetState
    extends State<InstructionIngredientWidget> {
  ActivePage _activePage = ActivePage.ingredient;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => _togglePage(ActivePage.ingredient),
                  child: _rowItem(
                    text: "INGREDIENTS",
                    isActive:
                        _activePage == ActivePage.ingredient ? true : false,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => _togglePage(ActivePage.instruction),
                  child: _rowItem(
                    text: "INSTRUCTIONS",
                    isActive:
                        _activePage == ActivePage.instruction ? true : false,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          _activePage == ActivePage.ingredient
              ? const IngredientsWidget()
              : const InstructionsWidget()
        ],
      ),
    );
  }

  Widget _rowItem({required String text, required bool isActive}) => Material(
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        // shadowColor: ColorUtility.hexadecimalHueColor,
        elevation: isActive ? 1.0 : 0.0,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 1.h,
          ),
          decoration: BoxDecoration(
            color: isActive
                ? ColorUtility.hexadecimalHueColor04
                : Colors.transparent,
            border: isActive
                ? const Border(
                    bottom: BorderSide(
                      color: ColorUtility.primaryColor,
                      width: 0.7,
                    ),
                  )
                : null,
          ),
          child: RobotoCustomText(
            text: text,
            textColor: isActive
                ? ColorUtility.primaryColor
                : ColorUtility.hexadecimalGrey05,
            fontWeight: FontWeight.w700,
            fontSize: 14.dp,
            textAlign: TextAlign.center,
          ),
        ),
      );

  void _togglePage(ActivePage activePage) {
    _activePage = activePage;
    setState(() {});
  }
}

enum ActivePage { ingredient, instruction }
