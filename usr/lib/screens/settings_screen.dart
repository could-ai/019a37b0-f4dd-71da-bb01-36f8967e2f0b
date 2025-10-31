import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Integração com WhatsApp',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Para adicionar um novo gasto via WhatsApp, envie uma mensagem para o número abaixo no seguinte formato:',
            ),
            const SizedBox(height: 10),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Ex: "Gasto: 25.50, Descrição: Almoço"',
                  style: TextStyle(fontFamily: 'monospace'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  'Número do WhatsApp: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SelectableText(
                  '+55 11 9XXXX-XXXX', // Número de exemplo
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Nota: A integração com o WhatsApp ainda não está ativa. Esta é uma demonstração de como funcionará.',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
