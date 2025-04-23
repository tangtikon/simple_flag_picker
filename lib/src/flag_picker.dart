import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'country.dart';

class SimpleFlagPicker extends StatelessWidget {
  final String selectedCode;
  final ValueChanged<String> onChanged;
  final double flagSize;

  const SimpleFlagPicker({
    Key? key,
    required this.selectedCode,
    required this.onChanged,
    this.flagSize = 32,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedCode,
      underline: const SizedBox(),
      onChanged: (value) {
        if (value != null) {
          onChanged(value);
        }
      },
      items: supportedCountries.map((country) {
        return DropdownMenuItem(
          value: country.code,
          child: Row(
            children: [
              SvgPicture.asset(
                country.asset,
                width: flagSize,
                height: flagSize,
              ),
              const SizedBox(width: 8),
              Text(country.name),
            ],
          ),
        );
      }).toList(),
    );
  }
}
