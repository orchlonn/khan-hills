import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/model/get_model_list.dart';
import 'package:khan_hills/utils/colors.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class DropDownBtn extends StatefulWidget {
  DropDownBtn({Key? key, required this.modelData}) : super(key: key);
  List<ModelData>? modelData;

  @override
  State<DropDownBtn> createState() => _DropDownBtnState();
}

class _DropDownBtnState extends State<DropDownBtn> {
  String? selectedValue;
  bool isActive = false;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text(widget.modelData?[0].name as String), value: "Модерн"),
      DropdownMenuItem(
          child: Text(widget.modelData?[1].name as String), value: "Классик"),
      DropdownMenuItem(
          child: Text(widget.modelData?[2].name as String), value: "Стандарт"),
      DropdownMenuItem(
          child: Text(widget.modelData?[3].name as String), value: "Люкс"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    // print("gggg  : : :: : ${widget.modelData?[0].name}");

    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * .04,
          vertical: size.height * .01,
        ),
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
          child: DropdownButton(
            dropdownColor: isActive ? primaryColor : whiteColor,
            isDense: true,
            icon: Icon(Icons.keyboard_arrow_down,
                size: 15, color: isActive ? whiteColor : primaryColor),
            style: CustomStyles.textLittleMiniSemiBold(context,
                textColor: isActive ? whiteColor : primaryColor),
            iconEnabledColor: primaryColor,
            hint: Text(
              "Хэмжээ",
              style: CustomStyles.textMinimSemiBold(context,
                  textColor: primaryColor),
            ),
            value: selectedValue == "" ? "Хэмжээ" : selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                isActive = true;
                selectedValue = newValue ?? "";
              });
            },
            items: dropdownItems,
          ),
        ),
      ),
    );
  }
}
