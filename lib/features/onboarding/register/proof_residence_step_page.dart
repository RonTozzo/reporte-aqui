import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:reporte_aqui/shared/app_bar.dart';
import 'package:reporte_aqui/shared/button.dart';

class ProfResidenceStepPage extends StatefulWidget {
  const ProfResidenceStepPage({super.key});

  @override
  State<ProfResidenceStepPage> createState() => _ProfResidenceStepPageState();
}

class _ProfResidenceStepPageState extends State<ProfResidenceStepPage> {
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
                "Agora por favor, adicione seu Comprovante de Residencia clicando abaixo",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),
              const _SelectFileWidget(),
              const Spacer(),
              Align(
                child: AppButton(
                  onTap: () {},
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

class _SelectFileWidget extends StatelessWidget {
  const _SelectFileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectFile,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.5),
            width: 1.5,
          ),
        ),
        child: Row(
          children: const [
            Expanded(
              child: Text(
                "Selecione o arquivo referente ao seu comprovante de renda",
              ),
            ),
            Icon(Icons.arrow_forward, size: 18),
          ],
        ),
      ),
    );
  }

  Future<void> _selectFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      return;
    } else {
      // Usuário cancelou a seleção do arquivo
      return;
    }
  }
}
