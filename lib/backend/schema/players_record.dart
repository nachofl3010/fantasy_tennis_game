import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlayersRecord extends FirestoreRecord {
  PlayersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "player_name" field.
  String? _playerName;
  String get playerName => _playerName ?? '';
  bool hasPlayerName() => _playerName != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "puntos_torneo" field.
  int? _puntosTorneo;
  int get puntosTorneo => _puntosTorneo ?? 0;
  bool hasPuntosTorneo() => _puntosTorneo != null;

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

  void _initializeFields() {
    _playerName = snapshotData['player_name'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _bio = snapshotData['bio'] as String?;
    _puntosTorneo = castToType<int>(snapshotData['puntos_torneo']);
    _puntosOctavos = castToType<int>(snapshotData['puntos_octavos']);
    _puntosCuartos = castToType<int>(snapshotData['puntos_cuartos']);
    _puntosSemifinal = castToType<int>(snapshotData['puntos_semifinal']);
    _puntosFinal = castToType<int>(snapshotData['puntos_final']);
    _puntosR128 = castToType<int>(snapshotData['puntos_r128']);
    _puntosR64 = castToType<int>(snapshotData['puntos_r64']);
    _puntosR32 = castToType<int>(snapshotData['puntos_r32']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('players');

  static Stream<PlayersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlayersRecord.fromSnapshot(s));

  static Future<PlayersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlayersRecord.fromSnapshot(s));

  static PlayersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlayersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlayersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlayersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlayersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlayersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlayersRecordData({
  String? playerName,
  int? price,
  String? bio,
  int? puntosTorneo,
  int? puntosOctavos,
  int? puntosCuartos,
  int? puntosSemifinal,
  int? puntosFinal,
  int? puntosR128,
  int? puntosR64,
  int? puntosR32,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'player_name': playerName,
      'price': price,
      'bio': bio,
      'puntos_torneo': puntosTorneo,
      'puntos_octavos': puntosOctavos,
      'puntos_cuartos': puntosCuartos,
      'puntos_semifinal': puntosSemifinal,
      'puntos_final': puntosFinal,
      'puntos_r128': puntosR128,
      'puntos_r64': puntosR64,
      'puntos_r32': puntosR32,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlayersRecordDocumentEquality implements Equality<PlayersRecord> {
  const PlayersRecordDocumentEquality();

  @override
  bool equals(PlayersRecord? e1, PlayersRecord? e2) {
    return e1?.playerName == e2?.playerName &&
        e1?.price == e2?.price &&
        e1?.bio == e2?.bio &&
        e1?.puntosTorneo == e2?.puntosTorneo &&
        e1?.puntosOctavos == e2?.puntosOctavos &&
        e1?.puntosCuartos == e2?.puntosCuartos &&
        e1?.puntosSemifinal == e2?.puntosSemifinal &&
        e1?.puntosFinal == e2?.puntosFinal &&
        e1?.puntosR128 == e2?.puntosR128 &&
        e1?.puntosR64 == e2?.puntosR64 &&
        e1?.puntosR32 == e2?.puntosR32;
  }

  @override
  int hash(PlayersRecord? e) => const ListEquality().hash([
        e?.playerName,
        e?.price,
        e?.bio,
        e?.puntosTorneo,
        e?.puntosOctavos,
        e?.puntosCuartos,
        e?.puntosSemifinal,
        e?.puntosFinal,
        e?.puntosR128,
        e?.puntosR64,
        e?.puntosR32
      ]);

  @override
  bool isValidKey(Object? o) => o is PlayersRecord;
}
