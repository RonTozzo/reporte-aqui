import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reporte_aqui/shared/app_bar.dart';
import 'package:reporte_aqui/shared/app_routes.dart';
import 'package:reporte_aqui/shared/button.dart';
import 'package:reporte_aqui/shared/non_border_textfield.dart';

class PhoneNumberStepPage extends StatefulWidget {
  const PhoneNumberStepPage({super.key});

  @override
  State<PhoneNumberStepPage> createState() => _PhoneNumberStepPageState();
}

class _PhoneNumberStepPageState extends State<PhoneNumberStepPage> {
  final phoneNumberFormatter = MaskTextInputFormatter(mask: '(##) #####-####');
  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                "Insira aqui o seu número de telefone",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),
              NonBorderTextField(
                textInputType: TextInputType.number,
                formatter: phoneNumberFormatter,
                controller: phoneNumberController,
                hint: "(00) 00000-0000",
                erros: const ["teste"],
              ),
              const Spacer(),
              Align(
                child: AppButton(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.proofResidenceStep,
                    );
                  },
                  label: "Próximo",
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
