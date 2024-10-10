import 'package:clase18_4/presentation/Screens/home_screen.dart';
import 'package:clase18_4/presentation/Screens/infoempleados_screen.dart';
import 'package:clase18_4/presentation/viewmodels/states/home_screen_state.dart';
import 'package:clase18_4/presentation/viewmodels/states/info_empleados_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifiers/home_screen_notifier.dart';



import 'states/home_screen_state.dart';

final homeScreeniewhomeScreenViewModelProvider =
    NotifierProvider<HomeScreenNotifier, HomeScreenState>(HomeScreenNotifier.new);

final InfoempleadosScreenViewModelProvider =
    AutoDisposeNotifierProvider<InfoempleadosScreenNotifier, InfoempleadosScreenState>(
        InfoempleadosScreenNotifier.new);
