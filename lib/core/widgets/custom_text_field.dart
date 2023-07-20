import 'package:coffee_app/core/utils/colors.dart';
import 'package:coffee_app/core/utils/styles.dart';
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
    return TextFormField(
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
          label: Text(hint!,style: Styles.textStyle16.copyWith(
            color: AppColors.kPrimaryColor.withOpacity(0.7)
          ),),
         errorStyle: Styles.textStyle14.copyWith(fontSize: 12),
         // labelStyle: Styles.textStyle24,

          focusedBorder: buildBorder(border: 32, color: AppColors.kPrimaryColor),
          enabledBorder: buildBorder(border: 32, color: AppColors.kSecondaryColor),
          border:buildBorder(border: 32, color: Colors.grey)
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