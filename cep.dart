import 'package:flutter/material.dart';

class CEP extends StatefulWidget {
  const CEP({super.key});

  @override
  State<CEP> createState() => _CEPState();
}

class _CEPState extends State<CEP> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text('CEP:'),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  hintText: '99999-999',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Rua:'),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nome da rua',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Número:'),
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Número',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Bairro:'),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nome do bairro',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Cidade:'),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nome da cidade',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Estado:'),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nome do estado',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
