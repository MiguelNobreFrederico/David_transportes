import 'package:david_carretos/components/transrequest.dart';
import 'package:david_carretos/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomItem extends StatelessWidget {
  const BottomItem({super.key});

  Future<void> _launchWhatsApp() async {
    await launchUrl(TransRequest().toWhatsappUri("13978196695"));
  }

  Future<void> _launchWhatsAppWeb() async {
    await launchUrl(TransRequest().toWhatsappUrlWeb("13978196695"));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: GestureDetector(
        onTap: () {
          _launchWhatsAppWeb();
          _launchWhatsApp();
        },
        child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 40,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Text(
            'Finalizar',
            style: TextStyle(color: AppColors.backGraundColor),
          ),
        ),
      ),
    );
  }
}
