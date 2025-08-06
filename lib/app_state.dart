import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Lang = prefs
              .getStringList('ff_Lang')
              ?.map((x) {
                try {
                  return LanguagesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Lang;
    });
    _safeInit(() {
      _notifications = prefs
              .getStringList('ff_notifications')
              ?.map((x) {
                try {
                  return NotificationsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _notifications;
    });
    _safeInit(() {
      _countries = prefs
              .getStringList('ff_countries')
              ?.map((x) {
                try {
                  return FlagsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _countries;
    });
    _safeInit(() {
      _paymentMethod = prefs
              .getStringList('ff_paymentMethod')
              ?.map((x) {
                try {
                  return PaymentStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _paymentMethod;
    });
    _safeInit(() {
      _Language = prefs.getString('ff_Language') ?? _Language;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _updater = false;
  bool get updater => _updater;
  set updater(bool value) {
    _updater = value;
  }

  int _Tab = 0;
  int get Tab => _Tab;
  set Tab(int value) {
    _Tab = value;
  }

  bool _Switch1 = true;
  bool get Switch1 => _Switch1;
  set Switch1(bool value) {
    _Switch1 = value;
  }

  bool _Switch2 = true;
  bool get Switch2 => _Switch2;
  set Switch2(bool value) {
    _Switch2 = value;
  }

  bool _Switch3 = true;
  bool get Switch3 => _Switch3;
  set Switch3(bool value) {
    _Switch3 = value;
  }

  bool _Switch4 = false;
  bool get Switch4 => _Switch4;
  set Switch4(bool value) {
    _Switch4 = value;
  }

  bool _Switch5 = false;
  bool get Switch5 => _Switch5;
  set Switch5(bool value) {
    _Switch5 = value;
  }

  bool _Switch6 = true;
  bool get Switch6 => _Switch6;
  set Switch6(bool value) {
    _Switch6 = value;
  }

  bool _Switch7 = false;
  bool get Switch7 => _Switch7;
  set Switch7(bool value) {
    _Switch7 = value;
  }

  bool _Switch8 = false;
  bool get Switch8 => _Switch8;
  set Switch8(bool value) {
    _Switch8 = value;
  }

  bool _Switch9 = true;
  bool get Switch9 => _Switch9;
  set Switch9(bool value) {
    _Switch9 = value;
  }

  bool _Switch10 = true;
  bool get Switch10 => _Switch10;
  set Switch10(bool value) {
    _Switch10 = value;
  }

  bool _Switch11 = false;
  bool get Switch11 => _Switch11;
  set Switch11(bool value) {
    _Switch11 = value;
  }

  bool _Switch12 = false;
  bool get Switch12 => _Switch12;
  set Switch12(bool value) {
    _Switch12 = value;
  }

  List<LanguagesStruct> _Lang = [
    LanguagesStruct.fromSerializableMap(jsonDecode(
        '{\"img\":\"https://firebasestorage.googleapis.com/v0/b/datinger-e2bc1.appspot.com/o/image_2024-09-03_21-04-31.png?alt=media&token=7d727615-4daa-4fce-8311-aaf932e7d6e8\",\"title\":\"English (US)\"}')),
    LanguagesStruct.fromSerializableMap(jsonDecode(
        '{\"img\":\"https://firebasestorage.googleapis.com/v0/b/datinger-e2bc1.appspot.com/o/image_2024-09-03_21-04-49.png?alt=media&token=86fc3a2f-af7c-4e79-a425-db3595894a77\",\"title\":\"English (UK)\"}')),
    LanguagesStruct.fromSerializableMap(jsonDecode(
        '{\"img\":\"https://firebasestorage.googleapis.com/v0/b/datinger-e2bc1.appspot.com/o/image_2024-09-03_21-05-05.png?alt=media&token=e8fc1ae4-4060-4c53-9452-17d8825120c5\",\"title\":\"Mandarin\"}')),
    LanguagesStruct.fromSerializableMap(jsonDecode(
        '{\"img\":\"https://firebasestorage.googleapis.com/v0/b/datinger-e2bc1.appspot.com/o/image_2024-09-03_21-05-19.png?alt=media&token=240aff33-6e71-4cd7-97ba-12810162bfb5\",\"title\":\"Spanish\"}')),
    LanguagesStruct.fromSerializableMap(jsonDecode(
        '{\"img\":\"https://firebasestorage.googleapis.com/v0/b/datinger-e2bc1.appspot.com/o/image_2024-09-03_21-05-36.png?alt=media&token=67367c11-1ce1-48cf-8dfb-52bc78a2e11b\",\"title\":\"Hindi\"}')),
    LanguagesStruct.fromSerializableMap(jsonDecode(
        '{\"img\":\"https://firebasestorage.googleapis.com/v0/b/datinger-e2bc1.appspot.com/o/image_2024-09-03_21-05-51.png?alt=media&token=df7d997f-7081-45bf-8f35-f2c4b904c4b8\",\"title\":\"French\"}')),
    LanguagesStruct.fromSerializableMap(jsonDecode(
        '{\"img\":\"https://firebasestorage.googleapis.com/v0/b/datinger-e2bc1.appspot.com/o/image_2024-09-03_21-06-11.png?alt=media&token=413da6b3-a070-4229-9632-a04b70e78eb1\",\"title\":\"Arabic\"}')),
    LanguagesStruct.fromSerializableMap(jsonDecode(
        '{\"img\":\"https://firebasestorage.googleapis.com/v0/b/datinger-e2bc1.appspot.com/o/image_2024-09-03_21-06-29.png?alt=media&token=45713e7e-7258-4c8d-b912-23d35d9902b8\",\"title\":\"Russian\"}')),
    LanguagesStruct.fromSerializableMap(jsonDecode(
        '{\"img\":\"https://firebasestorage.googleapis.com/v0/b/datinger-e2bc1.appspot.com/o/image_2024-09-03_21-06-45.png?alt=media&token=7188e698-9ec0-4f9b-b85d-9ed137e1c81c\",\"title\":\"Japanese\"}'))
  ];
  List<LanguagesStruct> get Lang => _Lang;
  set Lang(List<LanguagesStruct> value) {
    _Lang = value;
    prefs.setStringList('ff_Lang', value.map((x) => x.serialize()).toList());
  }

  void addToLang(LanguagesStruct value) {
    Lang.add(value);
    prefs.setStringList('ff_Lang', _Lang.map((x) => x.serialize()).toList());
  }

  void removeFromLang(LanguagesStruct value) {
    Lang.remove(value);
    prefs.setStringList('ff_Lang', _Lang.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLang(int index) {
    Lang.removeAt(index);
    prefs.setStringList('ff_Lang', _Lang.map((x) => x.serialize()).toList());
  }

  void updateLangAtIndex(
    int index,
    LanguagesStruct Function(LanguagesStruct) updateFn,
  ) {
    Lang[index] = updateFn(_Lang[index]);
    prefs.setStringList('ff_Lang', _Lang.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLang(int index, LanguagesStruct value) {
    Lang.insert(index, value);
    prefs.setStringList('ff_Lang', _Lang.map((x) => x.serialize()).toList());
  }

  List<String> _chatMessages = [];
  List<String> get chatMessages => _chatMessages;
  set chatMessages(List<String> value) {
    _chatMessages = value;
  }

  void addToChatMessages(String value) {
    chatMessages.add(value);
  }

  void removeFromChatMessages(String value) {
    chatMessages.remove(value);
  }

  void removeAtIndexFromChatMessages(int index) {
    chatMessages.removeAt(index);
  }

  void updateChatMessagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    chatMessages[index] = updateFn(_chatMessages[index]);
  }

  void insertAtIndexInChatMessages(int index, String value) {
    chatMessages.insert(index, value);
  }

  List<NotificationsStruct> _notifications = [
    NotificationsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Account Security Alert\",\"Description\":\"We\'ve noticed some unusual activity on your account. Please review your recent logins and update your password if necessary.\",\"time\":\"09:41 AM\"}')),
    NotificationsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"System Update Available\",\"Description\":\"A new system update is ready for installation. It includes performance improvements and bug fixes.\",\"time\":\"08:46 AM\"}')),
    NotificationsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Password Reset Successful\",\"Description\":\"Your password has been successfully reset. If you didn\'t request this change, please contact support immediately.\",\"time\":\"20:30 PM\"}')),
    NotificationsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Exciting New Feature NEW\",\"Description\":\"We\'ve just launched a new feature that will enhance your user experience. Check it out now!\",\"time\":\"16:29 PM\"}'))
  ];
  List<NotificationsStruct> get notifications => _notifications;
  set notifications(List<NotificationsStruct> value) {
    _notifications = value;
    prefs.setStringList(
        'ff_notifications', value.map((x) => x.serialize()).toList());
  }

  void addToNotifications(NotificationsStruct value) {
    notifications.add(value);
    prefs.setStringList(
        'ff_notifications', _notifications.map((x) => x.serialize()).toList());
  }

  void removeFromNotifications(NotificationsStruct value) {
    notifications.remove(value);
    prefs.setStringList(
        'ff_notifications', _notifications.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromNotifications(int index) {
    notifications.removeAt(index);
    prefs.setStringList(
        'ff_notifications', _notifications.map((x) => x.serialize()).toList());
  }

  void updateNotificationsAtIndex(
    int index,
    NotificationsStruct Function(NotificationsStruct) updateFn,
  ) {
    notifications[index] = updateFn(_notifications[index]);
    prefs.setStringList(
        'ff_notifications', _notifications.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInNotifications(int index, NotificationsStruct value) {
    notifications.insert(index, value);
    prefs.setStringList(
        'ff_notifications', _notifications.map((x) => x.serialize()).toList());
  }

  List<FlagsStruct> _countries = [
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Australia\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/ty8alxytqz8r/1.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Brazil\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/91q2tvsoav6a/2.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Canada\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/jqkhcmhoit9u/3.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"China\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/70kjme07lr2f/4.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Egypt\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/eo0323hls6s1/5.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"France\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/f2jrh6o1g06b/6.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Germany\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/9m32j1ryw4zy/7.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Greece\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/4cb924eq6iy0/8.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"India\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/cfqihl71ov2z/9.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Indonesia\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/8p8ohh7qv015/10.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Iran\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/xhmacim36tr4/11.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Italy\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/6x6q9w4kj8nc/12.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Japan\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/7de8iu12yd10/13.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Mexico\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/qcrdfb6nj4a3/14.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Netherlands\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/9ye7jynezf93/15.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Russia\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/99x9aw17dw5e/17.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Saudi Arabia\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/7yudumz9t4ll/18.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"South Africa\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/6b784e3gskot/19.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"South Korea\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/9kn1y0ok187m/20.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Thailand\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/gb5191gt2f49/21.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Turkey\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/api3rcy869tv/22.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Ukraine\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/b7qakqwfy2xu/23.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"United Arab Emirates\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/xpwqw9mfeo4f/24.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"United Kingdom\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/8doh3aujs2yh/25.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"United States\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/raxweugn1a1p/26.png\"}')),
    FlagsStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Vietnam\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fast-pay-znmge9/assets/f3g0vk41ngiu/27.png\"}'))
  ];
  List<FlagsStruct> get countries => _countries;
  set countries(List<FlagsStruct> value) {
    _countries = value;
    prefs.setStringList(
        'ff_countries', value.map((x) => x.serialize()).toList());
  }

  void addToCountries(FlagsStruct value) {
    countries.add(value);
    prefs.setStringList(
        'ff_countries', _countries.map((x) => x.serialize()).toList());
  }

  void removeFromCountries(FlagsStruct value) {
    countries.remove(value);
    prefs.setStringList(
        'ff_countries', _countries.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCountries(int index) {
    countries.removeAt(index);
    prefs.setStringList(
        'ff_countries', _countries.map((x) => x.serialize()).toList());
  }

  void updateCountriesAtIndex(
    int index,
    FlagsStruct Function(FlagsStruct) updateFn,
  ) {
    countries[index] = updateFn(_countries[index]);
    prefs.setStringList(
        'ff_countries', _countries.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCountries(int index, FlagsStruct value) {
    countries.insert(index, value);
    prefs.setStringList(
        'ff_countries', _countries.map((x) => x.serialize()).toList());
  }

  String _selectedHistory = 'All';
  String get selectedHistory => _selectedHistory;
  set selectedHistory(String value) {
    _selectedHistory = value;
  }

  bool _isOpen = true;
  bool get isOpen => _isOpen;
  set isOpen(bool value) {
    _isOpen = value;
  }

  List<PaymentStruct> _paymentMethod = [
    PaymentStruct.fromSerializableMap(jsonDecode(
        '{\"position\":\"0\",\"title\":\"PayPal\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/datinger-tosywk/assets/y5vac36ksu3x/image_2024-09-04_06-36-09.png\"}')),
    PaymentStruct.fromSerializableMap(jsonDecode(
        '{\"position\":\"1\",\"title\":\"Google Pay\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/datinger-tosywk/assets/trhunjmlh2o0/image_2024-09-04_06-36-22.png\"}')),
    PaymentStruct.fromSerializableMap(jsonDecode(
        '{\"position\":\"2\",\"title\":\"Apple Pay\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/datinger-tosywk/assets/4b8i5qzvkrma/image_2024-09-04_06-36-50.png\"}')),
    PaymentStruct.fromSerializableMap(jsonDecode(
        '{\"position\":\"3\",\"title\":\"**** **** **** 4679\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/datinger-tosywk/assets/jxf6w6zbxz35/image_2024-09-04_06-37-19.png\"}')),
    PaymentStruct.fromSerializableMap(jsonDecode(
        '{\"position\":\"4\",\"title\":\"**** **** **** 5567\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/datinger-tosywk/assets/5qexsny4uz06/image_2024-09-04_06-37-43.png\"}'))
  ];
  List<PaymentStruct> get paymentMethod => _paymentMethod;
  set paymentMethod(List<PaymentStruct> value) {
    _paymentMethod = value;
    prefs.setStringList(
        'ff_paymentMethod', value.map((x) => x.serialize()).toList());
  }

  void addToPaymentMethod(PaymentStruct value) {
    paymentMethod.add(value);
    prefs.setStringList(
        'ff_paymentMethod', _paymentMethod.map((x) => x.serialize()).toList());
  }

  void removeFromPaymentMethod(PaymentStruct value) {
    paymentMethod.remove(value);
    prefs.setStringList(
        'ff_paymentMethod', _paymentMethod.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPaymentMethod(int index) {
    paymentMethod.removeAt(index);
    prefs.setStringList(
        'ff_paymentMethod', _paymentMethod.map((x) => x.serialize()).toList());
  }

  void updatePaymentMethodAtIndex(
    int index,
    PaymentStruct Function(PaymentStruct) updateFn,
  ) {
    paymentMethod[index] = updateFn(_paymentMethod[index]);
    prefs.setStringList(
        'ff_paymentMethod', _paymentMethod.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPaymentMethod(int index, PaymentStruct value) {
    paymentMethod.insert(index, value);
    prefs.setStringList(
        'ff_paymentMethod', _paymentMethod.map((x) => x.serialize()).toList());
  }

  PaymentStruct _selectedPayment = PaymentStruct();
  PaymentStruct get selectedPayment => _selectedPayment;
  set selectedPayment(PaymentStruct value) {
    _selectedPayment = value;
  }

  void updateSelectedPaymentStruct(Function(PaymentStruct) updateFn) {
    updateFn(_selectedPayment);
  }

  bool _selectedChart = false;
  bool get selectedChart => _selectedChart;
  set selectedChart(bool value) {
    _selectedChart = value;
  }

  List<int> _chart4 = [6, 7, 4, 2, 3, 5, 1, 2, 3];
  List<int> get chart4 => _chart4;
  set chart4(List<int> value) {
    _chart4 = value;
  }

  void addToChart4(int value) {
    chart4.add(value);
  }

  void removeFromChart4(int value) {
    chart4.remove(value);
  }

  void removeAtIndexFromChart4(int index) {
    chart4.removeAt(index);
  }

  void updateChart4AtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    chart4[index] = updateFn(_chart4[index]);
  }

  void insertAtIndexInChart4(int index, int value) {
    chart4.insert(index, value);
  }

  List<int> _SimpleList = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  List<int> get SimpleList => _SimpleList;
  set SimpleList(List<int> value) {
    _SimpleList = value;
  }

  void addToSimpleList(int value) {
    SimpleList.add(value);
  }

  void removeFromSimpleList(int value) {
    SimpleList.remove(value);
  }

  void removeAtIndexFromSimpleList(int index) {
    SimpleList.removeAt(index);
  }

  void updateSimpleListAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    SimpleList[index] = updateFn(_SimpleList[index]);
  }

  void insertAtIndexInSimpleList(int index, int value) {
    SimpleList.insert(index, value);
  }

  int _navbar = 0;
  int get navbar => _navbar;
  set navbar(int value) {
    _navbar = value;
  }

  String _Language = 'English';
  String get Language => _Language;
  set Language(String value) {
    _Language = value;
    prefs.setString('ff_Language', value);
  }

  String _ScanImage = '';
  String get ScanImage => _ScanImage;
  set ScanImage(String value) {
    _ScanImage = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
