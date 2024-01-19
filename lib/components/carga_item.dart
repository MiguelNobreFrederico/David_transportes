import 'package:david_carretos/components/quantity_selector.dart';
import 'package:david_carretos/components/transrequest.dart';
import 'package:david_carretos/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CargaItem extends StatelessWidget {
  const CargaItem({Key? key, required this.itemTitle, required this.imageURI})
      : super(key: key);
  final String itemTitle;
  final String imageURI;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: AppColors.secondaryColor,
      elevation: 5,
      child: Column(
        children: <Widget>[
          Image(
            height: 122,
            width: double.infinity,
            image: AssetImage(imageURI),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    itemTitle,
                    style: TextStyle(
                        fontSize: 16, color: AppColors.backGraundColor),
                  ),
                ),
                QuantitySelector(
                    onChange: (value) =>
                        TransRequest().addItem(value, itemTitle))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
