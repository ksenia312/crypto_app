import 'package:crypto_app/features/home/cubit/home_cubit.dart';
import 'package:crypto_app/features/home/cubit/home_state.dart';
import 'package:crypto_app/features/home/view/home_error_view.dart';
import 'package:crypto_app/features/home/view/home_success_view.dart';
import 'package:crypto_app/features/home/view/widgets/home_app_bar.dart';
import 'package:crypto_app/shared/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => GetIt.instance()..refresh(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: HomeAppBar(),
          body: RefreshIndicator(
            onRefresh: context.read<HomeCubit>().refresh,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              child: CustomScrollView(
                slivers: [
                  BlocBuilder<HomeCubit, AsyncState<HomeAppState>>(
                    builder: (context, state) {
                      return state.when(
                        loading: (_) => SliverFillRemaining(
                          child: Center(child: CircularProgressIndicator.adaptive()),
                        ),
                        error: (e, _) => SliverFillRemaining(
                          child: HomeErrorView(e: e),
                        ),
                        data: (data) => SliverToBoxAdapter(
                          child: HomeSuccessView(data: data),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
