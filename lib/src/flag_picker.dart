import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'country.dart';

class SimpleFlagPicker extends StatelessWidget {
  final String selectedCode;
  final ValueChanged<String> onChanged;
  final double flagSize;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry padding;

  const SimpleFlagPicker({
    super.key,
    required this.selectedCode,
    required this.onChanged,
    this.flagSize = 32,
    this.textStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 8),
  });

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
      items: supportedCountries.map<DropdownMenuItem<String>>((country) {
        return DropdownMenuItem<String>(
          value: country.code,
          child: Padding(
            padding: padding,
            child: Row(
              children: [
                _buildFlag(country.asset),
                const SizedBox(width: 8),
                Text(country.name, style: textStyle),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildFlag(String assetPath) {
    return SvgPicture.asset(
      assetPath,
      width: flagSize,
      height: flagSize,
      placeholderBuilder: (context) => SizedBox(
        width: flagSize,
        height: flagSize,
        child: const CircularProgressIndicator(strokeWidth: 1),
      ),
      errorBuilder: (context, error, stackTrace) => Icon(
        Icons.flag_outlined,
        size: flagSize,
        color: Colors.grey,
      ),
    );
  }
}
