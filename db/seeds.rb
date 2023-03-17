puts "Destroying reviewss..."
Review.destroy_all

puts "Destroying offers..."
Offer.destroy_all

puts "Destroying services..."
Service.destroy_all

puts "Destroying users..."
User.destroy_all

puts "Creating users..."
buyer1_avatar = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766973/avatar-1_irvnls.jpg")
buyer1 = User.new(email: 'alice@alicedev.com', password: '123456', location: 'Singapore')
buyer1.photo.attach(io: buyer1_avatar, filename: "avatar-1_irvnls.jpg", content_type: "image/jpg")
buyer1.save

buyer2_avatar = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766978/avatar-2_dsvieu.jpg")
buyer2 = User.new(email: 'bob@bobdev.com', password: '234567', location: 'Singapore')
buyer2.photo.attach(io: buyer2_avatar, filename: "avatar-2_dsvieu.jpg", content_type: "image/jpg")
buyer2.save

seller1_avatar = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766985/avatar-3_ft4g8u.jpg")
seller1 = User.new(email: 'carol@caroldev.com', password: '345678', location: 'Singapore')
seller1.photo.attach(io: seller1_avatar, filename: "avatar-3_ft4g8u.jpg", content_type: "image/jpg")
seller1.save

seller2_avatar = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766978/avatar-4_t2omi6.jpg")
seller2 = User.new(email: 'dave@davedev.com', password: '456789', location: 'Berlin')
seller2.photo.attach(io: seller2_avatar, filename: "avatar-4_t2omi6.jpg", content_type: "image/jpg")
seller2.save

buyer3_avatar = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766977/avatar-5_xnhsvc.jpg")
buyer3 = User.new(email: 'eve@evedev.com', password: 'abcdef', location: 'London')
buyer3.photo.attach(io: buyer3_avatar, filename: "avatar-5_xnhsvc.jpg", content_type: "image/jpg")
buyer3.save

buyer4_avatar = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766975/avatar-6_vu474x.jpg")
buyer4 = User.new(email: 'frank@frankdev.com', password: 'bcdefg', location: 'Paris')
buyer4.photo.attach(io: buyer4_avatar, filename: "avatar-6_vu474x.jpg", content_type: "image/jpg")
buyer4.save

puts "Creating services..."
service1_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766978/social-1_fk4h1c.jpg")
service1 = Service.new(title: 'I will design a custom landing page for your business website', description: 'Welcome to the gig with the Most Amazing and High Converting Landing Page designs', price: 643_12, delivery_time: 3, category: 'Digital Marketing', seller: seller1)
service1.photo.attach(io: service1_pic, filename: "social-1_fk4h1c.jpg", content_type: "image/jpg")
service1.save

service2_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766975/social-2_af8jdr.jpg")
service2 = Service.new(title: 'I will build a shopify website or shopify dropshipping store', description: 'Top-Rated Shopify Dropshipping & Branding Expert', price: 1_200_00, delivery_time: 7, category: 'Digital Marketing', seller: seller1)
service2.photo.attach(io: service2_pic, filename: "social-2_af8jdr.jpg", content_type: "image/jpg")
service2.save

service3_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766977/social-3_mhv57v.jpg")
service3 = Service.new(title: 'I will build modern and responsive wordpress website design', description: 'Delivering affordable high-converting, fast and bespoke websites.', price: 345_00, delivery_time: 14, category: 'Digital Marketing', seller: seller1)
service3.photo.attach(io: service3_pic, filename: "social-3_mhv57v.jpg", content_type: "image/jpg")
service3.save

service4_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766974/social-4_pmcuch.jpg")
service4 = Service.new(title: 'I will create professional wordpress website for you', description: 'I can create a responsive WordPress website which will be compatible for all devices e.g. mobile, tablet and computer.', price: 234_43, delivery_time: 7, category: 'Digital Marketing', seller: seller1)
service4.photo.attach(io: service4_pic, filename: "social-4_pmcuch.jpg", content_type: "image/jpg")
service4.save

