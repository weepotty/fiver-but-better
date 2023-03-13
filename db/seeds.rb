User.destroy_all
Service.destroy_all
Offer.destroy_all

buyer1 = User.create(email: 'alice@alicedev.com', password: '123456', location: 'Singapore')
buyer2 = User.create(email: 'bob@bobdev.com', password: '234567', location: 'Singapore')
seller1 = User.create(email: 'carol@caroldev.com', password: '345678', location: 'Singapore')
seller2 = User.create(email: 'dave@davedev.com', password: '456789', location: 'Singapore')
