import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reporte_aqui/features/onboarding/repository/get_phone_token.dart';
import 'package:reporte_aqui/shared/presentation/app_bar.dart';
import 'package:reporte_aqui/shared/routes/app_routes.dart';
import 'package:reporte_aqui/shared/presentation/button.dart';
import 'package:reporte_aqui/shared/presentation/non_border_textfield.dart';

class PhoneTokenPage extends StatefulWidget {
  const PhoneTokenPage({super.key});

  @override
  State<PhoneTokenPage> createState() => _PhoneTokenPageState();
}

class _PhoneTokenPageState extends State<PhoneTokenPage> {
  final token = GetPhoneTokenRepository.getPhoneToken();
  List<String> errors = [];
  final _tokenFormatter = MaskTextInputFormatter(mask: "######");
  final _tokenController = TextEditingController();

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
            children: [
              const Text(
                "Digite aqui o código enviado para +55 (54) 99***-**59",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),
              NonBorderTextField(
                textInputType: TextInputType.number,
                formatter: _tokenFormatter,
                controller: _tokenController,
                hint: "******",
                erros: errors,
                onChange: (_) {},
              ),
              const SizedBox(height: 24),
              Text(token, style: const TextStyle(color: Colors.grey)),
              const Spacer(),
              Align(
                child: AppButton(
                  onTap: checkTokenAndNavigate,
                  label: "Confirmar",
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  void checkTokenAndNavigate() {
    if (_tokenController.text == token) {
      errors = [];
      setState(() {});

      Navigator.of(context).pushNamed(AppRoutes.home);
    } else {
      errors = ["Código inválido"];
      setState(() {});
    }
  }
}
