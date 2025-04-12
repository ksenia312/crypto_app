import 'package:crypto_app/domain/model/app_exception.dart';
import 'package:crypto_app/shared/localization/error_text_generator.dart';
import 'package:flutter/material.dart';

class HomeErrorView extends StatelessWidget {
  const HomeErrorView({super.key, required this.e});

  final AppException e;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        ErrorTextGenerator.generate(e),
      ),
    );
  }
}
