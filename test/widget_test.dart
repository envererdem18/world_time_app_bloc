// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:world_time_app_bloc/features/home/bloc/home_bloc.dart';
import 'package:world_time_app_bloc/injection.dart';

void main() {
  group('HomeBloc', () {
    setUp(() async {
      await GetIt.I.reset();
      await configureDependencies();
    });

    blocTest<HomeBloc, HomeState>(
      'emits [initial] when HomeEvent.onStarted() is added',
      build: getIt,
      act: (bloc) => bloc.add(const HomeEvent.onStarted()),
      expect: () => [const HomeState.initial()],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [list of timezone] when HomeEvent.getTimezones() is added',
      build: getIt,
      act: (bloc) => bloc.add(const HomeEvent.getTimezones()),
      expect: () => [
        const HomeState.loading(),
        // const HomeState.loaded(timezones: <Timezone>[])
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [list of filtered timezone] when HomeEvent.onStarted() is added',
      build: getIt,
      act: (bloc) => bloc.add(const HomeEvent.filter("Lo")),
      expect: () => [
        const HomeState.onError("could not loaded"),
      ],
    );
  });
}
