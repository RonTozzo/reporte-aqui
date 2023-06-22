import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reporte_aqui/shared/presentation/app_bar.dart';
import 'package:reporte_aqui/shared/routes/app_routes.dart';
import 'package:reporte_aqui/shared/presentation/button.dart';
import 'package:reporte_aqui/shared/presentation/non_border_textfield.dart';
import 'package:reporte_aqui/utils/phone_number_validator.dart';

class PhoneNumberStepPage extends StatefulWidget {
  const PhoneNumberStepPage({super.key});

  @override
  State<PhoneNumberStepPage> createState() => _PhoneNumberStepPageState();
}

class _PhoneNumberStepPageState extends State<PhoneNumberStepPage> {
  List<String> errors = [];
  bool isDisabled = true;
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
                onChange: validatePhoneNumber,
                textInputType: TextInputType.number,
                formatter: phoneNumberFormatter,
                controller: phoneNumberController,
                hint: "(00) 00000-0000",
                erros: errors,
              ),
              const Spacer(),
              Align(
                child: AppButton(
                  isDisabled: isDisabled,
                  onTap: navigateToProofResidence,
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

  void navigateToProofResidence() {
    Navigator.of(context).pushNamed(AppRoutes.proofResidenceStep);
  }

  void validatePhoneNumber(String value) {
    if (PhoneNumberValidator.isValidPhoneNumber(value)) {
      errors = [];
      isDisabled = false;
      setState(() {});
    } else {
      errors = ["Telefone Inválido"];
      isDisabled = true;
      setState(() {});
    }
  }
}
