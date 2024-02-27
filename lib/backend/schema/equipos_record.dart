import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquiposRecord extends FirestoreRecord {
  EquiposRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "player_list" field.
  List<DocumentReference>? _playerList;
  List<DocumentReference> get playerList => _playerList ?? const [];
  bool hasPlayerList() => _playerList != null;

  // "puntos_torneo" field.
  int? _puntosTorneo;
  int get puntosTorneo => _puntosTorneo ?? 0;
  bool hasPuntosTorneo() => _puntosTorneo != null;

  // "jugador_estrella" field.
  DocumentReference? _jugadorEstrella;
  DocumentReference? get jugadorEstrella => _jugadorEstrella;
  bool hasJugadorEstrella() => _jugadorEstrella != null;

  // "gastado" field.
  int? _gastado;
  int get gastado => _gastado ?? 0;
  bool hasGastado() => _gastado != null;

  // "disponible" field.
  int? _disponible;
  int get disponible => _disponible ?? 0;
  bool hasDisponible() => _disponible != null;

  // "presupuesto" field.
  int? _presupuesto;
  int get presupuesto => _presupuesto ?? 0;
  bool hasPresupuesto() => _presupuesto != null;

  // "tamano_equipo_completo" field.
  int? _tamanoEquipoCompleto;
  int get tamanoEquipoCompleto => _tamanoEquipoCompleto ?? 0;
  bool hasTamanoEquipoCompleto() => _tamanoEquipoCompleto != null;

  // "estado" field.
  EstadoEquipoStruct? _estado;
  EstadoEquipoStruct get estado => _estado ?? EstadoEquipoStruct();
  bool hasEstado() => _estado != null;

  // "puntos_r128" field.
  int? _puntosR128;
  int get puntosR128 => _puntosR128 ?? 0;
  bool hasPuntosR128() => _puntosR128 != null;

  // "puntos_r64" field.
  int? _puntosR64;
  int get puntosR64 => _puntosR64 ?? 0;
  bool hasPuntosR64() => _puntosR64 != null;

  // "puntos_r32" field.
  int? _puntosR32;
  int get puntosR32 => _puntosR32 ?? 0;
  bool hasPuntosR32() => _puntosR32 != null;

  // "puntos_octavos" field.
  int? _puntosOctavos;
  int get puntosOctavos => _puntosOctavos ?? 0;
  bool hasPuntosOctavos() => _puntosOctavos != null;

  // "puntos_cuartos" field.
  int? _puntosCuartos;
  int get puntosCuartos => _puntosCuartos ?? 0;
  bool hasPuntosCuartos() => _puntosCuartos != null;

  // "puntos_semifinal" field.
  int? _puntosSemifinal;
  int get puntosSemifinal => _puntosSemifinal ?? 0;
  bool hasPuntosSemifinal() => _puntosSemifinal != null;

  // "puntos_final" field.
  int? _puntosFinal;
  int get puntosFinal => _puntosFinal ?? 0;
  bool hasPuntosFinal() => _puntosFinal != null;

  // "puntos_ronda" field.
  List<int>? _puntosRonda;
  List<int> get puntosRonda => _puntosRonda ?? const [];
  bool hasPuntosRonda() => _puntosRonda != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _playerList = getDataList(snapshotData['player_list']);
    _puntosTorneo = castToType<int>(snapshotData['puntos_torneo']);
    _jugadorEstrella = snapshotData['jugador_estrella'] as DocumentReference?;
    _gastado = castToType<int>(snapshotData['gastado']);
    _disponible = castToType<int>(snapshotData['disponible']);
    _presupuesto = castToType<int>(snapshotData['presupuesto']);
    _tamanoEquipoCompleto =
        castToType<int>(snapshotData['tamano_equipo_completo']);
    _estado = EstadoEquipoStruct.maybeFromMap(snapshotData['estado']);
    _puntosR128 = castToType<int>(snapshotData['puntos_r128']);
    _puntosR64 = castToType<int>(snapshotData['puntos_r64']);
    _puntosR32 = castToType<int>(snapshotData['puntos_r32']);
    _puntosOctavos = castToType<int>(snapshotData['puntos_octavos']);
    _puntosCuartos = castToType<int>(snapshotData['puntos_cuartos']);
    _puntosSemifinal = castToType<int>(snapshotData['puntos_semifinal']);
    _puntosFinal = castToType<int>(snapshotData['puntos_final']);
    _puntosRonda = getDataList(snapshotData['puntos_ronda']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('equipos');

  static Stream<EquiposRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EquiposRecord.fromSnapshot(s));

  static Future<EquiposRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EquiposRecord.fromSnapshot(s));

  static EquiposRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EquiposRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquiposRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquiposRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquiposRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EquiposRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEquiposRecordData({
  DocumentReference? userRef,
  int? puntosTorneo,
  DocumentReference? jugadorEstrella,
  int? gastado,
  int? disponible,
  int? presupuesto,
  int? tamanoEquipoCompleto,
  EstadoEquipoStruct? estado,
  int? puntosR128,
  int? puntosR64,
  int? puntosR32,
  int? puntosOctavos,
  int? puntosCuartos,
  int? puntosSemifinal,
  int? puntosFinal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'puntos_torneo': puntosTorneo,
      'jugador_estrella': jugadorEstrella,
      'gastado': gastado,
      'disponible': disponible,
      'presupuesto': presupuesto,
      'tamano_equipo_completo': tamanoEquipoCompleto,
      'estado': EstadoEquipoStruct().toMap(),
      'puntos_r128': puntosR128,
      'puntos_r64': puntosR64,
      'puntos_r32': puntosR32,
      'puntos_octavos': puntosOctavos,
      'puntos_cuartos': puntosCuartos,
      'puntos_semifinal': puntosSemifinal,
      'puntos_final': puntosFinal,
    }.withoutNulls,
  );

  // Handle nested data for "estado" field.
  addEstadoEquipoStructData(firestoreData, estado, 'estado');

  return firestoreData;
}

