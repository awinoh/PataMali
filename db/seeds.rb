# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "Start seeding..."
  makeups = Makeup.create([
    {name: "Maybelline Lipstic",
     image_url: "https://beautyclick.co.ke/products/maybelline-superstay-matte-ink-liquid-20-pioneer"
    },

   {
    name: "Fit-me foundation",
    image_url: "https://beautybliss.co.ke/product/la-girl-pro-matte-foundation/?gclid=EAIaIQobChMI7dCWxvjn-wIVUenmCh1cnA2JEAQYAiABEgJVk_D_BwE"
  },

  {
    name: "Makeup-brush", 
    image_url: "https://www.kilimall.co.ke/new/goods/13965149?gclid=EAIaIQobChMI14Dwkvnn-wIVCbTVCh2SogtUEAQYASABEgJ3YPD_BwE"
  }
])

reviews = Review.create([
    {
        tittle: "Perfect",
        description: "The Maybelline Lipstick is effortless while applying",
        rating: "5"
    },

    {
        tittle: "Good", 
        description: "The foundation takes too long to dry up", 
        rating: "2"
    },   
    {
        tittle: "Weak", 
        description: "The makeup-brush was too weak and it got broken", 
        rating: "1"
    },
    
    {
        tittle: "Poor",
         description: "The lipstick doesn't glide on lips", 
         rating: "4"
    }
])


puts "Seeding done!"