service5_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766973/social-5_ztt9wz.jpg")
service5 = Service.new(title: 'I will design beautiful wix websites with unlimited revisions', description: 'Our team has designed over 1,000 stunning Wix Website Designs for business in over 32 countries and in all 50 US states!', price: 123_00, delivery_time: 45, category: 'Graphic & Design', seller: seller1)
service5.photo.attach(io: service5_pic, filename: "social-5_ztt9wz.jpg", content_type: "image/jpg")
service5.save

service6_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766973/social-6_wvc3jo.jpg")
service6 = Service.new(title: 'I will design and develop a responsive modern wordpress website for your business', description: 'Im Martin, a full-time English-speaking WordPress developer with over 7 years of experience and over 500 completed WordPress projects on Fiverr.', price: 489_65, delivery_time: 14, category: 'Graphic & Design', seller: seller1)
service6.photo.attach(io: service6_pic, filename: "social-6_wvc3jo.jpg", content_type: "image/jpg")
service6.save

service7_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766975/web-dev-1_d5htga.jpg")
service7 = Service.new(title: 'I will do organic youtube video promotion', description: 'Introducing the Best & Exclusive YouTube Video Marketing Services!', price: 7_08, delivery_time: 3, category: 'Graphic & Design', seller: seller2)
service7.photo.attach(io: service7_pic, filename: "web-dev-1_d5htga.jpg", content_type: "image/jpg")
service7.save

service8_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766982/web-dev-2_gp1fxy.jpg")
service8 = Service.new(title: 'I will write your tinder bio and select your profile photos', description: "It's an endless carousel of photos, a photogenic beauty contest.", price: 65_00, delivery_time: 1, category: 'Digital Marketing', seller: seller2)
service8.photo.attach(io: service8_pic, filename: "web-dev-2_gp1fxy.jpg", content_type: "image/jpg")
service8.save

service9_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678766977/web-dev-3_vw4r1i.jpg")
service9 = Service.new(title: 'I will be your social media manager and personal assistant', description: "Engage your community. Build an audience. Increase your revenue. It's all possible with our social media services packages.", price: 54_32, delivery_time: 7, category: 'Digital Marketing', seller: seller2)
service9.photo.attach(io: service9_pic, filename: "web-dev-3_vw4r1i.jpg", content_type: "image/jpg")
service9.save

service10_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1679034056/Fiverr-Home/digital-marketing-1_a0kcet.jpg")
service10 = Service.new(title: 'I will setup, manage and optimize your amazon ppc campaign ads', description: "I will help you increase sales on Amazon,increase your sales by an average of 40 percent to bring your Amazon product to the ideal point.", price: 28_17, delivery_time: 1, category: 'Digital Marketing', seller: seller1)
service10.photo.attach(io: service10_pic, filename: "digital-marketing-1_a0kcet.jpg", content_type: "image/jpg")
service10.save

service11_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1679034056/Fiverr-Home/digital-marketing-2_yopqsw.jpg")
service11 = Service.new(title: 'I will set up facebook shop instagram shop with solving all the issues', description: "Instagram shop and the Facebook shop are very helpful to grow your business and sales. So, contact me right now to help you set up everything :)", price: 22_12, delivery_time: 2, category: 'Digital Marketing', seller: seller1)
service11.photo.attach(io: service11_pic, filename: "digital-marketing-2_yopqsw.jpg", content_type: "image/jpg")
service11.save

service12_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1679034056/Fiverr-Home/digital-marketing-3_ew1tyh.jpg")
service12 = Service.new(title: 'I will do ebay product listing SEO optimization html template design', description: "Do you need eBay products listing in your eBay store with SEO? I am here to list your all products on eBay. I am well experienced in eBay listing.", price: 7_04, delivery_time: 2, category: 'Digital Marketing', seller: seller1)
service12.photo.attach(io: service12_pic, filename: "digital-marketing-3_ew1tyh.jpg", content_type: "image/jpg")
service12.save

