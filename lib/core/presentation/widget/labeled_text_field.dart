import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:itnun/common/palette.dart';

extension Labeled on TextFormField {
  LabeledTextField labeled({
    required String label,
    bool isValid = true,
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
      style: TextStyle(
        color: Palette.text.shade900,
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
                        color: Palette.notify,
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
              Icon(
                Icons.error,
                color: Palette.negative.shade400,
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
