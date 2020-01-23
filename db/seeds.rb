# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Author.destroy_all
Genre.destroy_all
Book.destroy_all
Bookshelf.destroy_all
BookSubscription.destroy_all
Review.destroy_all

# User
User.create(email: 'guest@guest.com', password: 'password', username: 'guest', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed1@gmail.com', password: 'test123', username: 'mackerellibrarian', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed2@gmail.com', password: 'test123', username: 'sparrowsecretary', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed3@gmail.com', password: 'test123', username: 'horserobber', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed4@gmail.com', password: 'test123', username: 'turkeyrancher', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed5@gmail.com', password: 'test123', username: 'geezerthumb', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed6@gmail.com', password: 'test123', username: 'muppetiris', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed7@gmail.com', password: 'test123', username: 'plinkbarker', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed8@gmail.com', password: 'test123', username: 'cheepstrumpet', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed9@gmail.com', password: 'test123', username: 'antpile', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed10@gmail.com', password: 'test123', username: 'rackettree', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed11@gmail.com', password: 'test123', username: 'purpletiger', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed12@gmail.com', password: 'test123', username: 'chengdu', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed12@gmail.com', password: 'test123', username: 'sichuan', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed13@gmail.com', password: 'test123', username: 'meatball', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed14@gmail.com', password: 'test123', username: 'pubsub', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed15@gmail.com', password: 'test123', username: 'tabletennis', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed16@gmail.com', password: 'test123', username: 'reactjsguy2', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed17@gmail.com', password: 'test123', username: 'railsguy4', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed18@gmail.com', password: 'test123', username: 'yellowrainbow', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed19@gmail.com', password: 'test123', username: 'woodstock7', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed20@gmail.com', password: 'test123', username: 'booklvr8', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed21@gmail.com', password: 'test123', username: 'bookworm3', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed22@gmail.com', password: 'test123', username: 'mikespizza', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed23@gmail.com', password: 'test123', username: 'petestexmex', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed24@gmail.com', password: 'test123', username: 'revolvingdoor', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed25@gmail.com', password: 'test123', username: 'hotpot4', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed26@gmail.com', password: 'test123', username: 'huoguo', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed27@gmail.com', password: 'test123', username: 'zajiangmian', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed28@gmail.com', password: 'test123', username: 'niuroumian', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed29@gmail.com', password: 'test123', username: 'mapuodoufu', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed30@gmail.com', password: 'test123', username: 'insight444', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed31@gmail.com', password: 'test123', username: 'hexinpaidu', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed32@gmail.com', password: 'test123', username: 'baoan', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed33@gmail.com', password: 'test123', username: 'therange', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed34@gmail.com', password: 'test123', username: 'berryberry', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed35@gmail.com', password: 'test123', username: 'shaokao', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed36@gmail.com', password: 'test123', username: 'chongqing', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed37@gmail.com', password: 'test123', username: 'xiaomian', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed38@gmail.com', password: 'test123', username: 'baijiu', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed39@gmail.com', password: 'test123', username: 'beijing', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'seed40@gmail.com', password: 'test123', username: 'shanghai', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')

# Author
Author.create(name: 'Hermann Hesse', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
Author.create(name: 'Amor Towles', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')

orwell = Author.create(name: 'George Orwell', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
carlos = Author.create(name: 'Carlos Ruiz Zafón', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
bukowski = Author.create(name: 'Charles Bukowski', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
wong = Author.create(name: 'Jan Wong', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
frankyl = Author.create(name: 'Viktor E. Frankyl', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
wilde = Author.create(name: 'Oscar Wilde', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
rothfuss = Author.create(name: 'Patrick Rothfuss', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
sanderson = Author.create(name: 'Brandon Sanderson', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
lynch = Author.create(name: 'Scott Lynch', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
pierce_brown = Author.create(name: 'Pierce Brown', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
sloman = Author.create(name: 'Larry Sloman', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
flea = Author.create!(name: 'Flea', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
demick = Author.create(name: 'Barbara Demick', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
fan_shen = Author.create(name: 'Fan Shen', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
yiwu = Author.create(name: 'Liao Yiwu', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
meyer = Author.create(name: 'Michael Meyer', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
dee_brown = Author.create(name: 'Dee Brown', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
jack_weatherford = Author.create(name: 'Jack Weatherford', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
jon_meacham = Author.create(name: 'Jon Meacham', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
harrer = Author.create(name: 'Heinrich Harrer', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
plokhy = Author.create(name: 'Serhii Plokhy', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
maugham = Author.create(name: 'W. Somerset Maugham', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')



# Genre
fiction = Genre.create(name: 'fiction')
non_fiction = Genre.create(name: 'non-fiction')
fantasy = Genre.create(name: 'fantasy')

# Book

Book.create(
    title: "You Have Arrived at Your Destination",
    author: Author.second,
    genre: Genre.first,
    description: 'When Sam’s wife first tells him about Vitek, a twenty-first-century fertility lab, he sees it as the natural next step in trying to help their future child get a “leg up” in a competitive world. But the more Sam considers the lives that his child could lead, the more he begins to question his own relationships and the choices he has made in his life.',
    image: 'https://images-na.ssl-images-amazon.com/images/I/51JQAqbonaL.jpg'
  )
Book.create(
    title: "Eve in Hollywood",
    author: Author.second,
    genre: Genre.first,
    description: 'In this chain of six richly detailed and atmospheric stories, each told from a different perspective, Towles unfolds the events that take Eve to the heart of Old Hollywood. Beginning in the dining car of the Golden State Limited in September 1938, we follow Eve to the elegant rooms of the Beverly Hills Hotel, the fabled tables of Antonio’s, the amusement parks on the Santa Monica piers, the afro-Cuban dance clubs of Central Avenue, and ultimately the set of Gone with The Wind.',
    image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1369321477l/17972257.jpg'
  )

Book.create(
    title: "Animal Farm",
    author: orwell,
    genre: Genre.first,
    description: "A farm is taken over by its overworked, mistreated animals. With flaming idealism and stirring slogans, they set out to create a paradise of progress, justice, and equality. Thus the stage is set for one of the most telling satiric fables ever penned –a razor-edged fairy tale for grown-ups that records the evolution from revolution against tyranny to a totalitarianism just as terrible.",
    image: 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9780/1410/9780141036137.jpg'
  )
Book.create(
    title: "Shadow of the Wind",
    author: carlos,
    genre: Genre.first,
    description: "Barcelona, 1945. Just after the war, a great world city lies in shadow, nursing its wounds, and a boy named Daniel awakes on his eleventh birthday to find that he can no longer remember his mother’s face. To console his only child, Daniel’s widowed father, an antiquarian book dealer, initiates him into the secret of the Cemetery of Forgotten Books, a library tended by Barcelona’s guild of rare-book dealers as a repository for books forgotten by the world, waiting for someone who will care about them again. Daniel’s father coaxes him to choose a volume from the spiraling labyrinth of shelves, one that, it is said, will have a special meaning for him.",
    image: 'https://images-na.ssl-images-amazon.com/images/I/51kS6aEjFIL._SX324_BO1,204,203,200_.jpg'
  )

Book.create(
    title: "The Picture of Dorian Gray",
    author: wilde,
    genre: Genre.first,
    description: "Written in his distinctively dazzling manner, Oscar Wilde’s story of a fashionable young man who sells his soul for eternal youth and beauty is the author’s most popular work. The tale of Dorian Gray’s moral disintegration caused a scandal when it ﬁrst appeared in 1890, but though Wilde was attacked for the novel’s corrupting inﬂuence, he responded that there is, in fact, “a terrible moral in Dorian Gray.” Just a few years later, the book and the aesthetic/moral dilemma it presented became issues in the trials occasioned by Wilde’s homosexual liaisons, which resulted in his imprisonment. Of Dorian Gray’s relationship to autobiography, Wilde noted in a letter, “Basil Hallward is what I think I am: Lord Henry what the world thinks me: Dorian what I would like to be—in other ages, perhaps.",
    image: 'https://www.prestwickhouse.com/ProductImages//ebeb01f5-41da-4f9b-a6cc-763c1610ccff/images/202121.jpg'
  )

Book.create(
    title: "Ham on Rye",
    author: bukowski,
    genre: Genre.first,
    description: "In what is widely hailed as the best of his many novels, Charles Bukowski details the long, lonely years of his own hardscrabble youth in the raw voice of alter ego Henry Chinaski. From a harrowingly cheerless childhood in Germany through acne-riddled high school years and his adolescent discoveries of alcohol, women, and the Los Angeles Public Library's collection of D. H. Lawrence, 'Ham on Rye' offers a crude, brutal, and savagely funny portrait of an outcast's coming-of-age during the desperate days of the Great Depression.",
    image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1388195001l/38501.jpg'
  )

Book.create(
    title: "Post Office",
    author: bukowski,
    genre: Genre.first,
    description: "'It began as a mistake.' By middle age, Henry Chinaski has lost more than twelve years of his life to the U.S. Postal Service. In a world where his three true, bitter pleasures are women, booze, and racetrack betting, he somehow drags his hangover out of bed every dawn to lug waterlogged mailbags up mud-soaked mountains, outsmart vicious guard dogs, and pray to survive the day-to-day trials of sadistic bosses and certifiable coworkers.",
    image: 'https://www.sweetbooks.com/pictures/medium/SKB-12098.jpg'
  )

Book.create(
    title: "Red China Blues: My Long March From Mao to Now",
    author: wong,
    genre: Genre.first,
    description: "Red China Blues is Wong's startling--and ironic--memoir of her rocky six-year romance with Maoism (which crumbled as she became aware of the harsh realities of Chinese communism); her dramatic firsthand account of the devastating Tiananmen Square uprising; and her engaging portrait of the individuals and events she covered as a correspondent in China during the tumultuous era of capitalist reform under Deng Xiaoping. In a frank, captivating, deeply personal narrative she relates the horrors that led to her disillusionment with the worker's paradise. And through the stories of the people--an unhappy young woman who was sold into marriage, Chinas most famous dissident, a doctor who lengthens penises--Wong reveals long-hidden dimensions of the worlds most populous nation.",
    image: 'https://images-na.ssl-images-amazon.com/images/I/51rPb4-pAQL.jpg'
  )

Book.create!(
  title: "Chernobyl: The History of a Nuclear Catastrophe",
  author: plokhy,
  genre: non_fiction,
  description: "In Chernobyl, Serhii Plokhy draws on new sources to tell the dramatic stories of the firefighters, scientists, and soldiers who heroically extinguished the nuclear inferno. He lays bare the flaws of the Soviet nuclear industry, tracing the disaster to the authoritarian character of the Communist party rule, the regime's control over scientific information, and its emphasis on economic development over all else.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1513389773l/36204894.jpg'
  )


Book.create!(
  title: "The Hero of Ages",
  author: sanderson,
  genre: fantasy,
  description: "Tricked into releasing the evil spirit Ruin while attempting to close the Well of Ascension, new emperor Elend Venture and his wife, the assassin Vin, are now hard-pressed to save the world.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1480717763l/2767793._SY475_.jpg'
  )

Book.create!(
  title: "A Whimsy of the World",
  author: Author.second,
  genre: Genre.first,
  description: "For as long as the town of Aurora could remember, Ellie Watson had been a spirited sort. On her way to the general store to pick up some safety pins for her mother, Ellie could easily take a left instead of a right, and end up on the banks of the Tanner River throwing stones at the silvery shadows of trout. And while getting dressed for the Sunday social, she could suddenly put on her brother’s overalls instead of her new yellow dress – despite her brother being four years older and two inches taller.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1558396718l/41952927.jpg'
  )



Book.create!(
  title: "The Wise Man's Fear",
  author: rothfuss,
  genre: fantasy,
  description: "So begins the tale of a hero told from his own point of view — a story unequaled in fantasy literature. Now in The Wise Man's Fear, an escalating rivalry with a powerful member of the nobility forces Kvothe to leave the University and seek his fortune abroad. Adrift, penniless, and alone, he travels to Vintas, where he quickly becomes entangled in the politics of courtly society. While attempting to curry favor with a powerful noble, Kvothe uncovers an assassination attempt, comes into conflict with a rival arcanist, and leads a group of mercenaries into the wild, in an attempt to solve the mystery of who (or what) is waylaying travelers on the King's Road.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1452624392l/1215032.jpg'
  )

Book.create!(
  title: "Mistborn",
  author: sanderson,
  genre: fantasy,
  description: "Where ash falls from the sky, and mist dominates the night, evil cloaks the land and stifles all life. Criminal mastermind Kelsier teaches Allomancy, the magic of metals, to another Mistborn, urchin Vin 16. The unlikely heroine is distracted by rich Venture heir Elend. Can Kelsier's thieving crew take on the tyrant Lord Ruler and bring back colour to their world?",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1480717416l/68428._SY475_.jpg'
  )

Book.create!(
  title: "The Well of Ascension",
  author: sanderson,
  genre: fantasy,
  description: "Vin, the street urchin who has grown into the most powerful Mistborn in the land, and Elend Venture, the idealistic young nobleman who loves her, must build a healthy new society in the ashes of an empire. Three separate armies attack. As the siege tightens, an ancient legend seems to offer a glimmer of hope. But even if it really exists, no one knows where to find the Well of Ascension or what manner of power it bestows",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1480717596l/68429._SY475_.jpg'
  )


Book.create!(
  title: "The Painted Veil",
  author: maugham,
  genre: fiction,
  description: "When her husband discovers her adulterous affair, he forces her to accompany him to the heart of a cholera epidemic. Stripped of the British society of her youth and the small but effective society she fought so hard to attain in Hong Kong, she is compelled by her awakening conscience to reassess her life and learn how to love.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1320421719l/99664.jpg'
  )

Book.create!(
  title: "The Alloy of Law",
  author: sanderson,
  genre: fantasy,
  description: "Kelsier, Vin, Elend, Sazed, Spook, and the rest are now part of history—or religion. Yet even as science and technology are reaching new heights, the old magics of Allomancy and Feruchemy continue to play a role in this reborn world. Out in the frontier lands known as the Roughs, they are crucial tools for the brave men and women attempting to establish order and justice.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1442889632l/10803121._SY475_.jpg'
  )

Book.create!(
  title: "Gang of One: Memoirs of a Red Guard",
  author: fan_shen,
  genre: non_fiction,
  description: "In 1966 twelve-year-old Fan Shen, a newly minted Red Guard, plunged happily into China’s Cultural Revolution. Disillusion soon followed, then turned to disgust and fear when Shen discovered that his compatriots had tortured and murdered a doctor whose house he’d helped raid and whose beautiful daughter he secretly adored. A story of coming of age in the midst of monumental historical upheaval, Shen’s Gang of One is more than a memoir of one young man’s harrowing experience during a time of terror.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1328818041l/607109.jpg'
  )

Book.create!(
  title: "Shadows of Self",
  author: sanderson,
  genre: fantasy,
  description: "This bustling, optimistic, but still shaky society now faces its first instance of terrorism, crimes intended to stir up labor strife and religious conflict. Wax and Wayne, assisted by the lovely, brilliant Marasi, must unravel the conspiracy before civil strife stops Scadrial’s progress in its tracks.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435053013l/16065004.jpg'
  )

Book.create!(
  title: "The Bands of Mourning",
  author: sanderson,
  genre: fantasy,
  description: "The Bands of Mourning are the mythical metal minds owned by the Lord Ruler, said to grant anyone who wears them the powers that the Lord Ruler had at his command. Hardly anyone thinks they really exist. A kandra researcher has returned to Elendel with images that seem to depict the Bands, as well as writings in a language that no one can read. Waxillium Ladrian is recruited to travel south to the city of New Seran to investigate. Along the way he discovers hints that point to the true goals of his uncle Edwarn and the shadowy organization known as The Set.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1450134973l/18739426._SY475_.jpg'
  )

Book.create!(
  title: "The Way of Kings",
  author: sanderson,
  genre: fantasy,
  description: "I long for the days before the Last Desolation.

The age before the Heralds abandoned us and the Knights Radiant turned against us. A time when there was still magic in the world and honor in the hearts of men.

The world became ours, and yet we lost it. Victory proved to be the greatest test of all. Or was that victory illusory? Did our enemies come to recognize that the harder they fought, the fiercer our resistance? Fire and hammer will forge steel into a weapon, but if you abandon your sword, it eventually rusts away.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1388184640l/7235533.jpg'
  )

Book.create!(
  title: "Scar Tissue",
  author: sloman,
  genre: non_fiction,
  description: "In 1983, four self-described knuckleheads burst out of the mosh-pitted mosaic of the neo-punk rock scene in L.A. with their own unique brand of cosmic hardcore mayhem funk. Over twenty years later, the Red Hot Chili Peppers, against all odds, have become one of the most successful bands in the world. Though the band has gone through many incarnations, Anthony Kiedis, the group's lyricist and dynamic lead singer, has been there for the whole roller-coaster ride. Whether he's recollecting the influence of the beautiful, strong women who have been his muses, or retracing a journey that has included appearances as diverse as a performance before half a million people at Woodstock or an audience of one at the humble compound of the exiled Dalai Lama, Kiedis shares a compelling story about the price of success and excess.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1348688305l/96647.jpg'
  )

Book.create!(
  title: "Thomas Jefferson: The Art of Power",
  author: jon_meacham,
  genre: non_fiction,
  description: "In this magnificent biography, the Pulitzer Prize–winning author of American Lion and Franklin and Winston brings vividly to life an extraordinary man and his remarkable times. Thomas Jefferson: The Art of Power gives us Jefferson the politician and president, a great and complex human being forever engaged in the wars of his era. Philosophers think; politicians maneuver. Jefferson’s genius was that he was both and could do both, often simultaneously. Such is the art of power.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1342043615l/13533740.jpg'
  )

Book.create!(
  title: "Words of Radiance",
  author: sanderson,
  genre: fantasy,
  description: "Expected by his enemies to die the miserable death of a military slave, Kaladin survived to be given command of the royal bodyguards, a controversial first for a low-status 'darkeyes.' Now he must protect the king and Dalinar from every common peril as well as the distinctly uncommon threat of the Assassin, all while secretly struggling to master remarkable new powers that are somehow linked to his honorspren, Syl.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1507307927l/17332218.jpg'
  )

Book.create!(
  title: "Oathbringer",
  author: sanderson,
  genre: fantasy,
  description: "Dalinar Kholin's Alethi armies won a fleeting victory at a terrible cost: The enemy Parshendi summoned the violent Everstorm, which now sweeps the world with destruction, and in its passing awakens the once peaceful and subservient parshmen to the horror of their millennia-long enslavement by humans. While on a desperate flight to warn his family of the threat, Kaladin Stormblessed must come to grips with the fact that the newly kindled anger of the parshmen may be wholly justified.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1507307833l/34002132.jpg'
  )

Book.create!(
  title: "Of Human Bondage",
  author: maugham,
  genre: fiction,
  description: "The first and most autobiographical of Maugham's masterpieces. It is the story of Philip Carey, an orphan eager for life, love and adventure. After a few months studying in Heidelberg, and a brief spell in Paris as a would-be artist, he settles in London to train as a doctor where he meets Mildred, the loud but irresistible waitress with whom he plunges into a tortured and masochistic affair.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1386924695l/31548.jpg'
  )


Book.create!(
  title: "The Lies of Locke Lamora",
  author: lynch,
  genre: fantasy,
  description: "An orphan’s life is harsh—and often short—in the mysterious island city of Camorr. But young Locke Lamora dodges death and slavery, becoming a thief under the tutelage of a gifted con artist. As leader of the band of light-fingered brothers known as the Gentleman Bastards, Locke is soon infamous, fooling even the underworld’s most feared ruler. But in the shadows lurks someone still more ambitious and deadly. Faced with a bloody coup that threatens to destroy everyone and everything that holds meaning in his mercenary life, Locke vows to beat the enemy at his own brutal game—or die trying.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1458646334l/29588376._SY475_.jpg'
  )

Book.create!(
  title: "Red Seas Under Red Skies",
  author: lynch,
  genre: fantasy,
  description: "After a brutal battle with the underworld that nearly destroyed him, Locke Lamora and his trusted sidekick, Jean, fled the island city of their birth and landed on the exotic shores of Tal Verrar to nurse their wounds. But even at this westernmost edge of civilization, they can't rest for long---and they are soon back doing what they do best: stealing from the undeserving rich and pocketing the proceeds for themselves.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1529603335l/40604556._SY475_.jpg'
  )

Book.create!(
  title: "Red Rising",
  author: pierce_brown,
  genre: fantasy,
  description: "Inspired by a longing for justice, and driven by the memory of lost love, Darrow sacrifices everything to infiltrate the legendary Institute, a proving ground for the dominant Gold caste, where the next generation of humanity's overlords struggle for power. He will be forced to compete for his life and the very future of civilization against the best and most brutal of Society's ruling class. There, he will stop at nothing to bring down his enemies... even if it means he has to become one of them to do so.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1461354651l/15839976.jpg'
  )

Book.create!(
  title: "Golden Son",
  author: pierce_brown,
  genre: fantasy,
  description: "As a Red, Darrow grew up working the mines deep beneath the surface of Mars, enduring backbreaking labor while dreaming of the better future he was building for his descendants. But the Society he faithfully served was built on lies. Darrow’s kind have been betrayed and denied by their elitist masters, the Golds—and their only path to liberation is revolution. And so Darrow sacrifices himself in the name of the greater good for which Eo, his true love and inspiration, laid down her own life. He becomes a Gold, infiltrating their privileged realm so that he can destroy it from within.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1394684475l/18966819.jpg'
  )


Book.create!(
  title: "The Razor's Edge",
  author: maugham,
  genre: fiction,
  description: "Larry Darrell is a young American in search of the absolute. The progress of this spiritual odyssey involves him with some of Maugham's most brillant characters - his fiancee Isabel, whose choice between love and wealth have lifelong repercussions, and Elliot Templeton, her uncle, a classic expatriate American snob. The most ambitious of Maugham's novels, this is also one in which Maugham himself plays a considerable part as he wanders in and out of the story, to observe his characters struggling with their fates.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1386925123l/31196.jpg'
  )



Book.create!(
  title: "Acid For The Children",
  author: flea,
  genre: non_fiction,
  description: "Michael Peter Balzary was born in Melbourne, Australia, on October 16, 1962. His more famous stage name, Flea, and his wild ride as the renowned bass player for the Red Hot Chili Peppers was in a far and distant future. Little Michael from Oz moved with his very conservative, very normal family to Westchester, New York, where life as he knew it was soon turned upside down. His parents split up and he and his sister moved into the home of his mother's free-wheeling, jazz musician boyfriend, Walt--trading in rules, stability, and barbecues for bohemian values, wildness, and Sunday afternoon jazz parties where booze, weed, and music flowed in equal measure. Michael was frightened by the lack of order in his new reality and his volatile new stepfather, but found his salvation in the world of passionate musicians the Walt exposed him to. There began his life-long journey to channel all the frustration, loneliness, love, and joy he felt into incredible rhythm.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1575214520l/39667068._SY475_.jpg'
  )

Book.create!(
  title: "Nothing to Envy: Ordinary Lives in North Korea",
  author: demick,
  genre: non_fiction,
  description: "Nothing to Envy follows the lives of six North Koreans over fifteen years—a chaotic period that saw the death of Kim Il-sung, the unchallenged rise to power of his son Kim Jong-il, and the devastation of a far-ranging famine that killed one-fifth of the population.

Taking us into a landscape most of us have never before seen, award-winning journalist Barbara Demick brings to life what it means to be living under the most repressive totalitarian regime today—an Orwellian world that is by choice not connected to the Internet, in which radio and television dials are welded to the one government station, and where displays of affection are punished; a police state where informants are rewarded and where an offhand remark can send a person to the gulag for life. ",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1320449375l/6178648.jpg'
  )

Book.create!(
  title: "The Slow Regard of Silent Things",
  author: rothfuss,
  genre: fantasy,
  description: "Deep below the University, there is a dark place. Few people know of it: a broken web of ancient passageways and abandoned rooms. A young woman lives there, tucked among the sprawling tunnels of the Underthing, snug in the heart of this forgotten place.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1398466695l/21535271.jpg'
  )

Book.create!(
  title: "The Corpse Walker: Real Life Stories, China from the Bottom Up",
  author: yiwu,
  genre: non_fiction,
  description: "The Corpse Walker introduces us to regular men and women at the bottom of Chinese society, most of whom have been battered by life but have managed to retain their dignity: a professional mourner, a human trafficker, a public toilet manager, a leper, a grave robber, and a Falung Gong practitioner, among others. By asking challenging questions with respect and empathy, Liao Yiwu managed to get his subjects to talk openly and sometimes hilariously about their lives, desires, and vulnerabilities, creating a book that is an instance par excellence of what was once upon a time called “The New Journalism.” The Corpse Walker reveals a fascinating aspect of modern China, describing the lives of normal Chinese citizens in ways that constantly provoke and surprise.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1320426272l/2880708.jpg'
  )

Book.create!(
  title: "Morning Star",
  author: pierce_brown,
  genre: fantasy,
  description: "Darrow would have lived in peace, but his enemies brought him war. The Gold overlords demanded his obedience, hanged his wife, and enslaved his people. But Darrow is determined to fight back. Risking everything to transform himself and breach Gold society, Darrow has battled to survive the cutthroat rivalries that breed Society’s mightiest warriors, climbed the ranks, and waited patiently to unleash the revolution that will tear the hierarchy apart from within.

Finally, the time has come.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1461354277l/18966806.jpg'
  )

Book.create(
    title: "Rules of Civility",
    author: Author.second,
    genre: Genre.first,
    description: 'On the last night of 1937, twenty-five-year-old Katey Kontent is in a second-rate Greenwich Village jazz bar with her boardinghouse roommate stretching three dollars as far as it will go when Tinker Grey, a handsome banker with royal blue eyes and a tempered smile, happens to sit at the neighboring table. This chance encounter and its startling consequences propel Katey on a yearlong journey from a Wall Street secretarial pool toward the upper echelons of New York society and the executive suites of Condé Nast--rarefied environs where she will have little to rely upon other than a bracing wit and her own brand of cool nerve.',
    image: 'https://images-na.ssl-images-amazon.com/images/I/91fWfmE1GzL.jpg'
  )

Book.create!(
  title: "Bury My Heart at Wounded Knee: An Indian History of the American West",
  author: dee_brown,
  genre: non_fiction,
  description: "Bury My Heart at Wounded Knee is Dee Brown's eloquent, fully documented account of the systematic destruction of the American Indian during the second half of the nineteenth century. A national bestseller in hardcover for more than a year after its initial publication, it has sold almost four million copies and has been translated into seventeen languages. For this elegant thirtieth-anniversary edition—published in both hardcover and paperback—Brown has contributed an incisive new preface.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1388209846l/76401.jpg'
  )


Book.create(
    title: "Narcissus and Goldmund",
    author: Author.first,
    genre: Genre.first,
    description: "Narcissus and Goldmund tells the story of two medieval men whose characters are diametrically opposite: Narcissus, an ascetic monk firm in his religious commitment, and Goldmund, a romantic youth hungry for knowledge and worldly experience. First published in 1930, Hesse's novel remains a moving and pointed exploration of the conflict between the life of the spirit and the life of the flesh. It is a theme that transcends all time.",
    image: 'https://images-na.ssl-images-amazon.com/images/I/81wBIEW0APL.jpg'
  )


Book.create!(
  title: "Genghis Khan and the Making of the Modern World",
  author: jack_weatherford,
  genre: non_fiction,
  description: "Weatherford resurrects the true history of Genghis Khan, from the story of his relentless rise through Mongol tribal culture to the waging of his devastatingly successful wars and the explosion of civilization that the Mongol Empire unleashed.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1530716694l/40718726._SY475_.jpg'
  )

Book.create(
    title: "1984",
    author: orwell,
    genre: Genre.first,
    description: "Among the seminal texts of the 20th century, Nineteen Eighty-Four is a rare work that grows more haunting as its futuristic purgatory becomes more real. Published in 1949, the book offers political satirist George Orwell's nightmarish vision of a totalitarian, bureaucratic world and one poor stiff's attempt to find individuality. The brilliance of the novel is Orwell's prescience of modern life—the ubiquity of television, the distortion of the language—and his ability to construct such a thorough version of hell.",
    image: 'https://images-na.ssl-images-amazon.com/images/I/410ZirPKXKL._SX331_BO1,204,203,200_.jpg'
  )

Book.create(
    title: 'Siddhartha',
    author_id: Author.first.id,
    genre_id: Genre.first.id,
    description: 'Siddhartha is a novel by Hermann Hesse that deals with the spiritual journey of self-discovery of a man named Siddhartha during the time of the Gautama Buddha.',
    image: 'https://images-na.ssl-images-amazon.com/images/I/51ViESDNfIL._SX331_BO1,204,203,200_.jpg'
  )

Book.create!(
  title: "Seven Years in Tibet",
  author: harrer,
  genre: non_fiction,
  description: "Recounts how the author, an Austrian, escaped from an English internment camp in India in 1943 and spent the next seven years in Tibet, observing its social practices, religion, politics, and people.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1388251499l/270032.jpg'
  )


Book.create(
    title: "Man's Search for Meaning",
    author: frankyl,
    genre: non_fiction,
    description: "Psychiatrist Viktor Frankl's memoir has riveted generations of readers with its descriptions of life in Nazi death camps and its lessons for spiritual survival. Based on his own experience and the stories of his patients, Frankl argues that we cannot avoid suffering but we can choose how to cope with it, find meaning in it, and move forward with renewed purpose. At the heart of his theory, known as logotherapy, is a conviction that the primary human drive is not pleasure but the pursuit of what we find meaningful. Man's Search for Meaning has become one of the most influential books in America; it continues to inspire us all to find significance in the very act of living.",
    image: 'https://images.penguinrandomhouse.com/cover/9780807067994'
  )

Book.create!(
  title: "The Name of the Wind",
  author: rothfuss,
  genre: fantasy,
  description: "Told in Kvothe's own voice, this is the tale of the magically gifted young man who grows to be the most notorious wizard his world has ever seen. The intimate narrative of his childhood in a troupe of traveling players, his years spent as a near-feral orphan in a crime-ridden city, his daringly brazen yet successful bid to enter a legendary school of magic, and his life as a fugitive after the murder of a king form a gripping coming-of-age story unrivaled in recent literature.",
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1515589515l/186074._SX318_.jpg'
  )


Book.create(
    title: "A Gentleman in Moscow",
    author: Author.second,
    genre: Genre.first,
    description: 'In 1922, Count Alexander Rostov is deemed an unrepentant aristocrat by a Bolshevik tribunal, and is sentenced to house arrest in the Metropol, a grand hotel across the street from the Kremlin. Rostov, an indomitable man of erudition and wit, has never worked a day in his life, and must now live in an attic room while some of the most tumultuous decades in Russian history are unfolding outside the hotels doors. Unexpectedly, his reduced circumstances provide him entry into a much larger world of emotional discovery.',
    image: 'https://prodimage.images-bn.com/pimages/9780143110439_p0_v1_s550x406.jpg'
  )





# BookSubscription
BookSubscription.create!(book_id: Book.first.id, bookshelf_id: User.first.bookshelves.last.id)
BookSubscription.create!(book_id: Book.second.id, bookshelf_id: User.first.bookshelves.last.id)
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[0])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[0])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[1])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[1])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[1])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[0])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[2])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[2])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[2])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[1])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[1])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[0])
BookSubscription.create!(book: Book.all.sample, bookshelf: User.first.bookshelves[2])

# Reviews
Review.create!(comment: 'Great book!', rating: 5, user: User.all[1], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[2], book: Book.all.sample)
Review.create!(comment: 'Could have been better....', rating: 3, user: User.all[3], book: Book.all.sample)
Review.create!(comment: 'Terrible!', rating: 1, user: User.all[4], book: Book.all.sample)
Review.create!(comment: 'I couldnt get enough!', rating: 5, user: User.all[5], book: Book.all.sample)
Review.create!(comment: 'I read this book every year!', rating: 5, user: User.all[6], book: Book.all.sample)
Review.create!(comment: 'So great!', rating: 4, user: User.all[7], book: Book.all.sample)
Review.create!(comment: 'How is this considered a story?', rating: 1, user: User.all[8], book: Book.all.sample)
Review.create!(comment: "Worst book I've ever read", rating: 2, user: User.all[9], book: Book.all.sample)
Review.create!(comment: 'My kindergarten son writes better than this', rating: 1, user: User.all[10], book: Book.all.sample)
Review.create!(comment: 'Not bad', rating: 3, user: User.all[11], book: Book.all.sample)
Review.create!(comment: 'Will not read again!', rating: 2, user: User.all[12], book: Book.all.sample)
Review.create!(comment: 'Just ok...', rating: 2, user: User.all[13], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[14], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[15], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[16], book: Book.all.sample)
Review.create!(comment: 'Wow!', rating: 5, user: User.all[17], book: Book.all.sample)
Review.create!(comment: 'Incredible!', rating: 5, user: User.all[18], book: Book.all.sample)
Review.create!(comment: 'I was on the edge of my seat the whole time!', rating: 5, user: User.all[19], book: Book.all.sample)
Review.create!(comment: 'mehhhh....', rating: 2, user: User.all[20], book: Book.all.sample)
Review.create!(comment: 'I enjoyed this!', rating: 5, user: User.all[21], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[22], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[23], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[24], book: Book.all.sample)
Review.create!(comment: 'Great!', rating: 4, user: User.all[25], book: Book.all.sample)
Review.create!(comment: 'Ok...', rating: 4, user: User.all[26], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 4, user: User.all[27], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 3, user: User.all[28], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[29], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[30], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[31], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 4, user: User.all[32], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[33], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 4, user: User.all[34], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[35], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 2, user: User.all[36], book: Book.all.sample)
Review.create!(comment: 'Great book!', rating: 5, user: User.all[37], book: Book.all.sample)
Review.create!(comment: 'Amazing!', rating: 5, user: User.all[38], book: Book.all.sample)
Review.create!(comment: 'Could have been better....', rating: 3, user: User.all[39], book: Book.all.sample)
Review.create!(comment: 'Terrible!', rating: 1, user: User.all[40], book: Book.all.sample)
Review.create!(comment: 'I couldnt get enough!', rating: 5, user: User.all[1..-1].sample, book: Book.all.sample)
Review.create!(comment: 'I read this book every year!', rating: 5, user: User.all[1..-1].sample, book: Book.all.sample)
Review.create!(comment: 'So great!', rating: 4, user: User.all[1..-1].sample, book: Book.all.sample)
Review.create!(comment: 'How is this considered a story?', rating: 1, user: User.all[1..-1].sample, book: Book.all.sample)
Review.create!(comment: "Worst book I've ever read", rating: 2, user: User.all[1..-1].sample, book: Book.all.sample)



