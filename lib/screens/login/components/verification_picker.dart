import 'package:flutter/material.dart';

import 'bottom_sheet_choice.dart';

class VerificationPicker extends StatefulWidget {
  const VerificationPicker({Key? key}) : super(key: key);

  @override
  State<VerificationPicker> createState() => _VerificationPickerState();
}

class _VerificationPickerState extends State<VerificationPicker> {
  String _groupValue = 'Phone';

  void _onTap(String value) {
    setState(() {
      _groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomSheetChoice(
          icon: Icons.phone,
          label: 'Phone',
          groupValue: _groupValue,
          onTap: _onTap,
        ),
        BottomSheetChoice(
          icon: Icons.email,
          label: 'E-mail',
          groupValue: _groupValue,
          onTap: _onTap,
        ),
        BottomSheetChoice(
          icon: Icons.message,
          label: 'SMS',
          groupValue: _groupValue,
          onTap: _onTap,
        ),
      ],
    );
  }
}
