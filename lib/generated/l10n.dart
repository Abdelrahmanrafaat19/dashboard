// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your E-mail and Password`
  String get loginhint {
    return Intl.message(
      'Please Enter Your E-mail and Password',
      name: 'loginhint',
      desc: '',
      args: [],
    );
  }

  /// `UserName`
  String get username {
    return Intl.message(
      'UserName',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email {
    return Intl.message(
      'E-mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forgetpassword {
    return Intl.message(
      'Forget Password',
      name: 'forgetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get logininQ {
    return Intl.message(
      'Don`t have an account?',
      name: 'logininQ',
      desc: '',
      args: [],
    );
  }

  /// `SignUp`
  String get signup {
    return Intl.message(
      'SignUp',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your E-mail or Username`
  String get usernamehint {
    return Intl.message(
      'Enter Your E-mail or Username',
      name: 'usernamehint',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Password`
  String get passwordhint {
    return Intl.message(
      'Enter Your Password',
      name: 'passwordhint',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your E-mail or Password`
  String get usernamefielderror {
    return Intl.message(
      'Please Enter Your E-mail or Password',
      name: 'usernamefielderror',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Password`
  String get passwordfielderror {
    return Intl.message(
      'Please Enter Your Password',
      name: 'passwordfielderror',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your E-mail`
  String get emailhint {
    return Intl.message(
      'Enter Your E-mail',
      name: 'emailhint',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your E-mail`
  String get emailfielderror {
    return Intl.message(
      'Please Enter Your E-mail',
      name: 'emailfielderror',
      desc: '',
      args: [],
    );
  }

  /// `Are you have acount?`
  String get signUpQ {
    return Intl.message(
      'Are you have acount?',
      name: 'signUpQ',
      desc: '',
      args: [],
    );
  }

  /// `The Registration is Completed`
  String get signupsuccessatate {
    return Intl.message(
      'The Registration is Completed',
      name: 'signupsuccessatate',
      desc: '',
      args: [],
    );
  }

  /// `This Data Already Existing`
  String get signupfailurestate {
    return Intl.message(
      'This Data Already Existing',
      name: 'signupfailurestate',
      desc: '',
      args: [],
    );
  }

  /// `The E-mail or Password is Error`
  String get loginfailurestate {
    return Intl.message(
      'The E-mail or Password is Error',
      name: 'loginfailurestate',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `This E-mail isn't Exisit`
  String get forgetpasswordfailurestate {
    return Intl.message(
      'This E-mail isn`t Exisit',
      name: 'forgetpasswordfailurestate',
      desc: '',
      args: [],
    );
  }

  /// `Check Your E-mail`
  String get forgetpasswordsuccessstate {
    return Intl.message(
      'Check Your E-mail',
      name: 'forgetpasswordsuccessstate',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetpassword {
    return Intl.message(
      'Reset Password',
      name: 'resetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Congfirm Password`
  String get confirmpasswoed {
    return Intl.message(
      'Congfirm Password',
      name: 'confirmpasswoed',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message(
      'Code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Enter Code Sent`
  String get codehint {
    return Intl.message(
      'Enter Code Sent',
      name: 'codehint',
      desc: '',
      args: [],
    );
  }

  /// `Must Be Enter Code Sent`
  String get codeerrorfield {
    return Intl.message(
      'Must Be Enter Code Sent',
      name: 'codeerrorfield',
      desc: '',
      args: [],
    );
  }

  /// `This Code is Not Correct`
  String get resetpasswordfailurestate {
    return Intl.message(
      'This Code is Not Correct',
      name: 'resetpasswordfailurestate',
      desc: '',
      args: [],
    );
  }

  /// `The password and Confirm Password Must Be Same`
  String get resetpasswordcheck {
    return Intl.message(
      'The password and Confirm Password Must Be Same',
      name: 'resetpasswordcheck',
      desc: '',
      args: [],
    );
  }

  /// `Book-Appintment`
  String get bookappointment {
    return Intl.message(
      'Book-Appintment',
      name: 'bookappointment',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Phone`
  String get phonehint {
    return Intl.message(
      'Enter Your Phone',
      name: 'phonehint',
      desc: '',
      args: [],
    );
  }

  /// `Must Be Enter Your Phone`
  String get phoneerrorfield {
    return Intl.message(
      'Must Be Enter Your Phone',
      name: 'phoneerrorfield',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Age`
  String get agehint {
    return Intl.message(
      'Enter Your Age',
      name: 'agehint',
      desc: '',
      args: [],
    );
  }

  /// `Must Be Enter Your Age`
  String get ageerrorfield {
    return Intl.message(
      'Must Be Enter Your Age',
      name: 'ageerrorfield',
      desc: '',
      args: [],
    );
  }

  /// `Perfered Contact`
  String get PerferedContact {
    return Intl.message(
      'Perfered Contact',
      name: 'PerferedContact',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get choose {
    return Intl.message(
      'Choose',
      name: 'choose',
      desc: '',
      args: [],
    );
  }

  /// `Must Be Choose Your PerferedContact`
  String get PerferedContacterrorfield {
    return Intl.message(
      'Must Be Choose Your PerferedContact',
      name: 'PerferedContacterrorfield',
      desc: '',
      args: [],
    );
  }

  /// `Service`
  String get service {
    return Intl.message(
      'Service',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `Must Be Choose Your Service`
  String get serviceerrorfield {
    return Intl.message(
      'Must Be Choose Your Service',
      name: 'serviceerrorfield',
      desc: '',
      args: [],
    );
  }

  /// `Service Type`
  String get servicetype {
    return Intl.message(
      'Service Type',
      name: 'servicetype',
      desc: '',
      args: [],
    );
  }

  /// `Must Be Choose Your Service Type`
  String get servicetypeerror {
    return Intl.message(
      'Must Be Choose Your Service Type',
      name: 'servicetypeerror',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Message`
  String get messagehint {
    return Intl.message(
      'Enter Your Message',
      name: 'messagehint',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Username`
  String get name {
    return Intl.message(
      'Enter Your Username',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Must Be Enter You Username`
  String get nameerrorfield {
    return Intl.message(
      'Must Be Enter You Username',
      name: 'nameerrorfield',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
