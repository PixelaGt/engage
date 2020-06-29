exports.default = (snapshot) => {
  const original = snapshot.data()
  const birthday = new Date(original.birthday)

  const ageDifMs = Date.now() - birthday.getTime()
  const ageDate = new Date(ageDifMs)
  const age = Math.abs(ageDate.getUTCFullYear() - 1970)

  return snapshot.ref.update({ units: age * 1000 })
}