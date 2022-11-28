import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:world_time_app_bloc/features/home/bloc/home_bloc.dart';
import 'package:world_time_app_bloc/features/home/widgets/grouped_timezones_widget.dart';
import 'package:world_time_app_bloc/features/home/widgets/home_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;
    return Scaffold(
      appBar: HomeAppBar(context: context),
      body: state.when(
        initial: () => const Text("initial"),
        loading: () => const Center(child: CircularProgressIndicator()),
        onError: (message) => Text("Error: $message"),
        loaded: (timezones, filtered) => GroupedTimezonesWidget(
          timezones: timezones,
          filtered: filtered,
        ),
      ),
    );
  }
}
