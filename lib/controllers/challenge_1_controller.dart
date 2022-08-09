import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/list_numbers.dart';

class Challenge1Controller {
  final formKey = GlobalKey<FormState>();
  final numberController = TextEditingController();
  late final ListNumbers provider;

  Challenge1Controller(BuildContext context) {
    provider = Provider.of<ListNumbers>(context);
  }

  String? validateNull(String? value) {
    if (value!.isEmpty) {
      return 'o número não pode ser nulo!';
    }
    return null;
  }

  void calculateNumber() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    try {
      provider.clear();
      final int number = int.parse(numberController.text);
      final numbers = <int>[];

      for (int i = 1; i < number; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
          numbers.add(i);
        }
      }
      provider.calcResult(numbers);
    } catch (e) {
      return;
    }
  }
}
