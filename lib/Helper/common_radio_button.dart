import 'package:flutter/material.dart';

import '../Constants/font_size_constants.dart';
import '../Utils/app_localization.dart';
//ignore: must_be_immutable
class AppRadioButton extends StatefulWidget {
  final List<String> items;
  final String title;
  String? selectedItem;
  final ValueChanged<String>? onChange;
  AppRadioButton({required this.title, required this.items, this.selectedItem, this.onChange, super.key});

  @override
  State<AppRadioButton> createState() => _AppRadioButtonState();
}

class _AppRadioButtonState extends State<AppRadioButton> {

  void _handleRadioValueChange(String? value) {
    setState(() {
      widget.selectedItem = value ?? '';
    });
    if (widget.onChange != null && value != null) {
      widget.onChange!(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormField(builder: (FormFieldState<bool> state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title),
          Row(
              children: widget.items.map((item) {
                return Row(children: [
                  Radio(
                    value: item,
                    groupValue: widget.selectedItem,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(item, style: const TextStyle(fontSize: AppFontSize.regular)
                  )
                ]);
              }).toList()),
          if (state.hasError)
            Text(
                state.errorText ?? '',
                style: const TextStyle(color: Colors.red)
            )
        ]);
    }, validator: (value) {
        return (widget.selectedItem?.isEmpty ?? true) ? AppLocalization.instance.keys.genderIsRequired : null;
    });
  }
}
