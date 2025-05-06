// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Skin Care App';

  @override
  String get login => 'Login';

  @override
  String get signup => 'Sign Up';

  @override
  String get cameraCapture => 'Capture Image';

  @override
  String get resultTitle => 'Skin Type Result';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Skip';

  @override
  String get home => 'Home';

  @override
  String get categories => 'Categories';

  @override
  String get profile => 'Profile';

  @override
  String get changePassword => 'Change Password';

  @override
  String get oldPassword => 'Old Password';

  @override
  String get newPassword => 'New Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get passwordsDoNotMatch => 'Passwords do not match';

  @override
  String get min6Chars => 'Minimum 6 characters required';

  @override
  String get save => 'Save';

  @override
  String get passwordChanged => 'Password changed successfully';
}
