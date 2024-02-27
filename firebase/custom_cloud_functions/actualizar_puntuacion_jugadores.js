const functions = require('firebase-functions');
const admin = require('firebase-admin');


exports.actualizarPuntuacionJugadores = functions
  .runWith({
    memory: '128MB'
  }).https.onRequest(async (req, res) => {
    const playersRef = admin.firestore().collection('players');
    const puntosRef = admin.firestore().collection('puntos');

    const playersSnapshot = await playersRef.get();

    playersSnapshot.forEach(async (playerDoc) => {
      const playerId = playerDoc.id;
      const playerRef = admin.firestore().doc(`players/${playerId}`);

      // Obtener los puntos de cada jugador y sumarlos
      let puntuacionJugador = 0;

      const puntosSnapshot = await puntosRef.where('player_ref', '==', playerRef).get();
      puntosSnapshot.forEach((puntosDoc) => {
        const puntos = puntosDoc.data().puntuaciones;
        puntuacionJugador += puntos;
      });

      // Actualizar el campo "puntos_torneo" en el documento del jugador
      await playersRef.doc(playerId).update({ puntos_torneo: puntuacionJugador });
    });

    res.status(200).send('Puntuaciones de jugadores actualizadas exitosamente');
  });