import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GanadoresPasadosRecord extends FirestoreRecord {
  GanadoresPasadosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "torneo" field.
  String? _torneo;
  String get torneo => _torneo ?? '';
  bool hasTorneo() => _torneo != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _torneo = snapshotData['torneo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ganadores_pasados');

  static Stream<GanadoresPasadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GanadoresPasadosRecord.fromSnapshot(s));

  static Future<GanadoresPasadosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GanadoresPasadosRecord.fromSnapshot(s));

  static GanadoresPasadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GanadoresPasadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GanadoresPasadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GanadoresPasadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GanadoresPasadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GanadoresPasadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGanadoresPasadosRecordData({
  DocumentReference? userRef,
  String? torneo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'torneo': torneo,
    }.withoutNulls,
  );

  return firestoreData;
}

class GanadoresPasadosRecordDocumentEquality
    implements Equality<GanadoresPasadosRecord> {
  const GanadoresPasadosRecordDocumentEquality();

  @override
  bool equals(GanadoresPasadosRecord? e1, GanadoresPasadosRecord? e2) {
    return e1?.userRef == e2?.userRef && e1?.torneo == e2?.torneo;
  }

  @override
  int hash(GanadoresPasadosRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.torneo]);

  @override
  bool isValidKey(Object? o) => o is GanadoresPasadosRecord;
}
