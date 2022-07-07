import 'package:flutter/material.dart';
import 'package:flutter_account/screens/login/components/verification_picker.dart';

class BottomSheetLogin extends StatelessWidget {
  const BottomSheetLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      onClosing: () {},
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              width: 42,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade400,
              ),
            ),
            const Text(
              "Verification Method",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "For the best security we will have to verify your identity. Please select from options below prefered form.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
            const SizedBox(height: 12),
            const VerificationPicker(),
            const SizedBox(height: 32),
            SizedBox(
              width: 420,
              height: 42,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 0),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Save"),
              ),
            ),
            const SizedBox(height: 32),
          ],
        );
      },
    );
  }
}
