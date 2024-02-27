import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PuntosRecord extends FirestoreRecord {
  PuntosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "puntuaciones" field.
  int? _puntuaciones;
  int get puntuaciones => _puntuaciones ?? 0;
  bool hasPuntuaciones() => _puntuaciones != null;

  // "ronda" field.
  String? _ronda;
  String get ronda => _ronda ?? '';
  bool hasRonda() => _ronda != null;

  // "player_ref" field.
  DocumentReference? _playerRef;
  DocumentReference? get playerRef => _playerRef;
  bool hasPlayerRef() => _playerRef != null;

  void _initializeFields() {
    _puntuaciones = castToType<int>(snapshotData['puntuaciones']);
    _ronda = snapshotData['ronda'] as String?;
    _playerRef = snapshotData['player_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('puntos');

  static Stream<PuntosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PuntosRecord.fromSnapshot(s));

  static Future<PuntosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PuntosRecord.fromSnapshot(s));

  static PuntosRecord fromSnapshot(DocumentSnapshot snapshot) => PuntosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PuntosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PuntosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PuntosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PuntosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPuntosRecordData({
  int? puntuaciones,
  String? ronda,
  DocumentReference? playerRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'puntuaciones': puntuaciones,
      'ronda': ronda,
      'player_ref': playerRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class PuntosRecordDocumentEquality implements Equality<PuntosRecord> {
  const PuntosRecordDocumentEquality();

  @override
  bool equals(PuntosRecord? e1, PuntosRecord? e2) {
    return e1?.puntuaciones == e2?.puntuaciones &&
        e1?.ronda == e2?.ronda &&
        e1?.playerRef == e2?.playerRef;
  }

  @override
  int hash(PuntosRecord? e) =>
      const ListEquality().hash([e?.puntuaciones, e?.ronda, e?.playerRef]);

  @override
  bool isValidKey(Object? o) => o is PuntosRecord;
}
