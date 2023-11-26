import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxetask/constants/app_style.dart';
import 'package:oxetask/widget/textfield_widget.dart';

class addNewTask extends ConsumerWidget {
  const addNewTask({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.58,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
            width: double.infinity,
            child: Text(
              'Nova Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
        Divider(
          thickness: 1.2,
          color: Colors.grey[200],
        ),
        const SizedBox(height: 16),
        const Text('Título', style: AppStyle.headingOne),
        const TextFieldWidget(maxLine: 1, hintText: 'Título da task...'),
        const SizedBox(height: 16),
        const Text('Descrição', style: AppStyle.headingOne),
        const TextFieldWidget(maxLine: 5, hintText: 'Descrição da task...'),

        const SizedBox(height: 16),
        // Button section
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue[800],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(
                      color: Colors.blue.shade800,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {},
                child: const Text('Cancelar'),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(
                      color: Colors.blue.shade800,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {},
                child: const Text('Salvar'),
              ),
            )
          ],
        )
      ]),
    );
  }
}
