import 'package:flutter/material.dart';

class BottomSheetChoice extends StatelessWidget {
  const BottomSheetChoice({
    Key? key,
    required this.icon,
    required this.label,
    required this.groupValue,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final String groupValue;
  final Function(String) onTap;

  bool get isSelected => label == groupValue;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => onTap(label),
        child: Column(
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.blue : Colors.grey.shade400,
              size: 36,
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              decoration: BoxDecoration(
                color: isSelected ? Colors.blue.shade100 : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                label,
                style: TextStyle(
                  color:
                      isSelected ? Colors.blue.shade900 : Colors.grey.shade600,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
