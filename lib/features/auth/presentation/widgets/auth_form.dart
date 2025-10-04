import 'package:flutter/material.dart';

import '../../domain/user_role.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({
    super.key,
    required this.isSignIn,
    required this.onSubmit,
  });

  final bool isSignIn;
  final Future<void> Function(String email, String password, UserRole? role) onSubmit;

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  UserRole _selectedRole = UserRole.patient;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  Future<void> _handleSubmit() async {
    if (_formKey.currentState?.validate() != true) {
      return;
    }
    await widget.onSubmit(
      _emailController.text.trim(),
      _passwordController.text,
      widget.isSignIn ? null : _selectedRole,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            validator: _validateEmail,
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
            validator: _validatePassword,
          ),
          const SizedBox(height: 16),
          if (!widget.isSignIn) ...[
            const Text('Select your role'),
            const SizedBox(height: 8),
            DropdownButtonFormField<UserRole>(
              initialValue: _selectedRole,
              items: UserRole.values
                  .map(
                    (role) => DropdownMenuItem(
                      value: role,
                      child: Text(role.label),
                    ),
                  )
                  .toList(),
              onChanged: (role) {
                if (role != null) {
                  setState(() {
                    _selectedRole = role;
                  });
                }
              },
            ),
            const SizedBox(height: 16),
          ],
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _handleSubmit,
              child: Text(widget.isSignIn ? 'Sign In' : 'Create Account'),
            ),
          ),
        ],
      ),
    );
  }
}
