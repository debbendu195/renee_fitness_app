// ignore_for_file: prefer_const_constructors
import 'package:get/get.dart';
import '../../view/screens/authentication/forgot_password/forgot_pass_screen.dart';
import '../../view/screens/authentication/login/login_screen.dart';
import '../../view/screens/authentication/register/registration_screen.dart';
import '../../view/screens/authentication/update_password/set_new_password.dart';
import '../../view/screens/authentication/verify_otp/verify_otp_screen.dart';
import '../../view/screens/home_screen/booking_confirmed_screen.dart';
import '../../view/screens/home_screen/home_screen.dart';
import '../../view/screens/home_screen/notification_screen.dart';
import '../../view/screens/home_screen/personal_details_screen.dart';
import '../../view/screens/home_screen/select_date_time_screen.dart';
import '../../view/screens/onboarding_screen/view/onboarding_screen.dart';
import '../../view/screens/profile_screen/about_us_screen.dart';
import '../../view/screens/profile_screen/change_password_screen.dart';
import '../../view/screens/profile_screen/contact_us_screen.dart';
import '../../view/screens/profile_screen/edit_profile_screen.dart';
import '../../view/screens/profile_screen/help_support_screen.dart';
import '../../view/screens/profile_screen/privacy_screen.dart';
import '../../view/screens/profile_screen/terms_screen.dart';
import '../../view/screens/services_screen/services_screen.dart';
import '../../view/screens/splash_screen/splash_screen.dart';
class AppRoutes {

  ///===========================Authentication Part=========================
  static const String splashScreen = "/SplashScreen";
  static const String onboardingScreen = "/OnboardingScreen";
  static const String loginScreen = "/LoginScreen";
  static const String homeScreen = "/HomeScreen";
  static const String servicesScreen = "/ServicesScreen";
  static const String selectDateTimeScreen = "/SelectDateTimeScreen";
  static const String personalDetailsScreen = "/PersonalDetailsScreen";
  static const String bookingConfirmedScreen = "/BookingConfirmedScreen";
  static const String editProfileScreen = "/EditProfileScreen";
  static const String changePasswordScreen = "/ChangePasswordScreen";
  static const String termsScreen = "/TermsScreen";
  static const String privacyScreen = "/PrivacyScreen";
  static const String aboutUsScreen = "/AboutUsScreen";
  static const String helpSupportScreen = "/HelpSupportScreen";
  static const String contactUsScreen = "/ContactUsScreen";
  static const String registrationScreen = "/RegistrationScreen";
  static const String forgotPassScreen = "/ForgotPassScreen";
  static const String verifyOtpScreen = "/VerifyOtpScreen";
  static const String setNewPassword = "/SetNewPassword";
  static const String notificationScreen = "/NotificationScreen";





  static List<GetPage> routes = [
    ///===========================Authentication Part===========================
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: onboardingScreen, page: () => OnboardingScreen()),
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: servicesScreen, page: () => ServicesScreen()),
    GetPage(name: selectDateTimeScreen, page: () => SelectDateTimeScreen()),
    GetPage(name: personalDetailsScreen, page: () => PersonalDetailsScreen()),
    GetPage(name: bookingConfirmedScreen, page: () => BookingConfirmedScreen()),
    GetPage(name: editProfileScreen, page: () => EditProfileScreen()),
    GetPage(name: changePasswordScreen, page: () => ChangePasswordScreen()),
    GetPage(name: termsScreen, page: () => TermsScreen()),
    GetPage(name: privacyScreen, page: () => PrivacyScreen()),
    GetPage(name: aboutUsScreen, page: () => AboutUsScreen()),
    GetPage(name: helpSupportScreen, page: () => HelpSupportScreen()),
    GetPage(name: contactUsScreen, page: () => ContactUsScreen()),
    GetPage(name: registrationScreen, page: () => RegistrationScreen()),
    GetPage(name: forgotPassScreen, page: () => ForgotPassScreen()),
    GetPage(name: verifyOtpScreen, page: () => VerifyOtpScreen()),
    GetPage(name: setNewPassword, page: () => SetNewPassword()),
    GetPage(name: notificationScreen, page: () => NotificationScreen()),

  ];
}
