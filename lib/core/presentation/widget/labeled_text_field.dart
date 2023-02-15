import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

extension Labeled on TextFormField {
  LabeledTextField labeled({
    required String label,
    required bool isValid,
    bool required = false,
  }) =>
      LabeledTextField(
        label: label,
        isValid: isValid,
        required: required,
        child: this,
      );
}

class LabeledTextField extends StatelessWidget {
  final String label;
  final TextFormField child;
  final bool isValid;
  final bool required;

  const LabeledTextField(
      {Key? key,
      required this.child,
      required this.label,
      required this.isValid,
      required this.required})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = Text(
      label,
      style: const TextStyle(
        color: Color(0xFF262626),
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );

    return Column(
      children: [
        Row(
          children: [
            required
                ? badges.Badge(
                    badgeContent: const Text(
                      "*",
                      style: TextStyle(
                        color: Color(0xFFF37D10),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    badgeStyle: const badges.BadgeStyle(
                      badgeColor: Colors.transparent,
                      shape: badges.BadgeShape.instagram,
                    ),
                    position: badges.BadgePosition.topEnd(
                      top: -12,
                      end: -14,
                    ),
                    child: text,
                  )
                : text,
            if (!isValid) ...[
              const SizedBox(width: 4),
              const Icon(
                Icons.error,
                color: Color(0xFFF33333),
                size: 20,
              )
            ]
          ],
        ),
        child
      ],
    );
  }
}
