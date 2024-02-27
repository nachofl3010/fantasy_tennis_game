// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstadoEquipoStruct extends FFFirebaseStruct {
  EstadoEquipoStruct({
    bool? enProceso,
    bool? confirmado,
    bool? noExisteEquipo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _enProceso = enProceso,
        _confirmado = confirmado,
        _noExisteEquipo = noExisteEquipo,
        super(firestoreUtilData);

  // "en_proceso" field.
  bool? _enProceso;
  bool get enProceso => _enProceso ?? false;
  set enProceso(bool? val) => _enProceso = val;
  bool hasEnProceso() => _enProceso != null;

  // "confirmado" field.
  bool? _confirmado;
  bool get confirmado => _confirmado ?? false;
  set confirmado(bool? val) => _confirmado = val;
  bool hasConfirmado() => _confirmado != null;

  // "no_existe_equipo" field.
  bool? _noExisteEquipo;
  bool get noExisteEquipo => _noExisteEquipo ?? false;
  set noExisteEquipo(bool? val) => _noExisteEquipo = val;
  bool hasNoExisteEquipo() => _noExisteEquipo != null;

  static EstadoEquipoStruct fromMap(Map<String, dynamic> data) =>
      EstadoEquipoStruct(
        enProceso: data['en_proceso'] as bool?,
        confirmado: data['confirmado'] as bool?,
        noExisteEquipo: data['no_existe_equipo'] as bool?,
      );

  static EstadoEquipoStruct? maybeFromMap(dynamic data) => data is Map
      ? EstadoEquipoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'en_proceso': _enProceso,
        'confirmado': _confirmado,
        'no_existe_equipo': _noExisteEquipo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'en_proceso': serializeParam(
          _enProceso,
          ParamType.bool,
        ),
        'confirmado': serializeParam(
          _confirmado,
          ParamType.bool,
        ),
        'no_existe_equipo': serializeParam(
          _noExisteEquipo,
          ParamType.bool,
        ),
      }.withoutNulls;

  static EstadoEquipoStruct fromSerializableMap(Map<String, dynamic> data) =>
      EstadoEquipoStruct(
        enProceso: deserializeParam(
          data['en_proceso'],
          ParamType.bool,
          false,
        ),
        confirmado: deserializeParam(
          data['confirmado'],
          ParamType.bool,
          false,
        ),
        noExisteEquipo: deserializeParam(
          data['no_existe_equipo'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'EstadoEquipoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EstadoEquipoStruct &&
        enProceso == other.enProceso &&
        confirmado == other.confirmado &&
        noExisteEquipo == other.noExisteEquipo;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([enProceso, confirmado, noExisteEquipo]);
}

EstadoEquipoStruct createEstadoEquipoStruct({
  bool? enProceso,
  bool? confirmado,
  bool? noExisteEquipo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EstadoEquipoStruct(
      enProceso: enProceso,
      confirmado: confirmado,
      noExisteEquipo: noExisteEquipo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EstadoEquipoStruct? updateEstadoEquipoStruct(
  EstadoEquipoStruct? estadoEquipo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    estadoEquipo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEstadoEquipoStructData(
  Map<String, dynamic> firestoreData,
  EstadoEquipoStruct? estadoEquipo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (estadoEquipo == null) {
    return;
  }
  if (estadoEquipo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && estadoEquipo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final estadoEquipoData =
      getEstadoEquipoFirestoreData(estadoEquipo, forFieldValue);
  final nestedData =
      estadoEquipoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = estadoEquipo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEstadoEquipoFirestoreData(
  EstadoEquipoStruct? estadoEquipo, [
  bool forFieldValue = false,
]) {
  if (estadoEquipo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(estadoEquipo.toMap());

  // Add any Firestore field values
  estadoEquipo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEstadoEquipoListFirestoreData(
  List<EstadoEquipoStruct>? estadoEquipos,
) =>
    estadoEquipos?.map((e) => getEstadoEquipoFirestoreData(e, true)).toList() ??
    [];
