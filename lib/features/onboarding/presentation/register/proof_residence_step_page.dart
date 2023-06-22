import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:reporte_aqui/shared/presentation/app_bar.dart';
import 'package:reporte_aqui/shared/presentation/button.dart';
import 'package:reporte_aqui/shared/routes/app_routes.dart';

class ProfResidenceStepPage extends StatefulWidget {
  const ProfResidenceStepPage({super.key});

  @override
  State<ProfResidenceStepPage> createState() => _ProfResidenceStepPageState();
}

class _ProfResidenceStepPageState extends State<ProfResidenceStepPage> {
  bool isDisabled = true;
  Color? fieldColor;
  String fieldText =
      "Selecione o arquivo referente ao seu comprovante de renda";
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
                "Adicione aqui o seu comprovante de renda",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),
              _SelectFileWidget(
                color: fieldColor,
                fileText: fieldText,
                onFileSelected: _validateFile,
              ),
              const Spacer(),
              Align(
                child: AppButton(
                  isDisabled: isDisabled,
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.home);
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

  void _validateFile(bool haveFile) {
    if (haveFile) {
      isDisabled = false;
      fieldText = "Obrigado iremos avaliar seu comprovante de residencia";
      fieldColor = Colors.green[100];
    } else {
      isDisabled = true;
      fieldColor = null;
      fieldText =
          "Agora por favor, adicione seu Comprovante de Residencia clicando abaixo";
    }

    setState(() {});
  }
}

class _SelectFileWidget extends StatelessWidget {
  final Color? color;
  final String fileText;
  final Function(bool) onFileSelected;

  const _SelectFileWidget({
    required this.onFileSelected,
    required this.fileText,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectFile,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: Colors.black.withOpacity(0.5),
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                fileText,
              ),
            ),
            const Icon(Icons.arrow_forward, size: 18),
          ],
        ),
      ),
    );
  }

  Future<void> _selectFile() async {
    final result = await FilePicker.platform.pickFiles();

    onFileSelected(result != null);
  }
}
