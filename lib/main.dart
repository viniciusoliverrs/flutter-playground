import 'package:flutter/material.dart';
import 'package:flutter_playground/src/examples/supabase/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// void main() => BlocOverrides.runZoned(
//       () => runApp(const BlocApp()),
//       blocObserver: AppBlocObserver(),
//     );

// void main() => runApp(const MaterialApp(home: MyHome()));

// void main() => runApp(
//       ModularApp(
//         module: AppModule(),
//         child: const AppWidget(),
//       ),
//     );

// void main(){ runApp(const GetApp());}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ritrydzsetplxykawwtu.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJpdHJ5ZHpzZXRwbHh5a2F3d3R1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjA0MzcxOTEsImV4cCI6MTk3NjAxMzE5MX0.aulLKNF_QeF_rYqVlFKaYJfIfo68-71LwFLuoN-nv-o',
  );

  runApp(const  App());
}