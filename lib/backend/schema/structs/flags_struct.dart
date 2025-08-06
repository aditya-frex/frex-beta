// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FlagsStruct extends FFFirebaseStruct {
  FlagsStruct({
    String? title,
    String? img,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _img = img,
        super(firestoreUtilData);

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

  static FlagsStruct fromMap(Map<String, dynamic> data) => FlagsStruct(
        title: data['title'] as String?,
        img: data['img'] as String?,
      );

  static FlagsStruct? maybeFromMap(dynamic data) =>
      data is Map ? FlagsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static FlagsStruct fromSerializableMap(Map<String, dynamic> data) =>
      FlagsStruct(
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
  String toString() => 'FlagsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FlagsStruct && title == other.title && img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([title, img]);
}

FlagsStruct createFlagsStruct({
  String? title,
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FlagsStruct(
      title: title,
      img: img,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FlagsStruct? updateFlagsStruct(
  FlagsStruct? flags, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    flags
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFlagsStructData(
  Map<String, dynamic> firestoreData,
  FlagsStruct? flags,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (flags == null) {
    return;
  }
  if (flags.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && flags.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final flagsData = getFlagsFirestoreData(flags, forFieldValue);
  final nestedData = flagsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = flags.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFlagsFirestoreData(
  FlagsStruct? flags, [
  bool forFieldValue = false,
]) {
  if (flags == null) {
    return {};
  }
  final firestoreData = mapToFirestore(flags.toMap());

  // Add any Firestore field values
  flags.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFlagsListFirestoreData(
  List<FlagsStruct>? flagss,
) =>
    flagss?.map((e) => getFlagsFirestoreData(e, true)).toList() ?? [];
