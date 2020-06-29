exports.default = function(db) {
  return async (change, context) => {
    const data = change.after.data()

    if (data.status === 'withdrawed') {
      const transfers = await db.collection('transfers').where('initiativeId', '==', data.id).get()
      transfers.forEach(async transfer => {
        const transferData = transfer.data()
        const user = await db.collection('profiles').doc(transferData.profileId).get()
        user.ref.update({ units: user.data().units +  (transferData.credits * 2) })
      })
    }
  }
}