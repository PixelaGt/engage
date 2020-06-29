exports.default = (snapshot, context) => {
  const original = snapshot.data()
  const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  const number = Math.floor(Math.random() * 999) + 1
  const letter = letter.charAt(Math.floor(Math.random() * letters.length - 1))

  original.ref.update({ name: letter + ' ' + number})
}