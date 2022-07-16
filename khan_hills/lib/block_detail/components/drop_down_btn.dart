import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/model/get_model_list.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class DropDownBtn extends StatefulWidget {
  DropDownBtn({Key? key, required this.modelData, required this.hintText})
      : super(key: key);
  List<ModelData>? modelData;
  String hintText;

  @override
  State<DropDownBtn> createState() => _DropDownBtnState();
}

class _DropDownBtnState extends State<DropDownBtn> {
  String? selectedValue;
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // padding: EdgeInsets.symmetric(
      //     horizontal: size.width * .04, vertical: size.height * .01),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
        color: isActive ? primaryColor : whiteColor,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          buttonPadding: EdgeInsets.symmetric(horizontal: size.width * .01),
          icon: Icon(Icons.keyboard_arrow_down,
              size: 15, color: isActive ? whiteColor : primaryColor),
          hint: Text(
            widget.hintText,
            style: CustomStyles.textMinimSemiBold(context,
                textColor: primaryColor),
          ),
          items: widget.modelData!
              .map((item) => DropdownMenuItem<String>(
                    value: item.name,
                    child: Text(item.name),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          buttonHeight: size.height * .05,
          buttonWidth: size.width * .27,
          itemHeight: size.height * .05,
        ),
      ),
    );
  }
}
