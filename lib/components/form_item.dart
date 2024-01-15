import 'package:david_carretos/components/bottom_item.dart';
import 'package:david_carretos/components/transrequest.dart';
import 'package:david_carretos/theme/app_colors.dart';
import 'package:flutter/material.dart';

class FormItem extends StatelessWidget {
  const FormItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Finalize seu orçamento",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontFamily: "MPLUSRounded1c",
                  fontSize: 32),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  onChanged: (value) {
                    TransRequest().name = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    labelStyle: TextStyle(color: AppColors.primaryColor),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    onChanged: (value) {
                      TransRequest().phoneNumber = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'Telefone',
                      labelStyle: TextStyle(color: AppColors.primaryColor),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Text(
                "Endereço Retirada",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  onChanged: (value) {
                    TransRequest().addressWithdrawal = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Rua ',
                    labelStyle: TextStyle(color: AppColors.primaryColor),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  onChanged: (value) {
                    TransRequest().numberComplementWithdrawal = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Número/complemento',
                    labelStyle: TextStyle(color: AppColors.primaryColor),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  onChanged: (value) {
                    TransRequest().neighborhoodWithdrawal = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Bairro',
                    labelStyle: TextStyle(color: AppColors.primaryColor),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  onChanged: (value) {
                    TransRequest().cityWithdrawal = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Cidade',
                    labelStyle: TextStyle(color: AppColors.primaryColor),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Text(
                "Endereço Entrega",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  onChanged: (value) {
                    TransRequest().addressDelivery = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Rua ',
                    labelStyle: TextStyle(color: AppColors.primaryColor),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  onChanged: (value) {
                    TransRequest().numberComplementDelivery = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Número/complemento',
                    labelStyle: TextStyle(color: AppColors.primaryColor),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  onChanged: (value) {
                    TransRequest().neighborhoodDelivery = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Bairro',
                    labelStyle: TextStyle(color: AppColors.primaryColor),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  onChanged: (value) {
                    TransRequest().cityDelivery = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Cidade',
                    labelStyle: TextStyle(color: AppColors.primaryColor),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const BottomItem()
          ],
        ),
      ),
    );
  }
}
