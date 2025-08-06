import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "transaction" field.
  String? _transaction;
  String get transaction => _transaction ?? '';
  bool hasTransaction() => _transaction != null;

  // "priceColor" field.
  Color? _priceColor;
  Color? get priceColor => _priceColor;
  bool hasPriceColor() => _priceColor != null;

  // "isFavorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  bool hasIsFavorite() => _isFavorite != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _img = snapshotData['img'] as String?;
    _price = snapshotData['price'] as String?;
    _transaction = snapshotData['transaction'] as String?;
    _priceColor = getSchemaColor(snapshotData['priceColor']);
    _isFavorite = snapshotData['isFavorite'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  String? id,
  String? name,
  DateTime? date,
  String? img,
  String? price,
  String? transaction,
  Color? priceColor,
  bool? isFavorite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'date': date,
      'img': img,
      'price': price,
      'transaction': transaction,
      'priceColor': priceColor,
      'isFavorite': isFavorite,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.date == e2?.date &&
        e1?.img == e2?.img &&
        e1?.price == e2?.price &&
        e1?.transaction == e2?.transaction &&
        e1?.priceColor == e2?.priceColor &&
        e1?.isFavorite == e2?.isFavorite;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.date,
        e?.img,
        e?.price,
        e?.transaction,
        e?.priceColor,
        e?.isFavorite
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
