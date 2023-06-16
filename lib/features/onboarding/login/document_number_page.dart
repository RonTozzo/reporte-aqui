import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reporte_aqui/shared/app_bar.dart';
import 'package:reporte_aqui/shared/app_routes.dart';
import 'package:reporte_aqui/shared/button.dart';
import 'package:reporte_aqui/shared/non_border_textfield.dart';

class DocumentNumberPage extends StatelessWidget {
  const DocumentNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    final documentController = TextEditingController();
    final documentFormatter = MaskTextInputFormatter(
      mask: "###.###.###-##",
      initialText: "000.000.000-00",
    );

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Insira aqui o seu CPF",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),
              NonBorderTextField(
                textInputType: TextInputType.number,
                formatter: documentFormatter,
                controller: documentController,
                hint: "000-000-000-00",
                erros: const ["teste"],
              ),
              const Spacer(),
              Align(
                child: AppButton(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.phoneToken);
                  },
                  label: "Acessar",
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
