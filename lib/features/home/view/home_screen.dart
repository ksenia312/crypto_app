import 'package:crypto_app/features/home/cubit/home_cubit.dart';
import 'package:crypto_app/features/home/cubit/home_state.dart';
import 'package:crypto_app/shared/state/app_state.dart';
import 'package:crypto_app/shared/ui/errors/error_text_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => GetIt.instance()..init(),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<HomeCubit, AsyncState<HomeAppState>>(
          builder: (context, state) {
            return state.when(
              loading: (_) => Center(child: CircularProgressIndicator.adaptive()),
              data: (data) => ListView(
                shrinkWrap: true,
                children: [
                  ...data.coins.map(
                    (e) => ListTile(
                      title: Text(e.name ?? 'Unknown name'),
                    ),
                  ),
                ],
              ),
              error: (e, _) => Center(child: Text(ErrorTextGenerator.generate(e))),
            );
          },
        ),
      ),
    );
  }
}
