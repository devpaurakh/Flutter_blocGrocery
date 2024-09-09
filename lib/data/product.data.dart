class ProductData {
  static List<Map<String, dynamic>> groceryProducts = [
    {
      'id': 1,
      'name': 'Apples',
      'category': 'Fruit',
      'price': 2.99,
      'quantity': 5,
      'image': 'https://cdn.standardmedia.co.ke/images/wysiwyg/images/K95jKvNXMJikvYAhmdf2KoOBhENB3OirbpTr5E5X.jpg',
      'description': 'Fresh, juicy apples perfect for snacks or baking.'
    },
    {
      'id': 2,
      'name': 'Milk',
      'category': 'Dairy',
      'price': 1.49,
      'quantity': 2,
      'image': 'https://www.heritagefoods.in/blog/wp-content/uploads/2020/12/shutterstock_539045662.jpg',
      'description': 'High-quality milk for all your dairy needs.'
    },
    {
      'id': 3,
      'name': 'Bread',
      'category': 'Bakery',
      'price': 1.99,
      'quantity': 1,
      'image': 'https://ananto.in/wp-content/uploads/2022/08/pauruti.jpg',
      'description': 'Soft and fluffy bread, great for sandwiches and toast.'
    },
    {
      'id': 4,
      'name': 'Eggs',
      'category': 'Dairy',
      'price': 3.29,
      'quantity': 12,
      'image': 'https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg',
      'description': 'Farm-fresh eggs, ideal for baking and cooking.'
    },
    {
      'id': 5,
      'name': 'Chicken Breast',
      'category': 'Meat',
      'price': 5.99,
      'quantity': 3,
      'image': 'https://www.allrecipes.com/thmb/Z5s08uvHYI2dg5LAd0vwoA47Ngo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/240208_simplebakedchickenbreasts_mfs_step1_0181-1-4x3-250b3f145a194aa3bab88e94e3cbae73.jpg',
      'description': 'Lean and tender chicken breast for healthy meals.'
    },
    {
      'id': 6,
      'name': 'Broccoli',
      'category': 'Vegetable',
      'price': 1.89,
      'quantity': 2,
      'image': 'https://cdn.britannica.com/25/78225-050-1781F6B7/broccoli-florets.jpg',
      'description': 'Nutrient-rich broccoli, perfect for salads and stir-fries.'
    },
    {
      'id': 7,
      'name': 'Rice',
      'category': 'Grains',
      'price': 4.49,
      'quantity': 1,
      'image': 'https://mlnf6rdzbkm2.i.optimole.com/w:1619/h:1080/q:mauto/f:best/https://www.formhealth.co/blog/wp-content/uploads/2023/04/iStock-153737841-scaled.jpg',
      'description': 'Versatile rice that pairs well with a variety of dishes.'
    },
    {
      'id': 8,
      'name': 'Orange Juice',
      'category': 'Beverage',
      'price': 3.79,
      'quantity': 1,
      'image': 'https://images-prod.healthline.com/hlcmsresource/images/AN_images/orange-juice-1296x728-feature.jpg',
      'description': 'Freshly squeezed orange juice with a tangy taste.'
    },
    {
      'id': 9,
      'name': 'Cheese',
      'category': 'Dairy',
      'price': 4.29,
      'quantity': 1,
      'image': 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthiest-cheese-1296x728-swiss.jpg?w=1155&h=1528',
      'description': 'Delicious cheese, great for sandwiches and snacks.'
    },
    {
      'id': 10,
      'name': 'Pasta',
      'category': 'Grains',
      'price': 2.69,
      'quantity': 3,
      'image': 'https://www.biggerbolderbaking.com/wp-content/uploads/2023/09/Penne-Pasta-Thumbnail-scaled.jpg',
      'description': 'Classic pasta for your favorite Italian dishes.'
    },
    {
      'id': 11,
      'name': 'Tomatoes',
      'category': 'Vegetable',
      'price': 2.49,
      'quantity': 6,
      'image': 'https://www.marthastewart.com/thmb/dHImdd0qIZQDkHRJ6BkgW938P0U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1181862786-e6a2868c56b748ce81b52b56af57f4ac.jpg',
      'description': 'Juicy tomatoes, perfect for salads and sauces.'
    },
    {
      'id': 12,
      'name': 'Ground Beef',
      'category': 'Meat',
      'price': 6.49,
      'quantity': 2,
      'image': 'https://embed.widencdn.net/img/beef/4hh1pywcnj/800x600px/Grind_Fine_85.psd?keep=c&u=7fueml',
      'description': 'High-quality ground beef for burgers and meat dishes.'
    },
    {
      'id': 13,
      'name': 'Butter',
      'category': 'Dairy',
      'price': 3.09,
      'quantity': 1,
      'image': 'https://www.tastingtable.com/img/gallery/the-best-type-of-butter-to-use-when-browning/intro-1686684813.jpg',
      'description': 'Rich and creamy butter for cooking and baking.'
    },
    {
      'id': 14,
      'name': 'Cereal',
      'category': 'Breakfast',
      'price': 3.99,
      'quantity': 1,
      'image': 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/are-breakfast-cereals-healthy-1296x728-feature.jpg?w=1155&h=1528',
      'description': 'Crunchy and tasty cereal to start your day right.'
    },
    {
      'id': 15,
      'name': 'Lettuce',
      'category': 'Vegetable',
      'price': 1.69,
      'quantity': 2,
      'image': 'https://www.bhg.com/thmb/Xy272oKSPzsYoQzQE1uzA6r6e8Y=/1878x0/filters:no_upscale():strip_icc()/tango-oakleaf-lettuce-c6f6417e-b835c4813e1d4cbf9d11ddf09fbd2ea6.jpg',
      'description': 'Fresh and crisp lettuce for salads and sandwiches.'
    },
    {
      'id': 16,
      'name': 'Chicken Thighs',
      'category': 'Meat',
      'price': 4.79,
      'quantity': 2,
      'image': 'https://www.allrecipes.com/thmb/9lNYA_t4tOlHvvwWEkHwZ4ftx1I=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Chicken-Thighs-Recipe-Thumbnail.jpg',
      'description': 'Tender and flavorful chicken thighs for grilling or roasting.'
    },
    {
      'id': 17,
      'name': 'Greek Yogurt',
      'category': 'Dairy',
      'price': 1.29,
      'quantity': 4,
      'image': 'https://www.yogurtland.com/wp-content/uploads/2020/03/greek-yogurt.png',
      'description': 'Thick and creamy Greek yogurt, great for breakfast or snacks.'
    },
    {
      'id': 18,
      'name': 'Olive Oil',
      'category': 'Condiment',
      'price': 6.99,
      'quantity': 1,
      'image': 'https://images.pexels.com/photos/283175/pexels-photo-283175.jpeg',
      'description': 'Premium olive oil for cooking and dressing.'
    },
    {
      'id': 19,
      'name': 'Garlic',
      'category': 'Vegetable',
      'price': 0.89,
      'quantity': 1,
      'image': 'https://cdn.britannica.com/72/155872-050-C3FDF4C1/garlic.jpg',
      'description': 'Aromatic garlic, perfect for enhancing the flavor of any dish.'
    },
    {
      'id': 20,
      'name': 'Spaghetti Sauce',
      'category': 'Condiment',
      'price': 2.29,
      'quantity': 2,
      'image': 'https://www.mrsglaucomas.com/wp-content/uploads/2020/07/spaghetti-sauce-1.jpg',
      'description': 'Savory spaghetti sauce for pasta and other Italian dishes.'
    }
  ];
}
