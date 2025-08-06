// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NotificationsStruct extends FFFirebaseStruct {
  NotificationsStruct({
    String? title,
    String? description,
    String? time,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _description = description,
        _time = time,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  static NotificationsStruct fromMap(Map<String, dynamic> data) =>
      NotificationsStruct(
        title: data['title'] as String?,
        description: data['Description'] as String?,
        time: data['time'] as String?,
      );

  static NotificationsStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'Description': _description,
        'time': _time,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotificationsStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationsStruct &&
        title == other.title &&
        description == other.description &&
        time == other.time;
  }

  @override
  int get hashCode => const ListEquality().hash([title, description, time]);
}

NotificationsStruct createNotificationsStruct({
  String? title,
  String? description,
  String? time,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NotificationsStruct(
      title: title,
      description: description,
      time: time,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NotificationsStruct? updateNotificationsStruct(
  NotificationsStruct? notifications, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    notifications
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNotificationsStructData(
  Map<String, dynamic> firestoreData,
  NotificationsStruct? notifications,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (notifications == null) {
    return;
  }
  if (notifications.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && notifications.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final notificationsData =
      getNotificationsFirestoreData(notifications, forFieldValue);
  final nestedData =
      notificationsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = notifications.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNotificationsFirestoreData(
  NotificationsStruct? notifications, [
  bool forFieldValue = false,
]) {
  if (notifications == null) {
    return {};
  }
  final firestoreData = mapToFirestore(notifications.toMap());

  // Add any Firestore field values
  notifications.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNotificationsListFirestoreData(
  List<NotificationsStruct>? notificationss,
) =>
    notificationss
        ?.map((e) => getNotificationsFirestoreData(e, true))
        .toList() ??
    [];
