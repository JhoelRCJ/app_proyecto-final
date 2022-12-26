import 'package:flutter/material.dart';
import 'package:stoody/Services/ThemeService.dart';

class RadioElements<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String leading;
  final Widget? title;
  final ValueChanged<T?> onChanged;

  const RadioElements({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        height: 45,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _customRadioButton,
            SizedBox(width: 10),
            if (title != null) title,
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      width: 35,
      height: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
            color: lightbgdarkColor, style: BorderStyle.solid, width: 1),
      ),
      child: Container(
        width: 17,
        height: 17,
        decoration: BoxDecoration(
          color: isSelected == true ? lightbgdarkColor : lightbgwhiteColor,
          borderRadius: BorderRadius.circular(9),
          border: Border.all(
              color: lightbgdarkColor, style: BorderStyle.solid, width: 1),
        ),
      ),
    );
  }
}
