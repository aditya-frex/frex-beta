// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PaymentStruct extends FFFirebaseStruct {
  PaymentStruct({
    int? position,
    String? title,
    String? img,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _position = position,
        _title = title,
        _img = img,
        super(firestoreUtilData);

  // "position" field.
  int? _position;
  int get position => _position ?? 0;
  set position(int? val) => _position = val;

  void incrementPosition(int amount) => position = position + amount;

  bool hasPosition() => _position != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  static PaymentStruct fromMap(Map<String, dynamic> data) => PaymentStruct(
        position: castToType<int>(data['position']),
        title: data['title'] as String?,
        img: data['img'] as String?,
      );

  static PaymentStruct? maybeFromMap(dynamic data) =>
      data is Map ? PaymentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'position': _position,
        'title': _title,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'position': serializeParam(
          _position,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static PaymentStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentStruct(
        position: deserializeParam(
          data['position'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PaymentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentStruct &&
        position == other.position &&
        title == other.title &&
        img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([position, title, img]);
}

PaymentStruct createPaymentStruct({
  int? position,
  String? title,
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentStruct(
      position: position,
      title: title,
      img: img,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PaymentStruct? updatePaymentStruct(
  PaymentStruct? payment, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    payment
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPaymentStructData(
  Map<String, dynamic> firestoreData,
  PaymentStruct? payment,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (payment == null) {
    return;
  }
  if (payment.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && payment.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentData = getPaymentFirestoreData(payment, forFieldValue);
  final nestedData = paymentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = payment.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPaymentFirestoreData(
  PaymentStruct? payment, [
  bool forFieldValue = false,
]) {
  if (payment == null) {
    return {};
  }
  final firestoreData = mapToFirestore(payment.toMap());

  // Add any Firestore field values
  payment.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentListFirestoreData(
  List<PaymentStruct>? payments,
) =>
    payments?.map((e) => getPaymentFirestoreData(e, true)).toList() ?? [];
