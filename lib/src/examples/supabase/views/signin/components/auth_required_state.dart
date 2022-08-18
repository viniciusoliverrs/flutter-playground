import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../sign_in_view.dart';

class AuthRequiredState<T extends StatefulWidget>
    extends SupabaseAuthRequiredState<T> {
  @override
  void onUnauthenticated() {
    /// Users will be sent back to the LoginPage if they sign out.
    if (mounted) {
      /// Users will be sent back to the LoginPage if they sign out.
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SignInView(),
        ),
      );
    }
  }
}