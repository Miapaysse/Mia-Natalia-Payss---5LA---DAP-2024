import 'package:clase18_4/presentation/viewmodels/states/home_screen_state.dart';
import 'package:clase18_4/presentation/viewmodels/states/info_empleados_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifiers/home_screen_notifier.dart';
import 'notifiers/info_empleados_screen_notifier.dart';

// Home Screen ViewModel Provider
final homeScreenViewModelProvider = 
    NotifierProvider<HomeScreenNotifier, HomeScreenState>(HomeScreenNotifier.new);

// Info Empleados Screen ViewModel Provider
final infoempleadosScreenViewModelProvider = 
    AutoDisposeNotifierProvider<InfoempleadosScreenNotifier, InfoempleadosScreenState>(
      InfoempleadosScreenNotifier.new,
    );