class EquiposRecordDocumentEquality implements Equality<EquiposRecord> {
  const EquiposRecordDocumentEquality();

  @override
  bool equals(EquiposRecord? e1, EquiposRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        listEquality.equals(e1?.playerList, e2?.playerList) &&
        e1?.puntosTorneo == e2?.puntosTorneo &&
        e1?.jugadorEstrella == e2?.jugadorEstrella &&
        e1?.gastado == e2?.gastado &&
        e1?.disponible == e2?.disponible &&
        e1?.presupuesto == e2?.presupuesto &&
        e1?.tamanoEquipoCompleto == e2?.tamanoEquipoCompleto &&
        e1?.estado == e2?.estado &&
        e1?.puntosR128 == e2?.puntosR128 &&
        e1?.puntosR64 == e2?.puntosR64 &&
        e1?.puntosR32 == e2?.puntosR32 &&
        e1?.puntosOctavos == e2?.puntosOctavos &&
        e1?.puntosCuartos == e2?.puntosCuartos &&
        e1?.puntosSemifinal == e2?.puntosSemifinal &&
        e1?.puntosFinal == e2?.puntosFinal &&
        listEquality.equals(e1?.puntosRonda, e2?.puntosRonda);
  }

  @override
  int hash(EquiposRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.playerList,
        e?.puntosTorneo,
        e?.jugadorEstrella,
        e?.gastado,
        e?.disponible,
        e?.presupuesto,
        e?.tamanoEquipoCompleto,
        e?.estado,
        e?.puntosR128,
        e?.puntosR64,
        e?.puntosR32,
        e?.puntosOctavos,
        e?.puntosCuartos,
        e?.puntosSemifinal,
        e?.puntosFinal,
        e?.puntosRonda
      ]);

  @override
  bool isValidKey(Object? o) => o is EquiposRecord;
}
