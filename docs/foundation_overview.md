# DocConnect Architecture Foundation

## Project Structure
- `lib/core/`
  - `config/`: Environment configuration, constants, and Firebase initialization helpers (planned).
  - `routing/`: Global navigation setup. Currently hosts `app_router.dart` with splash entry point.
  - `theme/`: Centralized theming (`AppTheme`) for Material 3 look-and-feel.
  - `utils/`, `widgets/`: Reserved for cross-feature helpers and reusable UI components.
- `lib/features/`
  - Feature-first organization for `auth`, `patients`, `doctors`, `appointments`, `messaging`, `reviews`, `telemedicine`.
  - Each feature has `data/`, `domain/`, `presentation/` folders to align with clean architecture boundaries.
- `lib/main.dart`
  - Boots the app inside a `ProviderScope` (Riverpod) and applies `MaterialApp.router` with the global router and theme.

## Dependencies
- **State management**: `flutter_riverpod`, `riverpod`.
- **Routing**: `go_router`.
- **Immutability & serialization**: `freezed_annotation`, `json_annotation` with dev tooling `build_runner`, `freezed`, `json_serializable`.
- **Firebase stack**: `firebase_core`, `firebase_auth`, `cloud_firestore`, `firebase_storage`, `firebase_messaging`.
- **Utilities**: `intl`, `flutter_dotenv`, `google_maps_flutter` (stub for map view).

## Immediate Next Steps
1. Configure Firebase project and environments.
   - Run `flutterfire configure` per flavor (dev/prod) once Firebase project exists.
   - Decide on Firebase rules strategy and Cloud Functions deployment location.
2. Lay down environment management.
   - Introduce app flavors (`dev`, `prod`) and `.env` handling for third-party keys (Agora/Twilio).
3. Implement authentication flow scaffold.
   - Initialize Firebase in `main.dart` and wire auth state to router redirect.
   - Draft onboarding screens for role selection (Patient vs Doctor).
4. Establish CI/testing baselines (optional early stage).

Let me know if you’d like changes to the structure or dependency set before we proceed to Firebase setup.
