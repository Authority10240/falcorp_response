import 'package:flutter/material.dart';

class FalcorpButton extends StatelessWidget {
  const FalcorpButton({
    required this.text,
    required this.onPressed,
    this.enabled = true,
    this.empty = false,
    this.isLoading = false,
    this.margin = EdgeInsets.zero,
    this.color,
    this.elevation,
    this.textColor,
    this.radius = 32.0,
    super.key,
  });

  final String text;
  final VoidCallback? onPressed;
  final bool enabled;
  final bool empty;
  final EdgeInsets margin;
  final Color? color;
  final double? elevation;
  final bool isLoading;
  final Color? textColor;
  final double radius;

  static const _generalFourty = 40.0;
  static const _generalElevenFive = 11.5;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 35,
            margin: margin,
            child: ElevatedButton(
              onPressed: () {
                if (enabled && onPressed != null) {
                  onPressed!();
                }
              },
              style: ElevatedButton.styleFrom(
                elevation: empty ? 0 : elevation,
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                backgroundColor: enabled
                    ? (empty ? Theme.of(context).dialogBackgroundColor : color ?? Colors.blue)
                    : const Color(0xFF44536d),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: isLoading
                    ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
                    : Text(
                  text,
                  style: TextStyle(
                    color: empty ? color ?? Colors.blue : textColor ?? Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
