//
//  Tea.swift
//  TeaApp
//
//  Created by Lily Cornell on 3/14/21.
//

import Foundation

    let teaTypes = [
        
        Tea(name: "Black Tea",
            type: .black,
            brewing: "Temperature: 90C - 95C (195F - 200F)\nWater: 200mL (8oz)\nWeight: 4 grams (1 tsp)\nBrew Time: 3 - 5 minutes",
            whatisit: "Black tea, which originated in East Asia, is the most oxidated of all the different kinds of tea. This means that it has a stronger flavor and is darkest in color. There are many different varieties of black tea, not to get confused with different blends, depending on where it is produced which results in differing flavor notes. The different blends of tea result from the oxidized tea leaves being mixed with other plants, oils, or other spices.",
            howitsmade: "Like all tea leaves, they are first withered to start the oxidation process. Next, they are processed either by CTC (cut, tear, curl), or they are handled the orthodox way. CTC is used most often for lower quality tea leaves that are minced and packaged for tea bags. The orthodox way of producing black tea is often done by hand in which they are rolled and pressed down on a table. This creates a variety of broken and whole leaves that are then oxidized and dried. This makes for higher quality, loose leaf teas.",
            funfacts: "1. Most oxidized type of tea\n2. Black tea dates back to the Ming Dynasty (around 1590!)\n3. It is called 'red tea' in chinese\n4. It can keep its flavor for years\n5. Milk and sugar were added in the 1720s\n6. Generally contains 40-120mg of caffiene per 250mL\n7. Black tea accounts for 78% of the world's tea consumption"),
        
        Tea(name: "Green Tea",
            type: .green,
            brewing: "Temperature: 60C - 90C (140F - 185F)\nWater: 200mL (8oz)\nWeight: 4 grams (1 tsp)\nBrew Time: 1 - 3 minutes",
            whatisit: "Green tea, which originated in East Asia, is the one of the least oxidized of all the different kinds of tea. This means that it has more flavor and is pale green in color. There are many different varieties of green tea, not to get confused with different blends, depending on where it is produced which results in differing flavor notes. The different blends of tea result from the oxidized tea leaves being mixed with other plants, oils, or other spices.",
            howitsmade: "Green tea can be processed and grown in many different ways. Due to this, the amounts of polyphenols and other organic compounds can vary to bring out differents aromas and tastes. The interesting part of how green tea is grown is broken down into two ways: in the sun or in the shade. Sun grown tea often has a more tame flavor versus shade-grown (think matcha!) which has a more robust, strong earthy flavor.",
            funfacts: "1. Undergoes a different oxidation process than most teas\n2. Green tea originated in China more than 4,000 years ago\n3. Steeping green tea for too long or at too high of a temperature can result in a bitter flavor\n4. It is the most commonly drank tea in China"),
        
        Tea(name: "Herbal Tea",
            type: .herbal,
            brewing: "Temperature: 100C (212F)\nWater: 200mL (8oz)\nWeight: 4 grams (1 tsp)\nBrew Time: 5+ minutes",
            whatisit: "Herbal tea, which is not a 'true tea' like black, green, oolong, etc., is a combinations of other herbs, spices, and other plant material. These herbal teas, lesser known as 'tisanes', is a variation of the plant 'Theaeae' which dates all the way back to an origin point of China and Southeast Asia. Herbal tea is caffiene free and known for its calming properties which makes it the perfect drink for the evening or when wanting to relax.",
            howitsmade: "Herbal tea can be made using many different combinations of herbs, fuits, and spices. While there is not an extensive oxidation process like the true teas, herbal tea does need some care and consideration when deciding how to make it. Not all ingredients are safe to combine, however that shouldn't be a worry if one is purchasing teabags from the store!",
            funfacts: "1. Herbal teas are often regarded as having many different health benefits ranging from being a calming aid, to weight loss, and even aiding in aches and pains!\n2. There are hundreds of varities and combinations of herbal teas"),
        
        Tea(name: "Oolong Tea",
            type: .oolong,
            brewing: "Temperature: 82C - 96C (180F - 205F)\nWater: 200mL (8oz)\nWeight: 4 grams (1 tsp)\nBrew Time: 1 - 5 minutes",
            whatisit: "Oolong tea, also known as 'Black Dragon' is similar to black tea and contains and varying amount of caffiene. However, the taste can vary greatly from being sweet and fuity to a smokey woodsy aroma to even a fresh and complex taste. All of these different varieties depend on how they are produced and processed.",
            howitsmade: "Like all tea leaves, they are first withered to start the oxidation process. Next, they are processed either by CTC (cut, tear, curl), or they are handled the traditional way. CTC is used most often for lower quality tea leaves that are minced and packaged for tea bags. The traditional way of producing oolong tea is often done by hand in which they are rolled (or 'wrap-curled'). There are different ways of wrap curling, they will either be kept as long, curly leaves, or they will be curled into small beads with a little tail.",
            funfacts: "1. The oolong tea is often described as a mix between black and green tea\n2. Oolong is most commonly grown in China and Taiwan\n3. In China, the oolong tea produced there has a darker, more 'woody' taste\n4. In Taiwan, the oolong tea produced there has a lighter, more floral taste"),
        
        Tea(name: "White Tea",
            type: .white,
            brewing: "Temperature: 76C - 85C (170F - 185F)\nWater: 200mL (8oz)\nWeight: 4 grams (1 tsp)\nBrew Time: 5 - 8 minutes",
            whatisit: "White tea is similar to green tea in which is has a very pale yellow color as well as a mild but sweet earthy flavor. It's name comes from the white hairs on the bud of the tea plant which gives the plant a white appearence. White tea is mainly produced in China but is slowly moving towards Easter Nepal, Taiwan, and Thailand.",
            howitsmade: "White tea is produced similarly to green tea, without being steamed first. The tea leaves are first picked, and then they are withered, dried by air dryers, solar drying, or mechanical drying. White tea is not manipulated or oxidized in many ways giving it a very natural, mellow flavor.",
            funfacts: "1. White tea is very high in antioxidants\n2. It has a good amount of floride which can help protect teeth from bacteria"),
        
        Tea(name: "Yellow Tea",
            type: .yellow,
            brewing: "Temperature: 75C - 80C (167F - 176F)\nWater: 200mL (8oz)\nWeight: 4 grams (1 tsp)\nBrew Time: 2 - 3 minutes",
            whatisit: "Yellow tea is a rare tea that can be found maininly in China. It is very similar to green tea in respect to the flavors being more mellow and earthy. It is the least known type of tea due to it being hard to find outside of China, this makes it one of the most expensive teas to buy.",
            howitsmade: "Yellow tea is produced in the same way as green tea. They are picked, withered, rolled, and dried before any oxidation can happen. However, during the drying process, the yellow tea leaves are encased and steamed slower than when green tea leaves are steamed. This creates the more mellow taste as well as a lighter color and neutralises any grassy-like aroma.",
            funfacts: "1. Yellow tea, like black tea dates back to the Ming Dynasty\n2. There are three different types of yellow tea: Huang Ya Cha, Huang Xiao Cha, and Huang Da Cha"),
    ]

class Tea {
    
    enum `Type`: String {
        case black = "black"
        case green = "green"
        case herbal = "herbal"
        case oolong = "oolong"
        case white = "white"
        case yellow = "yellow"
    }
    
    var name: String
    var type: Type
    var brewing: String
    var whatisit: String
    var howitsmade: String
    var funfacts: String
    
    init(name: String, type: Type, brewing: String, whatisit: String, howitsmade: String, funfacts: String) {
        self.name = name
        self.type = type
        self.brewing = brewing
        self.whatisit = whatisit
        self.howitsmade = howitsmade
        self.funfacts = funfacts
    }
}
