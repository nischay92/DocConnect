import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../auth/presentation/controllers/auth_controller.dart';
import '../../../auth/presentation/screens/auth_gate.dart';
import '../../data/doctor_repository.dart';
import '../../domain/models.dart';

class DoctorProfileFlow extends ConsumerStatefulWidget {
  const DoctorProfileFlow({super.key});

  static const routePath = '/doctor/profile';
  static const routeName = 'doctor-profile';

  @override
  ConsumerState<DoctorProfileFlow> createState() => _DoctorProfileFlowState();
}

class _DoctorProfileFlowState extends ConsumerState<DoctorProfileFlow> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _specialtyController = TextEditingController();
  final _experienceController = TextEditingController();
  final _clinicNameController = TextEditingController();
  final _clinicAddressController = TextEditingController();
  final _clinicPhoneController = TextEditingController();
  final _clinicWebsiteController = TextEditingController();
  final _bioController = TextEditingController();
  final _insuranceController = TextEditingController();

  bool _isSaving = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _specialtyController.dispose();
    _experienceController.dispose();
    _clinicNameController.dispose();
    _clinicAddressController.dispose();
    _clinicPhoneController.dispose();
    _clinicWebsiteController.dispose();
    _bioController.dispose();
    _insuranceController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_formKey.currentState?.validate() != true) return;

    final authState = ref.read(authUserProvider);
    final user = authState.value;
    if (user == null) return;

    final repository = ref.read(doctorRepositoryProvider);
    final userRepository = ref.read(userRepositoryProvider);
    final acceptedInsurance = _insuranceController.text
        .split(',')
        .map((e) => e.trim())
        .where((element) => element.isNotEmpty)
        .toList();

    final profile = DoctorProfile(
      uid: user.uid,
      fullName: _fullNameController.text.trim(),
      specialty: _specialtyController.text.trim(),
      yearsOfExperience: int.tryParse(_experienceController.text.trim()) ?? 0,
      clinic: ClinicInfo(
        name: _clinicNameController.text.trim(),
        address: _clinicAddressController.text.trim(),
        phone: _clinicPhoneController.text.trim().isEmpty
            ? null
            : _clinicPhoneController.text.trim(),
        website: _clinicWebsiteController.text.trim().isEmpty
            ? null
            : _clinicWebsiteController.text.trim(),
      ),
      acceptedInsurance: acceptedInsurance,
      bio: _bioController.text.trim().isEmpty ? null : _bioController.text.trim(),
      updatedAt: DateTime.now(),
    );

    setState(() => _isSaving = true);
    try {
      await repository.upsert(profile);
      await userRepository.setProfileCompleted(user.uid, value: true);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save profile: $e')),
      );
      setState(() => _isSaving = false);
      return;
    }

    if (!mounted) return;
    setState(() => _isSaving = false);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Profile saved')),
    );
    context.go(AuthGate.routePath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Doctor Profile')),
      body: SafeArea(
        child: Stack(
          children: [
            Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.all(24),
                children: [
                  TextFormField(
                    controller: _fullNameController,
                    decoration: const InputDecoration(labelText: 'Full Name'),
                    validator: (value) =>
                        value == null || value.isEmpty ? 'Required' : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _specialtyController,
                    decoration: const InputDecoration(labelText: 'Specialty'),
                    validator: (value) =>
                        value == null || value.isEmpty ? 'Required' : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _experienceController,
                    decoration: const InputDecoration(labelText: 'Years of Experience'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) return 'Required';
                      final years = int.tryParse(value);
                      if (years == null || years < 0) {
                        return 'Enter a valid number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Clinic Information',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _clinicNameController,
                    decoration: const InputDecoration(labelText: 'Clinic/Practice Name'),
                    validator: (value) =>
                        value == null || value.isEmpty ? 'Required' : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _clinicAddressController,
                    decoration: const InputDecoration(labelText: 'Clinic Address'),
                    maxLines: 2,
                    validator: (value) =>
                        value == null || value.isEmpty ? 'Required' : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _clinicPhoneController,
                    decoration: const InputDecoration(labelText: 'Clinic Phone (optional)'),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _clinicWebsiteController,
                    decoration: const InputDecoration(labelText: 'Website (optional)'),
                    keyboardType: TextInputType.url,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _insuranceController,
                    decoration: const InputDecoration(
                      labelText: 'Accepted Insurance (comma-separated)',
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _bioController,
                    decoration: const InputDecoration(
                      labelText: 'Bio (optional)',
                    ),
                    maxLines: 4,
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: _isSaving ? null : _submit,
                    child: _isSaving
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Save Profile'),
                  ),
                ],
              ),
            ),
            if (_isSaving)
              const Positioned.fill(
                child: ColoredBox(
                  color: Colors.black38,
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
