import 'package:flutter/material.dart';
import 'package:spotify_redesing_app/src/core/tools/text_styles.dart';

class BasicAppButton extends StatelessWidget {
  const BasicAppButton({
    required this.onPressed,
    required this.label,
    this.height,
    super.key,
  });

  final VoidCallback onPressed;
  final String label;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize:  Size.fromHeight(height ?? 80),),
        child: Text(
          label,
          style: fontBoldSize(22).copyWith(color: Colors.white),
        ));
  }
}
