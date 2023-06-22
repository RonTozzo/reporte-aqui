import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reporte_aqui/shared/presentation/app_bar.dart';
import 'package:reporte_aqui/shared/presentation/button.dart';
import 'package:reporte_aqui/shared/presentation/non_border_textfield.dart';
import 'package:reporte_aqui/shared/routes/app_routes.dart';
import 'package:reporte_aqui/utils/cpf_validator.dart';

class DocumentNumberPage extends StatefulWidget {
  const DocumentNumberPage({super.key});

  @override
  State<DocumentNumberPage> createState() => _DocumentNumberPageState();
}

class _DocumentNumberPageState extends State<DocumentNumberPage> {
  List<String> errors = [];
  bool isDisabled = true;
  final documentController = TextEditingController();
  final documentFormatter = MaskTextInputFormatter(
    mask: "###.###.###-##",
    initialText: "000.000.000-00",
  );

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
                "Insira aqui o seu CPF",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),
              NonBorderTextField(
                onChange: _validateCpf,
                textInputType: TextInputType.number,
                formatter: documentFormatter,
                controller: documentController,
                hint: "000-000-000-00",
                erros: errors,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    child: AppButton(
                      isDisabled: isDisabled,
                      onTap: navigateToPhoneToken,
                      label: "Acessar",
                    ),
                  ),
                  const SizedBox(width: 24),
                  Align(
                    child: AppButton(
                      isDisabled: isDisabled,
                      onTap: navigateToCadastrar,
                      label: "Cadastrar",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  void navigateToCadastrar() {
    Navigator.of(context).pushNamed(AppRoutes.phoneNumberStep);
  }

  void navigateToPhoneToken() {
    Navigator.of(context).pushNamed(AppRoutes.phoneToken);
  }

  void _validateCpf(String value) {
    if (CpfValidator.isValidCPF(value)) {
      errors = [];
      isDisabled = false;
      setState(() {});
    } else {
      errors = ["CPF Inválido"];
      isDisabled = true;
      setState(() {});
    }
  }
}
