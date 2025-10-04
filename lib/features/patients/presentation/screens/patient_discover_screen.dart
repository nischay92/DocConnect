import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/ui/theme/app_colors.dart';
import '../../../../core/ui/theme/app_icons.dart';
import '../../../doctors/data/doctor_repository.dart';
import '../../../doctors/domain/models.dart';
import '../../application/doctor_search_controller.dart';

class PatientDiscoverScreen extends ConsumerWidget {
  const PatientDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(doctorSearchControllerProvider);
    final doctorsAsync = ref.watch(doctorSearchResultsProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Find Your Care Team',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          IconButton(
            icon: const Icon(AppIcons.filter),
            onPressed: () => _showFilterSheet(context, ref, searchState),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Search by name, specialty, or clinic',
                prefixIcon: Icon(Icons.search),
              ),
            onChanged: (value) =>
                ref.read(doctorSearchControllerProvider.notifier).setQuery(value),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: doctorsAsync.when(
                data: (doctors) {
                  if (doctors.isEmpty) {
                    return const _EmptyState();
                  }
                  return ListView.separated(
                    itemCount: doctors.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      final doctor = doctors[index];
                      return _DoctorCard(doctor: doctor);
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) => Center(
                  child: Text('Something went wrong: $error'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFilterSheet(
    BuildContext context,
    WidgetRef ref,
    DoctorSearchState state,
  ) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) {
        final controller = ref.read(doctorSearchControllerProvider.notifier);
        final specialties = ref.read(doctorRepositoryProvider).availableSpecialties;
        final insurances = ref.read(doctorRepositoryProvider).availableInsurances;

        return Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: MediaQuery.of(context).padding.bottom + 24,
            top: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Filters',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              _FilterSection(
                title: 'Specialty',
                options: specialties,
                selected: state.specialty,
                onSelected: controller.setSpecialty,
              ),
              const SizedBox(height: 16),
              _FilterSection(
                title: 'Insurance',
                options: insurances,
                selected: state.insurance,
                onSelected: controller.setInsurance,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        controller.clearFilters();
                        Navigator.of(context).pop();
                      },
                      child: const Text('Clear'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Apply'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _FilterSection extends StatelessWidget {
  const _FilterSection({
    required this.title,
    required this.options,
    required this.onSelected,
    this.selected,
  });

  final String title;
  final List<String> options;
  final String? selected;
  final ValueChanged<String?> onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: AppColors.neutralTextSecondary),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: options.map((option) {
            final isSelected = option == selected;
            return ChoiceChip(
              label: Text(option),
              selected: isSelected,
              onSelected: (_) => onSelected(isSelected ? null : option),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(AppIcons.specialty,
              size: 56, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: 16),
          Text(
            'No doctors match your filters yet',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Adjust your filters or try searching for a different specialty or location.',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.neutralTextSecondary),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _DoctorCard extends StatelessWidget {
  const _DoctorCard({required this.doctor});

  final DoctorProfile doctor;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: AppColors.primaryTeal.withAlpha(40),
              child: const Icon(AppIcons.profile, color: AppColors.primaryTeal, size: 28),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. ${doctor.fullName}',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    doctor.specialty,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.neutralTextSecondary),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(AppIcons.appointment, size: 16, color: AppColors.primaryBlue),
                      const SizedBox(width: 6),
                      Text(
                        '${doctor.yearsOfExperience} years experience',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: AppColors.neutralTextSecondary),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(AppIcons.location, size: 16, color: AppColors.primaryBlue),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          doctor.clinic.address,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: AppColors.neutralTextSecondary),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    children: doctor.acceptedInsurance.take(3).map((plan) {
                      return Chip(
                        label: Text(plan),
                        visualDensity: VisualDensity.compact,
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      FilledButton.icon(
                        onPressed: () {},
                        icon: const Icon(AppIcons.appointment),
                        label: const Text('Book appointment'),
                      ),
                      const SizedBox(width: 12),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(AppIcons.message),
                        label: const Text('Message'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
