import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reporte_aqui/shared/app_bar.dart';
import 'package:reporte_aqui/shared/app_routes.dart';
import 'package:reporte_aqui/shared/button.dart';
import 'package:reporte_aqui/shared/non_border_textfield.dart';

class PhoneTokenPage extends StatefulWidget {
  const PhoneTokenPage({super.key});

  @override
  State<PhoneTokenPage> createState() => _PhoneTokenPageState();
}

class _PhoneTokenPageState extends State<PhoneTokenPage> {
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
                erros: const ["teste"],
              ),
              const Spacer(),
              Align(
                child: AppButton(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.phoneNumberStep);
                  },
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
}
