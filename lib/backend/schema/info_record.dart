import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InfoRecord extends FirestoreRecord {
  InfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "torneo_actual" field.
  String? _torneoActual;
  String get torneoActual => _torneoActual ?? '';
  bool hasTorneoActual() => _torneoActual != null;

  // "ronda_actual" field.
  String? _rondaActual;
  String get rondaActual => _rondaActual ?? '';
  bool hasRondaActual() => _rondaActual != null;

  // "presupuesto" field.
  int? _presupuesto;
  int get presupuesto => _presupuesto ?? 0;
  bool hasPresupuesto() => _presupuesto != null;

  // "tamano_equipos" field.
  int? _tamanoEquipos;
  int get tamanoEquipos => _tamanoEquipos ?? 0;
  bool hasTamanoEquipos() => _tamanoEquipos != null;

  // "foto_torneo" field.
  String? _fotoTorneo;
  String get fotoTorneo => _fotoTorneo ?? '';
  bool hasFotoTorneo() => _fotoTorneo != null;

  void _initializeFields() {
    _torneoActual = snapshotData['torneo_actual'] as String?;
    _rondaActual = snapshotData['ronda_actual'] as String?;
    _presupuesto = castToType<int>(snapshotData['presupuesto']);
    _tamanoEquipos = castToType<int>(snapshotData['tamano_equipos']);
    _fotoTorneo = snapshotData['foto_torneo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('info');

  static Stream<InfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InfoRecord.fromSnapshot(s));

  static Future<InfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InfoRecord.fromSnapshot(s));

  static InfoRecord fromSnapshot(DocumentSnapshot snapshot) => InfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInfoRecordData({
  String? torneoActual,
  String? rondaActual,
  int? presupuesto,
  int? tamanoEquipos,
  String? fotoTorneo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'torneo_actual': torneoActual,
      'ronda_actual': rondaActual,
      'presupuesto': presupuesto,
      'tamano_equipos': tamanoEquipos,
      'foto_torneo': fotoTorneo,
    }.withoutNulls,
  );

  return firestoreData;
}

class InfoRecordDocumentEquality implements Equality<InfoRecord> {
  const InfoRecordDocumentEquality();

  @override
  bool equals(InfoRecord? e1, InfoRecord? e2) {
    return e1?.torneoActual == e2?.torneoActual &&
        e1?.rondaActual == e2?.rondaActual &&
        e1?.presupuesto == e2?.presupuesto &&
        e1?.tamanoEquipos == e2?.tamanoEquipos &&
        e1?.fotoTorneo == e2?.fotoTorneo;
  }

  @override
  int hash(InfoRecord? e) => const ListEquality().hash([
        e?.torneoActual,
        e?.rondaActual,
        e?.presupuesto,
        e?.tamanoEquipos,
        e?.fotoTorneo
      ]);

  @override
  bool isValidKey(Object? o) => o is InfoRecord;
}
