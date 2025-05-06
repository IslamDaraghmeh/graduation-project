// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SAr extends S {
  SAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'تطبيق العناية بالبشرة';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get signup => 'إنشاء حساب';

  @override
  String get cameraCapture => 'التقاط صورة';

  @override
  String get resultTitle => 'نتيجة نوع البشرة';

  @override
  String get getStarted => 'ابدأ الآن';

  @override
  String get skip => 'تخطي';

  @override
  String get home => 'الرئيسية';

  @override
  String get categories => 'الفئات';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get changePassword => 'تغيير كلمة المرور';

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
