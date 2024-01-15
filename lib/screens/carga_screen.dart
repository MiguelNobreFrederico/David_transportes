import 'package:david_carretos/components/carga_item.dart';
import 'package:david_carretos/theme/app_colors.dart';
import 'package:david_carretos/theme/catalogo.dart';
import 'package:flutter/material.dart';

class CargaScreen extends StatelessWidget {
  const CargaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List items = carga;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                "O que vamos transportar?",
                style: TextStyle(
                    fontFamily: "MPLUSRounded1c",
                    fontSize: 32,
                    color: AppColors.primaryColor),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return CargaItem(
                  imageURI: items[index]['image'],
                  itemTitle: items[index]['name'],
                );
              },
              childCount: items.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 3
                      : 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 1.2
                      : 180 / 194,
            ),
          ),
        ],
      ),
    );
  }
}
