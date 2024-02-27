const functions = require('firebase-functions');
const admin = require('firebase-admin');

exports.actualizarPuntosEquiposOctavos = functions.runWith({
    memory: '128MB'
  })
  .https.onRequest(async (req, res) => {
    const equiposRef = admin.firestore().collection('equipos');
    const playersRef = admin.firestore().collection('players');

    try {
      const equiposSnapshot = await equiposRef.get();

      equiposSnapshot.forEach(async (equipoDoc) => {
        const equipoId = equipoDoc.id;
        const jugadorRefs = equipoDoc.data().player_list;

        let puntuacionEquipo = 0;

        for (const jugadorRef of jugadorRefs) {
          const jugadorDoc = await jugadorRef.get();

          if (jugadorDoc.exists) {
            const puntosJugador = jugadorDoc.data().puntos_octavos;
            puntuacionEquipo += puntosJugador;
          }
        }

        // Actualiza el campo "puntos_torneo" en el documento del equipo
        await equiposRef.doc(equipoId).update({ puntos_octavos: puntuacionEquipo });
      });

      return res.status(200).json({ message: 'Puntos de equipos octavos actualizados exitosamente.' });
    } catch (error) {
      console.error('Error al actualizar puntos de equipos:', error);
      return res.status(500).json({ error: 'Ocurrió un error al actualizar los puntos de equipos.' });
    }
  });