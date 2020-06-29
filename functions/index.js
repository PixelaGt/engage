const functions = require('firebase-functions');
const assignUsername = require('./username').default;
const assignCredits = require('./credits.js').default;
const withdraw = require('./initiative.js').default;
const initiativeName = require('./initiativeName.js').default;
// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//  response.send("Hello from Firebase!");
// });
const admin = require('firebase-admin');
admin.initializeApp();
const db = admin.firestore();

exports.defaultUsername = functions.firestore.document('/profiles/{id}')
  .onCreate(assignUsername);

exports.defaultCredits = functions.firestore.document('/profiles/{id}')
  .onCreate(assignCredits);

exports.defaultName = functions.firestore.document('/initiatives/{id}')
  .onCreate(initiativeName);

exports.withdraw = functions.firestore.document('/initiatives/{id}')
  .onWrite(withdraw(db));