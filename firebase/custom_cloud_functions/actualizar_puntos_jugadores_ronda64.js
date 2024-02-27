const functions = require('firebase-functions');
const admin = require('firebase-admin');

exports.actualizarPuntosJugadoresRonda64 = functions
  .runWith({
    memory: '128MB'
  }).https.onRequest(async (req, res) => {
    try {
      const playersRef = admin.firestore().collection('players');
      const puntosRef = admin.firestore().collection('puntos');

      const playersSnapshot = await playersRef.get();

      for (const playerDoc of playersSnapshot.docs) {
        const playerId = playerDoc.id;
        const playerRef = admin.firestore().doc(`players/${playerId}`);

        // Obtener los puntos de cada jugador y sumarlos
        let puntuacionJugador = 0;

        const puntosSnapshot = await puntosRef
          .where('player_ref', '==', playerRef)
          .where('ronda', '==', 'Ronda de 64')
          .get();

        puntosSnapshot.forEach((puntosDoc) => {
          const puntos = puntosDoc.data().puntuaciones;
          puntuacionJugador += puntos;
        });

        // Actualizar el campo "puntos_r128" en el documento del jugador
        await playerRef.update({ puntos_r64: puntuacionJugador });
      }

      res.status(200).send('Puntos_r64 de jugadores actualizados exitosamente');
    } catch (error) {
      console.error('Error updating player points:', error);
      res.status(500).send('Error interno del servidor');
    }
  });