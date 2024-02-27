import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

bool newCustomFunction(EquiposRecord estado) {
  //  return true if 'gastado' is less than or equal to 'disponible'
  return estado.gastado <= estado.presupuesto && estado.playerList.length == 12;
}

bool newCustomFunction2(
  String id,
  List<String> listaid,
) {
  // if 'id' is in 'listaid' return True else return False
  return listaid.contains(id);
}

bool? newCustomFunction4(
  DocumentReference? id,
  EquiposRecord? equipo,
) {
  // check if id is in equipo.player_list
  if (equipo != null && equipo.playerList != null && id != null) {
    return equipo.playerList.contains(id);
  }
  return null;
}

int puntosJugadorRonda(
  String ronda,
  DocumentReference referencia,
  List<PuntosRecord> coleccionPuntos,
) {
  // Inicializar la puntuación como 0
  int puntuacion = 0;

  // Iterar sobre la lista de puntos
  for (var punto in coleccionPuntos) {
    // Verificar si los campos coinciden
    if (punto.playerRef == referencia && punto.ronda == ronda) {
      // Asignar la puntuación y salir del bucle
      puntuacion = punto.puntuaciones;
      break;
    }
  }

  // Devolver la puntuación encontrada o 0 si no se encontró ningún punto
  return puntuacion;
}

int ptsRAct(
  EquiposRecord equipo,
  String ronda,
) {
  switch (ronda) {
    case 'Ronda de 128':
      return equipo.puntosR128 ?? 0;
    case 'Ronda de 64':
      return equipo.puntosR64 ?? 0;
    case 'Ronda de 32':
      return equipo.puntosR32 ?? 0;
    case 'Octavos':
      return equipo.puntosOctavos ?? 0;
    case 'Cuartos':
      return equipo.puntosCuartos ?? 0;
    case 'Semifinal':
      return equipo.puntosSemifinal ?? 0;
    case 'Final':
      return equipo.puntosFinal ?? 0;
    default:
      return 0;
  }
}

int ptsRActJug(
  String ronda,
  PlayersRecord jugador,
) {
  switch (ronda) {
    case 'Ronda de 128':
      return jugador.puntosR128 ?? 0;
    case 'Ronda de 64':
      return jugador.puntosR64 ?? 0;
    case 'Ronda de 32':
      return jugador.puntosR32 ?? 0;
    case 'Octavos':
      return jugador.puntosOctavos ?? 0;
    case 'Cuartos':
      return jugador.puntosCuartos ?? 0;
    case 'Semifinal':
      return jugador.puntosSemifinal ?? 0;
    case 'Final':
      return jugador.puntosFinal ?? 0;
    default:
      return 0;
  }
}
