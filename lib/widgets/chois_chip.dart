import 'package:flutter/material.dart';

class ChoiceChip extends StatefulWidget {
  final String text;
  final bool isSelected;

  ChoiceChip(this.text, this.isSelected);

  @override
  _ChoiceChipState createState() => _ChoiceChipState();
}

class _ChoiceChipState extends State<ChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      decoration: widget.isSelected
          ? BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            )
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            widget.text,
          )
        ],
      ),
    );
  }
}
