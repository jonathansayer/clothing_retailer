class PopulateDatabsae < ActiveRecord::Migration
  def change
    Product.create(name:"AlmondToeCourtShoes, PatentBlack",
                  catagory:"Women’sFootwear",
                  price: 99.00,
                  quantity: 5,
                  img: "AlmondToeCourtShoes.png" )
    Product.create(name:"SuedeShoes, Blue",
                  catagory:"Women’sFootwear",
                  price: 42.00,
                  quantity: 4,
                  img: "SuedeShoesBlue.png" )
    Product.create(name:"LeatherDriverSaddleLoafers, Tan",
                  catagory:"Men’s Footwear",
                  price: 34.00,
                  quantity: 12,
                  img: "LeatherDriverSaddleLoafersTan.png" )
    Product.create(name:"FlipFlops, Red",
                  catagory:"Men’s Footwear",
                  price: 19.00,
                  quantity: 6,
                  img: "FlipFlopsRed.png" )
    Product.create(name:"FlipFlops, Blue",
                  catagory:"Men’s Footwear",
                  price: 19.00,
                  quantity: 0,
                  img: "FlipFlopsBlue.png" )
    Product.create(name: "GoldButtonCardigan, Black",
                   catagory: "Women’s Casualwear",
                   price: 167.00,
                   quantity: 6,
                   img: "GoldButtonCardiganBlack.png")
    Product.create(name: "CottonShorts, MediumRed",
                  catagory: "Women’s Casualwear",
                  price: 30.00,
                  quantity: 5,
                  img: "CottonShortsMediumRed.png")
    Product.create(name: "FineStripeShortSleeveShirt, Grey",
                  catagory: "Men’s Casualwear",
                  price: 49.00,
                  quantity: 9,
                  img: "FineStripeShortSleeveShirtGrey.png")
    Product.create(name: "FineStripeShortSleeveShirt, Green",
                  catagory: "Men’s Casualwear",
                  price: 39.00,
                  quantity: 3,
                  img: "FineStripeShortSleeveShirtGreen.png")
    Product.create(name: "SharkskinWaistcoat, Charcoal",
                  catagory: "Men’s Formalwear",
                  price: 75.00,
                  quantity: 2,
                  img: "SharkskinWaistcoatCharcoal.png")
    Product.create(name: "LightweightPatchPocketBlazer, Deer",
                  catagory: "Men’s Formalwear",
                  price: 175.00,
                  quantity: 1,
                  img: "LightweightPatchPocketBlazerDeer.png")
    Product.create(name: "BirdPrintDress, Black",
                  catagory: "Women’s Formalwear",
                  price: 270.00,
                  quantity: 10,
                  img: "BirdPrintDressBlack.png")
    Product.create(name: "MidTwistCutOutDress, Pink",
                  catagory: "Women’s Formalwear",
                  price: 540.00,
                  quantity: 5,
                  img:"MidTwistCutOutDressPink.png" )
  end
end
