const nameList = require('./names.json')

exports.default = (snapshot, context) => {
  const original = snapshot.data()
  console.log('Assigning username to: ', context.params.id)
  const nickname = original.nickname.charAt(0) + original.nickname.charAt(original.nickname.length - 1)
  const firstLetter = original.realName.charAt(0)
  const lastLetter = original.realName.charAt(original.realName.length - 1)

  const number = Math.floor(Math.random() * 999) + 1

  const candidates = nameList.names.filter(word => word.charAt(0) === firstLetter || word.charAt(0) === lastLetter )

  console.log(candidates)
  const length = Math.floor(Math.random() * candidates.length - 1)
  const selectedCandidate = candidates[length] || nameList.names[length]

  console.log('Using ', selectedCandidate)

  return snapshot.ref.update({displayName: nickname + ' ' + selectedCandidate + ' ' + number })
}