class PopulateDatabsae < ActiveRecord::Migration
  def change
    Product.create(name:"AlmondToeCourtShoes, PatentBlack",
                  catagory:"Women’sFootwear",
                  price: 99.00,
                  quantity: 5,
                  img: "http://asset1.marksandspencer.com/is/image/mands/HT_01_T02_0567A_Y4_SP14_EC_0" )
    Product.create(name:"SuedeShoes, Blue",
                  catagory:"Women’sFootwear",
                  price: 42.00,
                  quantity: 4,
                  img: "http://www.alegoo.com/images13/boots-shoes/footgear-01/021/blue-suede-shoes-13.jpg" )
    Product.create(name:"LeatherDriverSaddleLoafers, Tan",
                  catagory:"Men’s Footwear",
                  price: 34.00,
                  quantity: 12,
                  img: "https://cdnc.lystit.com/photos/d9c5-2014/06/12/dune-brown-benny-leather-driver-saddle-loafers-product-1-20753587-2-795976462-normal.jpeg" )
    Product.create(name:"FlipFlops, Red",
                  catagory:"Men’s Footwear",
                  price: 19.00,
                  quantity: 6,
                  img: "http://www.popits-uk.com/catalog/images/Red_FF.jpg" )
    Product.create(name:"FlipFlops, Blue",
                  catagory:"Men’s Footwear",
                  price: 19.00,
                  quantity: 0,
                  img: "http://www.flipflopsuk.co.uk/wp-content/uploads/2013/10/Cheap-bright-blue-havaianas-slim-flip-flops-300x300.jpg" )
    Product.create(name: "GoldButtonCardigan, Black",
                   catagory: "Women’s Casualwear",
                   price: 167.00,
                   quantity: 6,
                   img: "http://product.nuji.com/large/380ee758-bf39-4aea-becb-e715772c88b4.jpg")
    Product.create(name: "CottonShorts, MediumRed",
                  catagory: "Women’s Casualwear",
                  price: 30.00,
                  quantity: 5,
                  img: "http://johnlewis.scene7.com/is/image/JohnLewis/002077568?$prod_exlrg$")
    Product.create(name: "FineStripeShortSleeveShirt, Grey",
                  catagory: "Men’s Casualwear",
                  price: 49.00,
                  quantity: 9,
                  img: "http://www.bigtopshirtshop.com/assets/images/all/Port_Authority_K558_Graphite_Grey_Black_Mens_Fine_Stripe_Performance_Short_Sleeve_Polo_Shirt.jpg")
    Product.create(name: "FineStripeShortSleeveShirt, Green",
                  catagory: "Men’s Casualwear",
                  price: 39.00,
                  quantity: 3,
                  img: "http://www.cwclothes.co.uk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/p/t/pts11grn-flat.jpg")
    Product.create(name: "SharkskinWaistcoat, Charcoal",
                  catagory: "Men’s Formalwear",
                  price: 75.00,
                  quantity: 2,
                  img: "http://www.birtchnells.co.uk/images/products/scott-slim-fit-blue-sharkskin-waist-coat-Tt0N.jpg")
    Product.create(name: "LightweightPatchPocketBlazer, Deer",
                  catagory: "Men’s Formalwear",
                  price: 175.00,
                  quantity: 1,
                  img: "https://cdna.lystit.com/photos/2012/07/24/reiss-deer-lightweight-patch-pkt-blazer-product-1-4269143-518146599.jpeg")
    Product.create(name: "BirdPrintDress, Black",
                  catagory: "Women’s Formalwear",
                  price: 270.00,
                  quantity: 10,
                  img: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=61463924")
    Product.create(name: "MidTwistCutOutDress, Pink",
                  catagory: "Women’s Formalwear",
                  price: 540.00,
                  quantity: 5,
                  img:"http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=125654260" )
  end
end
