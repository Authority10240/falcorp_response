import 'package:falcorp_response/features/home/presentation/widgets/falcorp_button.dart';
import 'package:flutter/material.dart';

class FalcorpToggle extends StatelessWidget {
  const FalcorpToggle({
    required this.values,
    required this.value,
    required this.onChanged,
    super.key,
  });

  final List<String> values;
  final String value;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(32)),
        color: Theme.of(context).dialogBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: FalcorpButton(
              elevation: 0,
              margin: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
              empty: values.first != value,
              onPressed: () {
                onChanged(values.first);
              },
              text: values.first,
              textColor: Colors.blue,
            ),
          ),
          Expanded(
            child: FalcorpButton(
              elevation: 0,
              margin: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
              empty: values.last != value,
              onPressed: () {
                onChanged(values.last);
              },
              text: values.last,
              textColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
