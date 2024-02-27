const functions = require('firebase-functions');
const admin = require('firebase-admin');

exports.actualizarPuntosTorneoJugador = functions.runWith({
    memory: '128MB'
  }).https.onRequest(async (req, res) => {
    const playerId = '07HBvczHlP7RMEB6h4mL'; // ID del documento de "players"

    const playersRef = admin.firestore().collection('players');

    try {
      // Actualiza el campo "puntos_torneo" en el documento del jugador con el valor 4
      await playersRef.doc(playerId).update({ puntos_torneo: 4 });

      return res.status(200).json({ message: 'Puntos de torneo actualizados exitosamente.' });
    } catch (error) {
      console.error('Error al actualizar puntos de torneo:', error);
      return res.status(500).json({ error: 'Ocurrió un error al actualizar los puntos de torneo.' });
    }
  });