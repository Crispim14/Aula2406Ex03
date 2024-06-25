import 'package:flutter/material.dart';

class Pagamento extends StatefulWidget {
  const Pagamento({super.key});

  @override
  State<Pagamento> createState() => _PagamentoState();
}

class _PagamentoState extends State<Pagamento> {
  int? _selectedMethod;

  void _onPaymentMethodChanged(int? value) {
    setState(() {
      _selectedMethod = value;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
            'Método de pagamento alterado para: ${_getPaymentMethodName(value)}'),
      ),
    );
  }

  String _getPaymentMethodName(int? value) {
    switch (value) {
      case 1:
        return 'Cartão de crédito';
      case 2:
        return 'PIX';
      case 3:
        return 'Dinheiro';
      default:
        return 'Desconhecido';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Método:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<int>(
          value: _selectedMethod,
          onChanged: _onPaymentMethodChanged,
          items: const [
            DropdownMenuItem(value: 1, child: Text('Cartão de crédito')),
            DropdownMenuItem(value: 2, child: Text('PIX')),
            DropdownMenuItem(value: 3, child: Text('Dinheiro')),
          ],
        ),
      ],
    );
  }
}
