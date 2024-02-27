import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TorneosAmigosRecord extends FirestoreRecord {
  TorneosAmigosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  void _initializeFields() {
    _code = castToType<int>(snapshotData['code']);
    _users = getDataList(snapshotData['users']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('torneos_amigos');

  static Stream<TorneosAmigosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TorneosAmigosRecord.fromSnapshot(s));

  static Future<TorneosAmigosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TorneosAmigosRecord.fromSnapshot(s));

  static TorneosAmigosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TorneosAmigosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TorneosAmigosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TorneosAmigosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TorneosAmigosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TorneosAmigosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTorneosAmigosRecordData({
  int? code,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
    }.withoutNulls,
  );

  return firestoreData;
}

class TorneosAmigosRecordDocumentEquality
    implements Equality<TorneosAmigosRecord> {
  const TorneosAmigosRecordDocumentEquality();

  @override
  bool equals(TorneosAmigosRecord? e1, TorneosAmigosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.code == e2?.code && listEquality.equals(e1?.users, e2?.users);
  }

  @override
  int hash(TorneosAmigosRecord? e) =>
      const ListEquality().hash([e?.code, e?.users]);

  @override
  bool isValidKey(Object? o) => o is TorneosAmigosRecord;
}
