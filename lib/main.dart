import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/examples/bloc_example/bloc_app.dart';

void main() => BlocOverrides.runZoned(
      () => runApp(const BlocApp()),
      blocObserver: AppBlocObserver(),
    );
