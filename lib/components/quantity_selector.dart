import 'dart:math';

import 'package:david_carretos/theme/app_colors.dart';
import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  Function(int) onChange;

  QuantitySelector({super.key, required this.onChange});

  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int selectedQuantity = 0;

  void incrementQuantity() {
    setState(() {
      if (selectedQuantity < 100) {
        selectedQuantity = selectedQuantity + 1;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onChange(selectedQuantity);
    });
  }

  void decrementQuantity() {
    setState(() {
      if (selectedQuantity > 0) {
        selectedQuantity = selectedQuantity - 1;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onChange(selectedQuantity);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            Icons.remove,
            size: 15,
            color: AppColors.backGraundColor,
          ),
          onPressed: decrementQuantity,
        ),
        SizedBox(
          height: 35,
          width: 35,
          child: DropdownButton<int>(
            value: selectedQuantity,
            onChanged: (int? newValue) {
              setState(() {
                selectedQuantity = newValue!;
              });
            },
            items: List.generate(
              min(100, selectedQuantity),
              (index) {
                return DropdownMenuItem<int>(
                  value: index + 1,
                  child: Text(
                    (index + 1).toString(),
                    style: TextStyle(color: AppColors.backGraundColor),
                  ),
                );
              },
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.add,
            size: 15,
            color: AppColors.backGraundColor,
          ),
          onPressed: incrementQuantity,
        ),
      ],
    );
  }
}
