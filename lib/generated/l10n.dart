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
