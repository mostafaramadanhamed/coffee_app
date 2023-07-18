import 'package:coffee_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({Key? key,
    this.onChange ,
    required this.hint,
    this.maxLines=1,
    this.onSaved,
    this.keyboardType=TextInputType.text,
  }) : super(key: key) ;

  final String ?hint;
  final void Function(String?)? onSaved;
  final Function(String) ? onChange;
  final int maxLines;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        onChanged: onChange,
        onSaved: onSaved,
        keyboardType:keyboardType ,
        validator: (val){
          if(val?.isEmpty??true){
            return 'Field is required';
          }
          else {
            return null;
          }
        },
        maxLines: maxLines,
        cursorColor: AppColors.kPrimaryColor,
        decoration: InputDecoration(
            fillColor: AppColors.kLoginTextFieldColor,
            filled: true,
            hintText: hint,
            hintStyle: TextStyle(
              color: AppColors.kPrimaryColor.withOpacity(0.6),
              fontSize: 14,
            ),
            focusedBorder: buildBorder(border: 24, color: AppColors.kPrimaryColor),
            enabledBorder: buildBorder(border: 24, color: AppColors.kSecondaryColor),
            border:buildBorder(border: 24, color: Colors.grey)
        ),
      ),
    );
  }

}
OutlineInputBorder buildBorder({
  required double border,
  required Color color,
}) {
  return OutlineInputBorder(
      borderSide:  BorderSide(
        color: color,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(border)
  );
}