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
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 5 / 3,
                    child: Image(
                      image: AssetImage(imageURI),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          itemTitle,
                          style: TextStyle(
                            color: AppColors.backGraundColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w900,
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
            ),
          ),
        ],
      ),
    );
  }
}
