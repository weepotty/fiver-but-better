User.destroy_all
Service.destroy_all
Offer.destroy_all

buyer1 = User.create(email: 'alice@alicedev.com', password: '123456', location: 'Singapore')
buyer2 = User.create(email: 'bob@bobdev.com', password: '234567', location: 'Singapore')
seller1 = User.create(email: 'carol@caroldev.com', password: '345678', location: 'Singapore')
seller2 = User.create(email: 'dave@davedev.com', password: '456789', location: 'Berlin')
buyer3 = User.create(email: 'eve@evedev.com', password: 'abcdef', location: 'London')
buyer4 = User.create(email: 'frank@frankdev.com', password: 'bcdefg', location: 'Paris')

service1 = Service.create(title: 'I will design a custom landing page for your business website', description: 'Welcome to the gig with the Most Amazing and High Converting Landing Page designs', price: 643_12, delivery_time: 3, category: 'social media marketing', seller: seller1)
service2 = Service.create(title: 'I will build a shopify website or shopify dropshipping store', description: 'Top-Rated Shopify Dropshipping & Branding Expert', price: 1_200_00, delivery_time: 7, category: 'social media marketing', seller: seller1)
Service.create(title: 'I will build modern and responsive wordpress website design', description: 'Delivering affordable high-converting, fast and bespoke websites.', price: 345_00, delivery_time: 14, category: 'social media marketing', seller: seller1)
Service.create(title: 'I will create professional wordpress website for you', description: 'I can create a responsive WordPress website which will be compatible for all devices e.g. mobile, tablet and computer.', price: 234_43, delivery_time: 7, category: 'social media marketing', seller: seller1)
Service.create(title: 'I will design beautiful wix websites with unlimited revisions', description: 'Our team has designed over 1,000 stunning Wix Website Designs for business in over 32 countries and in all 50 US states!', price: 123_00, delivery_time: 45, category: 'social media marketing', seller: seller1)
Service.create(title: 'I will design and develop a responsive modern wordpress website for your business', description: 'Im Martin, a full-time English-speaking WordPress developer with over 7 years of experience and over 500 completed WordPress projects on Fiverr.', price: 489_65, delivery_time: 14, category: 'social media marketing', seller: seller1)

Service.create(title: 'I will do organic youtube video promotion', description: 'Introducing the Best & Exclusive YouTube Video Marketing Services!', price: 7_08, delivery_time: 3, category: 'website development', seller: seller2)
Service.create(title: 'I will write your tinder bio and select your profile photos', description: "It's an endless carousel of photos, a photogenic beauty contest.", price: 65_00, delivery_time: 1, category: 'website development', seller: seller2)
Service.create(title: 'I will be your social media manager and personal assistant', description: "Engage your community. Build an audience. Increase your revenue. It's all possible with our social media services packages.", price: 54_32, delivery_time: 7, category: 'website development', seller: seller2)

Offer.create(description: 'I need help with website design', status: 'Pending', final_price: 643_12, final_delivery_time: 3, buyer: buyer1, service: service1)
Offer.create(description: 'Please help me with my landing page', status: 'Accepted', final_price: 643_12, final_delivery_time: 3, buyer: buyer2, service: service1)
Offer.create(description: 'I want to create a business website', status: 'Rejected', final_price: 643_12, final_delivery_time: 3, buyer: buyer3, service: service1)
Offer.create(description: 'Let us talk about the design', status: 'Pending', final_price: 643_12, final_delivery_time: 3, buyer: buyer4, service: service1)
Offer.create(description: 'Please help me with my Shopify site', status: 'Accepted', final_price: 1_200_00, final_delivery_time: 7, buyer: buyer1, service: service2)
Offer.create(description: 'I want a shopify store', status: 'Rejected', final_price: 1_200_00, final_delivery_time: 7, buyer: buyer2, service: service2)
