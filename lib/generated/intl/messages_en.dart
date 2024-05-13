// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "emailfielderror":
            MessageLookupByLibrary.simpleMessage("Please Enter Your E-mail"),
        "emailhint": MessageLookupByLibrary.simpleMessage("Enter Your E-mail"),
        "forgetpassword":
            MessageLookupByLibrary.simpleMessage("Forget Password"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginhint": MessageLookupByLibrary.simpleMessage(
            "Please Enter Your E-mail and Password"),
        "logininQ":
            MessageLookupByLibrary.simpleMessage("Don`t have an account?"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordfielderror":
            MessageLookupByLibrary.simpleMessage("Please Enter Your Password"),
        "passwordhint":
            MessageLookupByLibrary.simpleMessage("Enter Your Password"),
        "signUpQ": MessageLookupByLibrary.simpleMessage("Are you have acount?"),
        "signup": MessageLookupByLibrary.simpleMessage("SignUp"),
        "username": MessageLookupByLibrary.simpleMessage("UserName"),
        "usernamefielderror": MessageLookupByLibrary.simpleMessage(
            "Please Enter Your E-mail or Password"),
        "usernamehint": MessageLookupByLibrary.simpleMessage(
            "Enter Your E-mail or Username")
      };
}