service13_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1679034057/Fiverr-Home/digital-marketing-4_tnewcy.jpg")
service13 = Service.new(title: 'I will create your amazon brand store or storefront design', description: "You can promote your brand on social media using the store custom URL (www.amazon.marketplace/your_brand) by having a professional and attractive storefront.", price: 104_83, delivery_time: 1, category: 'Digital Marketing', seller: seller1)
service13.photo.attach(io: service13_pic, filename: "digital-marketing-4_tnewcy.jpg", content_type: "image/jpg")
service13.save

service14_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1679034056/Fiverr-Home/digital-marketing-5_yf0rsh.jpg")
service14 = Service.new(title: 'I will do a conversion rate optimization cro review for your website', description: "I have over 6 years of experience with Shopify, e-commerce and conversion rate optimization (cro); I'm the founder & CEO of Fenitas, a brand that sells 100% natural food colouring.", price: 168_99, delivery_time: 7, category: 'Digital Marketing', seller: seller1)
service14.photo.attach(io: service14_pic, filename: "digital-marketing-5_yf0rsh.jpg", content_type: "image/jpg")
service14.save

service15_pic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1679034056/Fiverr-Home/digital-marketing-6_so5cyn.jpg")
service15 = Service.new(title: 'I will rewrite your etsy titles and tags for SEO', description: "With over 2400 sales in my shop, I have learned a LOT! I want to help you improve your Etsy shop by offering you constructive feedback. I believe in your business, and I want you to be confident in running your shop!", price: 21_12, delivery_time: 5, category: 'Digital Marketing', seller: seller1)
service15.photo.attach(io: service15_pic, filename: "digital-marketing-6_so5cyn.jpg", content_type: "image/jpg")
service15.save

puts "Creating offers..."
Offer.create(description: 'I need help with website design', status: 'Pending', final_price: 643_12, final_delivery_time: 3, buyer: buyer1, service: service1)
Offer.create(description: 'Please help me with my landing page', status: 'Accepted', final_price: 643_12, final_delivery_time: 3, buyer: buyer2, service: service1)
Offer.create(description: 'I want to create a business website', status: 'Rejected', final_price: 643_12, final_delivery_time: 3, buyer: buyer3, service: service1)
Offer.create(description: 'Let us talk about the design', status: 'Pending', final_price: 643_12, final_delivery_time: 3, buyer: buyer4, service: service1)
Offer.create(description: 'Please help me with my Shopify site', status: 'Accepted', final_price: 1_200_00, final_delivery_time: 7, buyer: buyer1, service: service2)
Offer.create(description: 'I want a shopify store', status: 'Rejected', final_price: 1_200_00, final_delivery_time: 7, buyer: buyer2, service: service2)
Offer.create(description: 'I need a nice wordpress website', status: 'Pending', final_price: 345_00, final_delivery_time: 14, buyer: buyer1, service: service3)
Offer.create(description: 'Help me with my wordpress portfolio page', status: 'Accepted', final_price: 234_43, final_delivery_time: 7, buyer: buyer1, service: service4)
Offer.create(description: 'How to get a nice wix website', status: 'Pending', final_price: 123_00, final_delivery_time: 45, buyer: buyer1, service: service5)
Offer.create(description: 'My portfolio page needs help!', status: 'Accepted', final_price: 489_65, final_delivery_time: 14, buyer: buyer1, service: service6)

puts "Creating reviews..."
Review.create(comment: 'Seller was very knowledgeable and professional. Very skilled and helped me create a terrific product. Greatly appreciate his effort and patience', rating: 5, service: service1)
Review.create(comment: 'Outstanding and highly professional. I can strongly recommend this freelancer that delivered the work quickly and with a superior quality.', rating: 4, service: service1)
Review.create(comment: 'Fantastic to work with! ', rating: 4, service: service2)
Review.create(comment: 'Really awesome work!', rating: 5, service: service2)

puts "Finished!"