class PopulateDatabsae < ActiveRecord::Migration
  def change
    Product.create(name:"Almond Toe Court Shoes, Patent Black",
                  catagory:"Women’sFootwear",
                  price: 99.00,
                  quantity: 5,
                  img: "AlmondToeCourtShoes.png" )
    Product.create(name:"Suede Shoes, Blue",
                  catagory:"Women’sFootwear",
                  price: 42.00,
                  quantity: 4,
                  img: "SuedeShoesBlue.png" )
    Product.create(name:"Leather Driver Saddle Loafers, Tan",
                  catagory:"Men’s Footwear",
                  price: 34.00,
                  quantity: 12,
                  img: "LeatherDriverSaddleLoafersTan.png" )
    Product.create(name:"Flip Flops, Red",
                  catagory:"Men’s Footwear",
                  price: 19.00,
                  quantity: 6,
                  img: "FlipFlopsRed.png" )
    Product.create(name:"Flip Flops, Blue",
                  catagory:"Men’s Footwear",
                  price: 19.00,
                  quantity: 0,
                  img: "FlipFlopsBlue.png" )
    Product.create(name: "Gold Button Cardigan, Black",
                   catagory: "Women’s Casualwear",
                   price: 167.00,
                   quantity: 6,
                   img: "GoldButtonCardiganBlack.png")
    Product.create(name: "Cotton Shorts, Medium Red",
                  catagory: "Women’s Casualwear",
                  price: 30.00,
                  quantity: 5,
                  img: "CottonShortsMediumRed.png")
    Product.create(name: "Fine Stripe Short Sleeve Shirt, Grey",
                  catagory: "Men’s Casualwear",
                  price: 49.00,
                  quantity: 9,
                  img: "FineStripeShortSleeveShirtGrey.png")
    Product.create(name: "Fine Stripe Short Sleeve Shirt, Green",
                  catagory: "Men’s Casualwear",
                  price: 39.00,
                  quantity: 3,
                  img: "FineStripeShortSleeveShirtGreen.png")
    Product.create(name: "Shark skin Waistcoat, Charcoal",
                  catagory: "Men’s Formalwear",
                  price: 75.00,
                  quantity: 2,
                  img: "SharkskinWaistcoatCharcoal.png")
    Product.create(name: "Lightweight Patch Pocket Blazer, Deer",
                  catagory: "Men’s Formalwear",
                  price: 175.00,
                  quantity: 1,
                  img: "LightweightPatchPocketBlazerDeer.png")
    Product.create(name: "Bird Print Dress, Black",
                  catagory: "Women’s Formalwear",
                  price: 270.00,
                  quantity: 10,
                  img: "BirdPrintDressBlack.png")
    Product.create(name: "Mid-Twist Cut Out Dress, Pink",
                  catagory: "Women’s Formalwear",
                  price: 540.00,
                  quantity: 5,
                  img:"MidTwistCutOutDressPink.png" )
  end
end
