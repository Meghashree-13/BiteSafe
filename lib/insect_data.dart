// insect_data_service.dart

import 'insectinfo.dart';

class InsectDataService {
  
  Future<List<InsectInfo>> getAllInsects() async {
    // Sample data with more info links
    return [
      InsectInfo(
        name: 'Monarch Butterfly',
        image: 'https://dbg.org/wp-content/uploads/2025/01/monarch-blog-2-980x616.jpg',
        description: 'The Monarch butterfly is a milkweed butterfly in the family Nymphalidae. Other common names include wanderer and black veined brown. It is known for its spectacular long-distance migration.',
        habitat: 'Open fields, meadows, gardens, and along roadsides',
        diet: 'Nectar from flowers, particularly milkweed',
        lifespan: '6-8 months for migrating generation, 2-6 weeks for others',
        facts: [
          'Scientific name: Danaus plexippus',
          'Kannada name: ರಾಜ ಹುತ್ತ, ಸಿತ್ತಾರ ಹುತ್ತ',
          'In rural areas: Often called ಹುತ್ತು(Huttu) or ಸಿತ್ತಾರ ಹುತ್ತು(Sittara Huttu)',
          'Poison level is not poisonous to humans. Toxic to predators due to milkweed consumption', 
          'Risk group: None for humans (safe to touch, but caterpillars and butterflies taste bitter/toxic to predators)',
          'First aid (if handled):\n'
          'Do: Wash hands after touching caterpillar (some people may get mild skin irritation).\n'
          'Don’t: Rub eyes or face after handling.',
          'Can migrate up to 3,000 miles from Canada to Mexico',
          'Uses magnetic fields and sun position for navigation',
          'Wingspan ranges from 8.9 to 10.2 cm'
        ],
        moreInfoLink: 'https://en.wikipedia.org/wiki/Monarch_butterfly',
      ),
      InsectInfo(
        name: 'Honeybee',
        image: 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Apis_mellifera_Western_honey_bee.jpg',
        description: 'Honeybees are flying insects closely related to wasps and ants, known for their role in pollination and producing honey and beeswax. They live in large colonies with complex social structures.',
        habitat: 'Beehives in hollow trees, rock crevices, or man-made hives',
        diet: 'Nectar and pollen from flowers',
        lifespan: '15-38 days for workers, 2-5 years for queen',
        facts: [
          'Scientific name: Apis mellifera (Western honeybee)',
          'Kannada name: ಜೇನುನುಟಿ (Jēnunuṭi), ಜೇನು ಹುಳು (Jēnu Huḷu)',
          'In rural areas: Commonly called ಜೇನು ಹುಳು (Jēnu Huḷu)',
          'Poison level:Sting is painful but usually not dangerous to healthy adults. Can cause allergic reactions in sensitive individuals. Multiple stings may be risky (especially for children, elderly, or those allergic)',
          'Risk group: People with bee-sting allergies, Children and elderly (more vulnerable to multiple stings)',
          'First aid:\n'
          'Do:Remove stinger quickly (scrape with nail/card, don’t squeeze)\n' 'Wash area with soap and water.\n''Apply cold cloth/ice pack (wrapped) to reduce pain/swelling.\n''Keep person calm, observe for allergic reaction\n''Take to hospital if severe reaction (difficulty breathing, swelling, dizziness).\n'
          'Don’t: Don’t pinch or squeeze the stinger (injects more venom)\n''Don’t apply mud or unclean substances\n' 'Don’t ignore signs of allergy',
          'A colony can have up to 80,000 bees during peak season',
          'Can fly up to 15 mph and visit 50-100 flowers per trip',
          'Communicate through "waggle dance" to share food locations',
          'Produce about 2.95 million pounds of honey each year in US'
        ],
        moreInfoLink: 'https://en.wikipedia.org/wiki/Honey_bee',
      ),
      // Add more insects here as needed
      InsectInfo(
        name: 'Ladybug',
        image: 'https://c02.purpledshub.com/uploads/sites/62/2025/07/Ladybird-close-up.jpg?w=1029&webp=1',
        description: 'Ladybugs are small beetles that are considered beneficial insects because they eat many agricultural pests. They are also known as ladybirds or lady beetles.',
        habitat: 'Gardens, fields, forests, and grasslands worldwide',
        diet: 'Aphids, scale insects, mites, and other soft-bodied insects',
        lifespan: '1-3 years depending on species and environment',
        facts: [
          'Scientific name: Coccinellidae (family)',
          'Kannada name: ಜೇಡ ಹುಳು (Jēḍa Huḷu), ಚಿನ್ನದ ಹುಳು (Chinnada Huḷu)',
          'In rural areas: Commonly called ಜೇಡ ಹುಳು (Jēḍa Huḷu)',
          'Poison level:Not poisonous to humans.',
          'Risk group:Safe for humans. Predators (like birds, frogs, lizards) avoid them because they secrete a foul-tasting fluid',
          'First aid (if handled):\n'
          'Do: Wash hands after handling (some people may get mild skin irritation from defensive fluid)\n'
          'Don’t: Rub eyes or face after touching',
          'Can eat up to 5,000 aphids in their lifetime',
          'There are over 6,000 species worldwide',
          'Hibernate in large groups under rocks or logs',
          'Bright colors warn predators of their bad taste'
        ],
        moreInfoLink: 'https://en.wikipedia.org/wiki/Coccinellidae',
      ),

      InsectInfo(
       name:"Wasp",
       image:'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Vespula_germanica_Richard_Bartz.jpg/800px-Vespula_germanica_Richard_Bartz.jpg',
       description: "Wasps are flying insects known for their slender bodies, narrow waists, and stingers. They play a role in pollination and pest control, but are also known for their painful sting.",
        habitat: "Gardens, forests, grasslands, urban areas, and anywhere with flowers or prey",
         diet: "Nectar, fruit, and other insects(such as caterpillars and flies)",
          lifespan: "Typically 12-22 days for workers, upto 1 year for queens",
           facts: [
            'Scientific name: Vespula Vulgaris',
            'Kannada name: ಕಡಜ, ಕಡಜ ಹುಳ',
            'In rural areas:ಕಡಜ',
            'Poison level: Painful sting, can be dangerous if stung multiple times. Usually not deadly for healthy adults. Can cause serious allergic reactions (anaphylaxis) in sensitive people.',
            'Risk group: People with sting allergies. Children and elderly (more vulnerable to multiple stings).',
            'First aid:\n'
            'Do: Wash the sting area with soap and clean water.\n''Apply cold cloth/ice pack (wrapped) to reduce swelling and pain.\n''Keep the person calm and still.\n''Take to hospital if allergic symptoms appear (breathing difficulty, dizziness, swelling of face/throat)\n'
            'Don’t:Don’t scratch the sting site (increases irritation)\n''Don’t apply mud, oil, or unclean substances\n''Don’t ignore multiple stings (seek medical help)',
            'There are over 30,000 species of wasps worldwide',
            'Wasps help control pest populations by feeding on other insects',
            'Some wasps are parasitoids, laying eggs inside other insects',
            ],
           moreInfoLink: 'https://en.wikipedia.org/wiki/Wasp',
           ),

InsectInfo(
  name: 'Red Scorpion',
image: 'https://upload.wikimedia.org/wikipedia/commons/f/fe/Scorpion_Photograph_By_Shantanu_Kuveskar.jpg',
description: 'The Red Scorpion (Hottentotta tamulus) is one of the most dangerous scorpions found in India. Its sting can range from mild to life-threatening, especially for children and the elderly.',
habitat: 'Near houses, farms, under stones, logs, firewood storage, and fields. Often enters indoors during the rainy season.',
diet: 'Insects, spiders, and other small invertebrates',
lifespan: '4–5 years depending on environment',
facts: [
'Scientific name: Hottentotta tamulus',
'Kannada name: ಕ ೆಂಪು ಚ ೇಲು, ಕ ೆಂಪು ಸವಿರಾ, ಕ ೆಂಪು ಚ ೇಳು',
'In rural areas: ಕ ೆಂಪು ಬಾಗು',
'Poison level: 20% not dangerous, 50% can make you sick, 80–100% very dangerous',
'Risk group: Mostly children and elderly',
'First aid:\n'
'Do:Wash the sting area with clean water and soap.\n''Put a cold cloth/ice pack(wrapped) on the sting.\n''Keep the stung hand/leg low(below heart).\n''Take the patient to hospital if it becomes sever.\n'
'Don’t:Don’t cut or suck the wound.\n''Don’t tie tight band/belt.\n''Don’t apply mud, oil, or herbs.',
'Known as the most lethal scorpion species in India',
'Children and elderly are at higher risk from stings',
'They hide under stones, tree trunks, and logs during the day',
'Become more visible during the rainy season',
],
   moreInfoLink: 'https://en.wikipedia.org/wiki/Hottentotta_tamulus',
),

InsectInfo(
  name:'Black Widow Spider', 
  image:'https://www.rottler.com/wp-content/uploads/black-widdow-spider.jpg', 
  description: 'The Black Widow Spider (Latrodectus) is one of the most venomous spiders in the world. Recognizable by the shiny black body and red hourglass marking on the underside of the abdomen, its bite can be dangerous but rarely fatal to humans with proper medical care.',
  habitat: 'Dark, undisturbed areas like woodpiles, sheds, and basements.',
  diet: 'Insects such as flies, mosquitoes, grasshoppers, beetles, and caterpillars',
  lifespan: '1–3 years, with females living longer than males',
  facts: [
    'Scientific name: Latrodectus',
    'Kannada name: ಕಪುು ವಿಧವ ಜ ೇಡ',
    'In rural areas: ಕಪುು ಜ ೇಡ',
    'Poison level:20% not dangerous (localized pain),50% can make you sick (neurotoxic venom causes muscle aches, nausea),80-100% very dangerous (can be severe in children or elderly)',
    'Risk group: Children, elderly, and individuals with compromised immune systems.',
    'First aid:\n'
    'Do:Wash the bite area with soap and water.\n''Apply a cold pack.Seek immediate medical attention.\n'
    'Don’t:Don’t apply a tourniquet.\n''Don’t cut or suck the wound.',
    'Females are larger and more dangerous than males',
    'Their venom is 15 times stronger than that of a rattlesnake, but delivered in small amounts',
    'Only female black widows bite humans, usually in self-defense',
    'Symptoms of a bite include muscle pain, cramping, and nausea',
    'Deaths are extremely rare with modern medical treatment',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Latrodectus',
),

InsectInfo(
  name:'Blanket Worm', 
  image: 'https://i0.wp.com/blog.organicbazar.net/wp-content/uploads/2025/06/How-To-Remove-Blanket-Worms-From-Your-Garden-In-Hindi-min-1.png?w=1366&ssl=1', 
  description: 'Blanket worms are hairy caterpillars covered with dense brownish or gray bristles. These hairs can detach easily and irritate human skin.',
  habitat: 'Pine, oak, and cedar trees, often moving in a “procession” line.',
  diet: 'Feed on the leaves of a wide variety of plants, including crops (like castor, cotton, mango, rose, and other fruit/ornamental plants).',
  lifespan:'Caterpillar (larval stage) lasts around 4–6 weeks. Entire life cycle (egg → larva → pupa → moth) takes about 6–8 weeks depending on climate. Adult moth lives only about 5–7 days, mainly for reproduction.',
    facts:[
      'Scientific name:Thaumetopoea species',
       'Kannada name: ಹ ೊದಿಕ ಹುಳು',
       'In rural areas: ಕೆಂಬಳಿ ಹುಳು',
       'Poison level: 20% not dangerous (localized irritation/rashes from hairs), 50% can make you sick (severe skin reactions, eye irritation),80-100% very dangerous (respiratory distress from inhaling hairs)',
      'Risk group: Anyone in contact with them, especially children and people with allergies/asthma',
       'First aid:\n'
       'Do:Remove any clothes with hairs on them.\n''Wash the affected area with soap and water.\n''Use adhesive tape to pull out remaining hairs.\n'
        'Don’t:Don’t rub the skin.\n''Don’t touch the caterpillars or their nests.',
      'Their hair causes allergic skin reactions (itching, rash, sometimes breathing issues if inhaled).',
      'Known as a serious agricultural pest in India.',
      'Active mostly during monsoon and post-monsoon seasons.',
      'Pupates in silken cocoons made with its irritating hairs, making handling risky.', 
  ],
moreInfoLink: 'https://en.wikipedia.org/wiki/Oak_processionary',
  ),

InsectInfo(
  name: 'Blister Beetle (Manipal Bug)', 
  image: 'https://upload.wikimedia.org/wikipedia/commons/8/81/Paederus_littoralis01.jpg', 
  description:'Blister beetles are medium-sized beetles with elongated bodies, often black with orange or yellow bands. They release a toxic chemical called cantharidin when disturbed, which causes painful blisters on human skin.',
  habitat: 'Damp environments, attracted to lights at night.', 
  diet: 'Adult beetles feed on flowers, leaves, and crops like groundnut, soybean, and pigeon pea.',
  lifespan: 'Adults live for around 2–3 months. Full life cycle (egg → larva → pupa → adult) takes about 6–8 weeks, depending on the species and environment.',
  facts: [
    'Scientific name: Paederus dermatitis',
    'Kannada name: ಮಣಿಪಾಲ ಕೇಟ, ಮಪ್ಲಿ ಜೇರುೆಂಡ',
    'In rural areas: ಮುಪ್ಲಿ ಕೇಟ, ಮುಪ್ಲಿ ಹುಳ',
     'Poison level: 20% not dangerous (not venomous), 50% can make you sick (body fluid causes painful blisters),80-100% very dangerous (ingestion is toxic; eye contact can cause temporary blindness)',
     'Risk group: Children who might ingest them and those who handle them improperly.',
     'First aid:\n'
      'Do:Gently blow the bug off your skin—do not crush it. Immediately wash the area with soap and water.\n''For eye contact, flush with plenty of water.\n'
      'Don’t:Don’t crush the bug on your skin.\n''Don’t rub the affected area.',
      'Called “Manipal Bug” in Karnataka due to frequent cases of blister outbreaks in rainy season.',
      'Cantharidin toxin causes blisters on skin but is not absorbed deeply (not fatal by touch).',
      'Historically, cantharidin was misused as an aphrodisiac (“Spanish fly”), but it is actually toxic if ingested.',
  ],
moreInfoLink: 'https://en.wikipedia.org/wiki/Paederus_dermatitis',
  ),

InsectInfo(
  name: 'Tarantula Hawk',
  image: 'https://upload.wikimedia.org/wikipedia/commons/d/db/Tarantula_Hawk%2C_Southeastern_Colorado_P1270150b.jpg', 
  description: 'Tarantula Hawks are large wasps, often metallic blue-black with bright orange wings. They are solitary hunters, best known for paralyzing tarantulas with their sting and laying eggs on them as food for their larvae. Their sting is considered one of the most painful insect stings in the world, though it is not deadly and usually subsides within minutes.',
  habitat:'Deserts and grasslands. They are solitary wasps.' , 
  diet:'Adults: Feed on nectar, fermented fruit, and sometimes honeydew. Larvae: Feed on live tarantulas (paralyzed and kept alive by the mother wasp as fresh food).',
  lifespan:'Adults live about 3–5 months, depending on food availability and environment. Life cycle (egg → larva → pupa → adult) usually takes a few months.',
  facts: [
    'Scientific name: Pepsis genus',
    'Kannada name: ಟ್ಾಾರೆಂಟುಲಾ ಗಿಡುಗ ಕಡಜ',
    'In rural areas: ದ ೊಡಡ ಕಡಜ',
    'Poison level: 20% not dangerous (extremely painful but not deadly venom), 50% can make you sick (intense, temporary pain), 80-100% very dangerous (anaphylaxis)',
    'Risk group: Anyone who gets stung, especially those with insect allergies.',
     'First aid:\n'
     'Do: Wash the area with soap and water. Apply a cold compress.\n'
     'Don’t: Don’t try to swat or provoke the wasp.\n''Don’t rub the wound.',
     'Considered the state insect of New Mexico (USA).',
     'Females are the hunters; males do not sting.',
     'Known for their ability to take down spiders much larger than themselves.', 
  ],
  moreInfoLink: 'https://en.wikipedia.org/wiki/Tarantula_hawk',
  ),

  InsectInfo(
    name: 'Asian Giant Hornet', 
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR15PmeoWWRsO32eO9bZxaVHr19S3WwZ23I3vOP1cthSnj97-ZPURj2qmics7xdxpDEnHU&usqp=CAU', 
    description: 'The Asian Giant Hornet is the largest hornet species in the world, known for its powerful sting and ability to attack honeybee colonies.',
    habitat: 'Forests, mountains, and rural areas in East and Southeast Asia; nests in tree roots or underground burrows',
    diet: 'Adults feed on tree sap, nectar, and fruit juices; larvae are fed insects, especially honeybees',
    lifespan: 'Workers live 3–6 months, queens up to 1 year',
    facts: [
      'Scientific name: Vespa mandarinia',
      'Kannada name: ಏಷ್ಾನ್ ದ ೈತ್ಾ ಕಡಜ',
      'In rural areas: ದ ೊಡಡ ಕಡಜ, ದ ೊಡಡ ಕಡಜ ಹುಳ',
       'Poison level:20% not dangerous (single sting is painful but not lethal)\n'
       '50% can make you sick (multiple stings can cause organ damage)\n'
       '80-100% very dangerous (can be lethal with numerous stings or in allergic individuals)\n',
       'Risk group: Beekeepers, outdoor workers, children, and allergic individuals.',
       'First aid:\n'
       'Do:Wash the sting area with soap and water.\n''Apply a cold compress.\n''Seek immediate medical attention for multiple stings.',
      'Don’t:Don’t provoke them.\n''Don’t try to extract the venom.\n',
      'Largest hornet in the world, growing up to 5 cm long',
      'Venom contains powerful toxins that cause intense pain',
      'Can sting multiple times and spray venom into eyes',
      'Known to attack and wipe out entire honeybee hives',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Asian_giant_hornet',
),

InsectInfo(
  name:'Mosquito', 
  image:'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Aedes_aegypti.jpg/1280px-Aedes_aegypti.jpg',
  description: 'Mosquitoes are small flying insects known for biting humans and animals to feed on blood, and for spreading diseases like malaria and dengue.',
  habitat: 'Stagnant water, wetlands, forests, grasslands, and urban areas worldwide',
  diet: 'Females feed on blood for reproduction; both males and females also feed on nectar and plant juices',
  lifespan: '2 weeks to 2 months depending on species and environment',
  facts: [
  'Scientific name: Family Culicidae (includes Aedes, Anopheles, and Culex)',
  'Kannada name: ಸೋರೆ ಹುಳು (Sore Huḷu)',
  'In rural areas: Commonly called ಸೋರೆ (Sore)',
  'Poison level: Not poisonous, but transmit diseases through saliva',
  'Risk group: Children, elderly, pregnant women, and people with weak immunity',
  'First aid:\n'
  'Do: Clean bite with soap and water\n''Apply ice/cold cloth\n''Use mild anti-itch cream, stay hydrated\n'
  'Don’t: Don’t scratch the bite\n''Don’t apply mud/oil\n''Don’t ignore fever or body aches—seek medical help if symptoms appear',
  'Only female mosquitoes bite humans and animals',
  'Over 3,500 mosquito species exist worldwide',
  'Spread diseases like malaria, dengue, Zika, and chikungunya',
  'Flap wings about 300–600 times per second',
  'Responsible for more human deaths annually than any other animal',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Mosquito',
),

InsectInfo(
  name: 'Housefly',
  image: 'https://cdn.bugs.com/wp-content/uploads/iStock-1357168285-1.jpg',
  description: 'Houseflies are common insects found worldwide, often living close to humans and spreading diseases by contaminating food and surfaces.',
  habitat: 'Houses, garbage dumps, latrines, markets, farms, and anywhere with organic waste',
  diet: 'Feed on decaying food, garbage, animal waste, and sugary substances',
  lifespan: '15–30 days depending on temperature and environment',
  facts: [
  'Scientific name: Musca domestica',
  'Kannada name: ಮನೆ ಈಚೆ (Mane Īche),ನೊಣ(Nona)',
  'In rural areas: Commonly called ಈಚೆ (Īche)',
  'Poison level: Not poisonous, but transmit harmful bacteria, viruses, and parasites',
  'Risk group: Children, elderly, and people with weak immunity are more vulnerable to infections',
  'First aid:\n'
  'Do: Wash hands properly if flies touch food or wounds\n''Cover food and water.\n''keep surroundings clean\n'
  'Don’t: Don’t eat uncovered or contaminated food\n''Don’t leave wounds open',
  'One female housefly can lay up to 500 eggs in her lifetime',
  'Houseflies cannot chew— they vomit digestive juices on food before sucking it',
  'Known to spread diseases such as cholera, typhoid, and dysentery',
  'Houseflies can carry over 100 different disease-causing organisms',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Housefly',
),

InsectInfo(
  name: 'Bed Bug',
  image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzKSuZB48Iw_x17JuzctfadFzozJSwfY_CAA&s',
  description: 'Bed bugs are small, reddish-brown insects that feed on human blood, usually at night, and can cause itching and discomfort.',
  habitat: 'Beds, mattresses, furniture cracks, carpets, luggage, and other indoor hiding spots near humans',
  diet: 'Feed exclusively on human or animal blood',
  lifespan: 'Adults live 4–6 months; can survive several months without feeding',
  facts: [
  'Scientific name: Cimex lectularius',
  'Kannada name: ಹಾಸು ಹುಳು (Hāsu Huḷu)',
  'In rural areas: Commonly called ಹಾಸು ಹುಳು (Hāsu Huḷu) or ಹಾಸು ರೆಕ್ಕೆ ಹುಳು (Hāsu Rekke Huḷu)',
  'Poison level: Not poisonous, but bites cause itching, skin irritation, and allergic reactions',
  'Risk group: Children, elderly, and people in crowded or unhygienic living conditions',
  'First aid:\n'
  'Do: Wash bite area with soap and water\n' 'Apply anti-itch cream\n''Maintain cleanliness of bedding and surroundings.\n'
  'Don’t: Don’t scratch bites aggressively\n''Don’t ignore signs of infection\n''Don’t leave bedbugs untreated in the house',
  'Bed bugs are nocturnal and hide during the day',
  'Can infest luggage and spread to new locations easily',
  'Bites often appear in clusters or lines on exposed skin',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Bed_bug',
),
InsectInfo(
  name: 'Black Fly',
  image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Blackfly.jpg/1024px-Blackfly.jpg',
  description: 'Black flies are small, dark-colored biting flies that feed on blood and can transmit diseases to humans and animals.',
  habitat: 'Flowing rivers, streams, and nearby areas in tropical and temperate regions; often near human and livestock populations',
  diet: 'Adult females feed on blood for reproduction; males feed on nectar and plant juices',
  lifespan: 'Adults live about 2–3 weeks; complete life cycle (egg → larva → pupa → adult) takes 1–3 months depending on species',
  facts: [
  'Scientific name: Simuliidae (family, includes several species of black flies)',
  'Kannada name: ಕಪ್ಪು ಈಚೆ (Kappu Īche)',
  'In rural areas: Commonly called ಕಪ್ಪು ಈಚೆ (Kappu Īche) or ನದಿ ಈಚೆ (Nadi Īche)',
  'Poison level: Not poisonous, but their bites are painful and can cause allergic reactions',
  'Risk group: Children, elderly, people working or living near rivers and streams',
  'First aid:\n'
  'Do: Wash bite area with soap and water\n''Apply ice/cold cloth\n' 'Use mild anti-itch cream\n'  
  'Don’t: Don’t scratch bites aggressively\n''Don’t ignore swelling or infection',
  'Female black flies are the ones that bite; males feed only on nectar',
  'Can transmit diseases like onchocerciasis (river blindness) in endemic regions',
  'Bites are painful and often appear in clusters',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Black_fly',
),

InsectInfo(
  name: 'Sand Fly',
  image: 'https://upload.wikimedia.org/wikipedia/commons/4/46/Phlebotomus_pappatasi_bloodmeal_continue2.jpg',
  description: 'Sand flies are tiny, hairy flies known for their painful bites and their role in spreading diseases like leishmaniasis.',
  habitat: 'Humid and dark places near houses, animal shelters, caves, cracks in walls, tree holes, and leaf litter',
  diet: 'Females feed on blood for egg production; males feed on nectar and plant juices',
  lifespan: 'Adults live about 2–4 weeks; entire life cycle takes 1–3 months depending on environment',
  facts: [
  'Scientific name: Phlebotominae',
  'Kannada name: ಮರಳು ಈಚೆ (Maraḷu Īche)',
  'In rural areas: Commonly called ಮರಳು ಹುಳು (Maraḷu Huḷu) or ಜ್ವರ ಈಚೆ (Jvara Īche)',
  'Poison level: Not poisonous, but can transmit serious diseases such as leishmaniasis, sandfly fever, and bartonellosis',
  'Risk group: Children, elderly, and people living in rural or forested endemic areas',
  'First aid:\n'
  'Do: Wash bite with soap and water\n''Apply cold cloth or ice pack\n''Use anti-itch cream, sleep under nets to avoid bites\n'
  'Don’t: Don’t scratch repeatedly\n' 'Don’t apply mud or unclean substances\n''Don’t ignore fever or skin sores after bites',
  'Sand flies are smaller than mosquitoes and make no noise while flying',
  'Only female sand flies bite humans and animals',
  'Their bites are painful and often lead to red, itchy bumps',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Phlebotominae',
),

InsectInfo(
  name: 'Botfly',
  image: 'https://upload.wikimedia.org/wikipedia/commons/b/b7/Cephenemya_stimulator.jpg',
  description: 'Botflies are parasitic flies whose larvae develop inside the skin or tissues of mammals, including humans.',
  habitat: 'Forests, grasslands, and areas with mammals; larvae develop inside host tissue',
  diet: 'Adults feed on nectar; larvae feed on the tissue or fluids of their host',
  lifespan: 'Adults live only a few days to a couple of weeks; larvae inside host can survive weeks to months',
  facts: [
  'Scientific name: Oestridae',
  'Kannada name: ಚರ್ಮ ಹುಳು ಈಚೆ (Charma Huḷu Īche)',
  'In rural areas: Commonly called ಮಾಂಸದ ಹುಳು (Mānsada Huḷu)',
  'Poison level: Not poisonous, but larvae cause painful swellings and infections',
  'Risk group: Farmers, cattle rearers, and people in tropical/forest areas',
  'First aid:\n'
  'Do: Keep wound clean\n''Cover with petroleum jelly to block larva’s air hole, seek medical removal\n'
  'Don’t: Don’t squeeze or crush the swelling (may leave larva parts inside), don’t ignore infection signs',
  'Botfly larvae enter hosts via mosquito bites or direct contact',
  'Human botfly (Dermatobia hominis) is common in Central and South America',
  'Infestation is called myiasis (parasitic infection by fly larvae)',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Botfly',
),

InsectInfo(
  name: 'Hornet',
  image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Hornet.jpg/800px-Hornet.jpg',
  description: 'Hornets are large social wasps known for their powerful sting and aggressive defense of their nests.',
  habitat: 'Forests, gardens, fields, and urban areas; nests often built in trees, shrubs, or building cavities',
  diet: 'Feed on nectar, fruit, and other insects (such as flies, caterpillars, and bees)',
  lifespan: 'Workers live 2–3 weeks; queens can live up to 1 year',
  facts: [
  'Scientific name: Vespa (genus, includes many hornet species)',
  'Kannada name: ದೊಡ್ಡ ಜೇನು ಹುಳು (Doḍḍa Jēnu Huḷu)',
  'In rural areas: Commonly called ಗದ್ದೆ ಜೇನು ಹುಳು (Gadde Jēnu Huḷu)',
  'Poison level: Moderate to high; stings are painful and multiple stings can be dangerous',
  'Risk group: Children, elderly, and people allergic to stings',
  'First aid:\n'
  'Do: Wash sting area with soap and water\n' 'Apply ice pack, seek medical help if multiple stings or allergy symptoms\n'
  'Don’t: Don’t scratch the sting\n''Don’t apply mud or unclean substances\n' 'Don’t ignore breathing difficulties or swelling',
  'Hornets are larger than common wasps and can be more aggressive',
  'Only females sting, and can sting multiple times',
  'They help control pests but also attack honeybee colonies',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Hornet',
),

InsectInfo(
  name: 'Fire Ant',
  image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Fire_ants_01.jpg/800px-Fire_ants_01.jpg',
  description: 'Fire ants are aggressive ants known for their painful stings that cause burning sensations and allergic reactions.',
  habitat: 'Soil, lawns, fields, farms, and near buildings; colonies are often built as soil mounds',
  diet: 'Omnivorous – feed on seeds, plants, dead animals, and small insects',
  lifespan: 'Workers live a few weeks to months; queens can live up to 6–7 years',
  facts: [
  'Scientific name: Solenopsis invicta',
  'Kannada name: ಬೆಂಕಿ ಇರುವೆ (Benki Iruve)',
  'In rural areas: Commonly called ಕೆಂಪು ಇರುವೆ (Kempu Iruve)',
  'Poison level: Moderate to high; venom causes burning, swelling, and sometimes severe allergic reactions',
  'Risk group: Children, elderly, people allergic to ant stings, and farm workers',
  'First aid\n'
  'Do: Wash sting area with soap and water, apply cold compress\n''Use anti-itch cream or antihistamine\n''Seek medical help if severe allergy occurs\n'
  'Don’t: Don’t scratch the sting area\n''Don’t apply mud or oil\n''Don’t ignore signs of infection or allergy',
  'Fire ants attack in groups, delivering multiple stings',
  'Stings often form painful, pus-filled blisters',
  'They are invasive in many parts of the world and harm crops and livestock',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Fire_ant',
),

InsectInfo(
  name: 'Horsefly',
  image: 'https://upload.wikimedia.org/wikipedia/commons/1/14/Horse_fly_Tabanus_2.jpg',
  description: 'Horseflies are large, fast-flying insects known for their painful bites and blood-feeding behavior.',
  habitat: 'Near water bodies, farms, forests, grasslands, and areas with livestock',
  diet: 'Females feed on blood from mammals; males feed on nectar and plant juices',
  lifespan: 'Adults live 30–60 days; life cycle from egg to adult takes 1 year',
  facts: [
  'Scientific name: Tabanidae',
  'Kannada name: ಕುದುರೆ ಈಚೆ (Kudure Īche)',
  'In rural areas: Commonly called ದೊಡ್ಡ ಈಚೆ (Doḍḍa Īche)',
  'Poison level: Not poisonous, but bites are very painful and may cause allergic reactions',
  'Risk group: Farmers, cattle rearers, and people near water bodies or livestock',
  'First aid:\n'
  'Do: Clean bite with soap and water, apply ice pack, use anti-itch cream\n'
  'Don’t: Don’t scratch the bite\n''Don’t apply mud or oil\n''Don’t ignore signs of infection',
  'Females cut the skin with scissor-like mouthparts to suck blood',
  'Known to transmit diseases in animals, such as anthrax and equine infectious anemia',
  'Strong fliers that actively chase their hosts',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Tabanidae',
),

InsectInfo(
  name: 'Termite',
  image: 'https://www.bugs.com/wp-content/uploads/drywood-termites-vs-subterranean-termites.jpg',
  description: 'Termites are social insects that feed on wood and plant matter, known for causing damage to buildings and crops.',
  habitat: 'Soil, wood, dead plants, leaf litter, and man-made wooden structures; common in tropical and subtropical regions',
  diet: 'Mainly cellulose from wood, paper, plants, and dead plant material',
  lifespan: 'Workers and soldiers live 1–2 years; queens can live over 10 years',
  facts: [
  'Scientific name: Isoptera',
  'Kannada name: ಹೊಳೆ ಹುಳು (Hoḷe Huḷu)',
  'In rural areas: Commonly called ಮರ ಹುಳು (Mara Huḷu, meaning "wood insect")',
  'Poison level: Not poisonous, but destructive to houses, furniture, and crops',
  'Risk group: Farmers, homeowners, and people storing wood or crops',
  'First aid\n'
  'Do: If bitten (rare), wash area with soap and water, apply antiseptic; control infestation with proper treatment',
  'Don’t: Don’t ignore termite signs like mud tubes, wood powder, or hollow-sounding wood',
  'Termites recycle dead plant matter and play an ecological role in soil health',
  'Queens can lay thousands of eggs per day',
  'Some species build huge mounds visible above ground',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Termite',
),

InsectInfo(
  name: 'Puss Caterpillar',
  image: 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Megalopyge_opercularisPCCP20040714-5799B.jpg',
  description: 'The puss caterpillar is a small, furry-looking caterpillar whose venomous spines can cause severe pain and skin reactions.',
  habitat: 'Trees, shrubs, gardens, and forests; hides among leaves and branches',
  diet: 'Feeds on leaves of various trees and shrubs, including oak, elm, and maple',
  lifespan: 'Larval stage lasts a few weeks; pupates into moth for about 2–4 weeks',
  facts: [
  'Scientific name: Megalopyge opercularis',
  'Kannada name: ಹಾಸು ಹುಳು (Hāsu Huḷu)',
  'In rural areas: Often called as ಕೂದಲು ಹುಳು(koodulu huḷu)',
  'Poison level: High; venom causes intense pain, swelling, and systemic reactions in some cases',
  'Risk group: Children, elderly, and people handling vegetation in affected areas',
  'First aid:\n'
  'Do: Remove spines carefully with adhesive tape\n''Wash area with soap and water\n''Apply ice/cold pack\n''Use antihistamines or pain relievers, seek medical help if severe.\n'
  'Don’t: Don’t scratch or rub\n''Don’t use unclean home remedies\n''Don’t ignore severe reactions like difficulty breathing',
  'Caterpillar hairs contain venomous spines hidden under fuzzy hairs',
  'Stings can cause severe localized pain, rashes, nausea, or temporary systemic effects',
  'Also called “woolly slug” due to fuzzy appearance',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Megalopyge_opercularis',
),

InsectInfo(
  name: 'Cockroach',
  image: 'https://www.schendelpest.com/wp-content/uploads/2018/06/cockroach-on-wood.webp',
  description: 'Cockroaches are resilient insects that thrive in human habitats and can spread diseases by contaminating food and surfaces.',
  habitat: 'Homes, kitchens, sewers, garbage areas, basements, and warm, humid environments',
  diet: 'Omnivorous – feed on food scraps, garbage, paper, decaying matter, and starches',
  lifespan: 'Adults live about 6 months to 2 years depending on species; life cycle from egg to adult takes 2–6 months',
  facts: [
  'Scientific name: Blattodea',
  'Kannada name: ಜಿರಳೆ(Jirale)',
  'In rural areas: Commonly called ಜಿರಳೆ(Jirale),ಹಾತೆ (Hāte),ಚುಕ್ಕೆ ಹುಳು (Chukke Huḷu)',
  'Poison level: Not poisonous, but can transmit bacteria and allergens',
  'Risk group: Children, elderly, and people with respiratory issues or weakened immunity',
  'First aid:\n'
  'Do: Wash food and surfaces contaminated by cockroaches\n' 'Use insecticides or traps, maintain cleanliness\n'
  'Don’t: Don’t ignore infestations\n' 'Don’t leave uncovered food\n' 'Don’t handle them with bare hands in unsanitary conditions',
  'Can survive weeks without food and water',
  'Some species can survive decapitation for a few days',
  'Carry bacteria that can cause food poisoning, dysentery, and allergies',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Cockroach',
),

InsectInfo(
  name: 'Locust',
  image: 'https://t3.ftcdn.net/jpg/14/00/49/52/360_F_1400495274_2IQdDZDcqjEvOruzArYwonraeYN6hlo5.jpg',
  description: 'Locusts are grasshopper-like insects that form large swarms and can cause severe damage to crops and vegetation.',
  habitat: 'Grasslands, farmlands, deserts, and areas with abundant vegetation; found in Africa, Asia, Australia, and the Middle East',
  diet: 'Feed on leaves, grasses, crops, and other vegetation',
  lifespan: 'Adults live 2–5 months; complete life cycle from egg to adult takes 3–6 months depending on species',
  facts: [
  'Scientific name: Acrididae',
  'Kannada name: ತೋಣ ಹುಳು (Tōṇa Huḷu)',
  'In rural areas: Commonly called ಹೊಲ ಹುಳು (Hola Huḷu) or ಕಣಸು ಹುಳು (Kaṇasu Huḷu)',
  'Poison level: Not poisonous, but destructive to crops',
  'Risk group: Farmers and rural communities reliant on agriculture',
  'First aid:\n'
  'Do: Protect crops with nets or insecticides, monitor swarms, report infestations to local authorities\n'
  'Don’t: Don’t panic or try to handle swarms manually\n' 'Don’t ignore early signs of infestation',
  'Can form massive swarms covering hundreds of square kilometers',
  'Swarms can travel great distances and destroy entire fields of crops',
  'Switch between solitary and gregarious phases depending on population density',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Locust',
),

InsectInfo(
  name: 'Indian Garden Tiger Moth',
  image: 'https://upload.wikimedia.org/wikipedia/commons/d/df/Arctia_caja_%28Marek_Szczepanek%29.jpg',
  description: 'The Indian Garden Tiger Moth is a brightly colored moth known for its striking patterns and nocturnal activity.',
  habitat: 'Gardens, forests, fields, and areas with flowering plants across India',
  diet: 'Caterpillars feed on leaves of various plants; adults feed on nectar',
  lifespan: 'Adult moths live 1–2 weeks; caterpillar stage lasts a few weeks',
  facts: [
  'Scientific name: Arctia caja',
  'Kannada name: ಹುಲಿ ಹುಳು (Huli Huḷu)',
  'In rural areas: Often called ಬೂದಿನ ಹುಳು (Būdina Huḷu)',
  'Poison level: Not poisonous to humans, but caterpillars may have irritating hairs',
  'Risk group: Children and people handling caterpillars may get mild skin irritation',
  'First aid:\n'
  'Do: Wash area with soap and water if contact with caterpillar hairs causes irritation\n'
  'Don’t: Don’t scratch rash or irritation\n' 'Avoid crushing caterpillars on skin',
  'Bright coloration warns predators of potential toxicity to them',
  'Nocturnal and attracted to light at night',
  'Caterpillars are hairy and sometimes called “woolly bears”',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Garden_tiger_moth',
),

InsectInfo(
  name: 'Velvet Ant',
  image: 'https://upload.wikimedia.org/wikipedia/commons/d/d9/Dasymutilla_occidentalis_%28female%29.jpg',
  description: 'Velvet ants are actually wingless wasps known for their bright colors and extremely painful sting.',
  habitat: 'Sandy soils, grasslands, meadows, and open fields; often near ground nests of other insects',
  diet: 'Adults feed on nectar; larvae are parasitic on the larvae of other insects, mainly ground-nesting bees and wasps',
  lifespan: 'Adults live a few months; entire life cycle from egg to adult lasts several months depending on species',
  facts: [
  'Scientific name: Mutillidae',
  'Kannada name: ಮೃದು ಹುಳು (Mr̥du Huḷu)',
  'In rural areas: Commonly called ಕೆಂಪು ಹುಳು (Kempu Huḷu)',
  'Poison level: High; sting is extremely painful but not usually fatal',
  'Risk group: Children, elderly, and people allergic to insect stings',
  'First aid:\n'
  'Do: Wash sting area with soap and water, apply ice pack, use pain relievers.\n'
  'Don’t: Don’t scratch sting\n''Don’t crush the insect\n''Don’t ignore signs of severe allergy',
  'Only females have stingers; males are winged and do not sting',
  'Bright coloration warns predators of their painful sting',
  'Sometimes called “cow killer” because of the intensity of their sting',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Velvet_ant',
),

InsectInfo(
  name: 'Centipede',
  image: 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Scolopendra_cataracta_from_Zookeys.jpg',
  description: 'Centipedes are fast-moving arthropods with many body segments, each bearing a pair of legs, and are known for their venomous bite.',
  habitat: 'Soil, under rocks, logs, leaf litter, basements, bathrooms, and damp dark places',
  diet: 'Carnivorous – feed on insects, spiders, worms, and small invertebrates',
  lifespan: '1–6 years depending on species and environment',
  facts: [
  'Scientific name: Chilopoda',
  'Kannada name: ಶತಪದಿ (Shatapadi) or ಜರಿ ಹುಳು (jari huḷu)',
  'In rural areas: Often called ನೂರು ಕಾಲು ಹುಳು (Nooru Kaalu Huḷu) or ಜರಿ ಹುಳು (jari huḷu)',
  'Poison level: Moderate; venomous but not usually fatal to humans',
  'Risk group: Children, elderly, and people allergic to insect venom',
  'First aid:\n'
  'Do: Wash bite area with soap and water\n' 'Apply ice pack to reduce pain and swelling\n' 'Take pain relievers\n' 'Seek medical help if severe reaction occurs\n'
  'Don’t: Don’t scratch or press the wound\n' 'Don’t apply mud or chemicals\n' 'Don’t ignore severe symptoms',
  'Centipedes inject venom through modified front legs called forcipules',
  'Larger species like Scolopendra can deliver very painful bites',
  'Despite their name, centipedes may have 30–354 legs, but never exactly 100',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Centipede',
),

InsectInfo(
  name: 'Cup Moth',
  image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Apoda_limacodes01.jpg/1200px-Apoda_limacodes01.jpg',
  description: 'Cup moths are small, brightly patterned moths whose caterpillars are known for their stinging spines that can cause irritation.',
  habitat: 'Forests, gardens, orchards, and areas with leafy host plants.',
  diet: 'Caterpillars feed on leaves of trees and shrubs; adults feed on nectar',
  lifespan: 'Adults live 1–2 weeks; caterpillar stage lasts several weeks before pupation',
  facts: [
  'Scientific name: Limacodidae',
  'Kannada name: ಕಪ್ ಚಿಟ್ಟೆ (Kap Chiṭṭe)',
  'In rural areas: Often called ಮಳೆ ಹುಳು (Male Huḷu – “rain worm”)',
  'Poison level: Moderate; caterpillar spines cause painful stings and skin irritation',
  'Risk group: Children, farmers, and people handling leaves where caterpillars hide',
  'First aid:\n'
  'Do: Remove spines with tape, wash area with soap and water\n' 'Apply ice pack, use soothing creams\n'
  'Don’t: Don’t scratch rash\n' 'Don’t press spines deeper\n' 'Don’t apply mud or oil',
  'Caterpillars are brightly colored with stinging spines as a defense mechanism',
  'Adult moths are harmless and active at night',
  'Some cup moths are considered agricultural pests due to leaf damage',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Limacodidae',
),

InsectInfo(
  name: 'Silverleaf Whitefly',
  image: 'https://upload.wikimedia.org/wikipedia/commons/a/a7/Silverleaf_whitefly.jpg',
  description: 'The Silverleaf Whitefly is a tiny sap-sucking insect that is a serious agricultural pest, damaging crops and spreading plant diseases.',
  habitat: 'Warm climates, farms, greenhouses, and gardens; found on the underside of leaves',
  diet: 'Feeds on plant sap from leaves and stems',
  lifespan: 'Adult whiteflies live 2–4 weeks; complete life cycle takes 3–4 weeks depending on temperature',
  facts: [
  'Scientific name: Bemisia tabaci',
  'Kannada name: ಬೆಳ್ಳಿಬೆಟ್ಟದ ಹಾರುವ ಹುಳು (Beḷḷibeṭṭada Hāruva Huḷu)',
  'In rural areas: Commonly called ಹಾಲು ಹುಳು (Haalu Huḷu)',
  'Poison level: Not poisonous to humans, but harmful to crops',
  'Risk group: Farmers and crop fields',
  'First aid:\n'
  'Do: Wash hands after handling infested plants\n' 'Use protective gloves when applying pesticides\n'
  'Don’t: Don’t touch eyes or mouth after handling infested plants\n''Don’t ignore infestations',
  'Major pest of cotton, tomato, and vegetable crops',
  'Causes yellowing and curling of leaves by sucking sap',
  'Transmits plant viruses like Tomato Yellow Leaf Curl Virus',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Bemisia_tabaci',
),

InsectInfo(
  name: 'Giant Water Bug',
  image: 'https://townsquare.media/site/690/files/2024/06/attachment-toe-biter.jpg',
  description: 'Giant water bugs are large aquatic insects known for their painful bite and predatory behavior in freshwater habitats.',
  habitat: 'Ponds, lakes, slow-moving streams, and wetlands',
  diet: 'Carnivorous – feed on fish, tadpoles, snails, and other aquatic insects',
  lifespan: 'Adults live 6–12 months; life cycle from egg to adult takes several weeks to months',
  facts: [
  'Scientific name: Belostomatidae',
  'Kannada name: ನೀರಿನ ಹುಳು (Neerina Huḷu)',
  'In rural areas: Often called ಮೀನು ಹುಳು (Meenu Huḷu)',
  'Poison level: Not poisonous but delivers a very painful bite (called “toe-biter”)',
  'Risk group: Children and people wading barefoot in ponds or lakes',
  'First aid:\n''Do: Wash bite area with clean water\n''Apply ice pack, take pain relievers if needed\n'
  'Don’t: Don’t scratch bite area\n''Don’t apply mud or unclean substances',
  'Males carry eggs on their backs until they hatch',
  'Can feign death when threatened (thanatosis)',
  'In some Asian countries, they are eaten as a delicacy',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Belostomatidae',
),

InsectInfo(
  name: 'Tick',
  image: 'https://upload.wikimedia.org/wikipedia/commons/1/13/Ixodus_ricinus_5x.jpg',
  description: 'Ticks are small parasitic arachnids that feed on the blood of mammals, birds, and reptiles and can transmit serious diseases.',
  habitat: 'Grasslands, forests, shrubs, farmlands, animal shelters, and on host animals',
  diet: 'Blood of mammals, birds, reptiles, and sometimes amphibians',
  lifespan: 'Several months to years depending on species; can survive long periods without feeding',
  facts: [
  'Scientific name: Ixodida',
  'Kannada name: ಜಿಗಣ (Jigaṇa) or ಉಣ್ಣೆ (uṇṇe) or ಚಿಗಟ (cigata)',
  'In rural areas: Often called ರಕ್ತ ಹುಳು (Rakta Huḷu – “blood insect”)',
  'Poison level: Not poisonous, but dangerous due to disease transmission',
  'Risk group: Children, farmers, cattle herders, and pet owners',
  'First aid\n''Do: Remove tick carefully with tweezers close to the skin\n''Wash area with soap and water, disinfect bite\n''Monitor for fever or rash\n' 'Don’t: Don’t crush tick with bare fingers\n''Don’t burn or apply oil\n''Don’t pull forcefully leaving parts inside skin',
  'Ticks can transmit Lyme disease, Rocky Mountain spotted fever, and other infections',
  'Some ticks secrete anesthetics so the host doesn’t feel the bite',
  'Can survive months without feeding by staying dormant',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Tick',
),

InsectInfo(
  name: 'Crowned Slug Caterpillar',
  image: 'https://inaturalist-open-data.s3.amazonaws.com/photos/1348858/large.JPG',
  description: 'Slug caterpillars are the larvae of moths in the Limacodidae family, known for their flattened, slug-like shape and stinging spines.',
  habitat: 'Forests, orchards, gardens, and areas with leafy plants and trees',
  diet: 'Feed on leaves of trees, shrubs, and crops',
  lifespan: 'Caterpillar stage lasts several weeks; adult moths live 1–2 weeks',
  facts: [
  'Scientific name: Isa textula',
  'Kannada name: ಸ್ಲಗ್ ಹುಳು (Slug Huḷu)',
  'In rural areas: Often called ಚುಚ್ಚು ಹುಳು (Chuchchu Huḷu)',
  'Poison level: Moderate; spines can inject venom causing pain, rashes, or irritation',
  'Risk group: Children, farmers, and people working in gardens or farms',
  'First aid:\n''Do: Remove spines with tape\n''Wash skin with soap and water\n' 'Apply ice pack, use soothing creams\n''Seek medical help if allergic reaction occurs.\n'
  'Don’t: Don’t scratch the rash\n' 'Don’t press spines deeper\n''Don’t apply mud or oil',
  'Bright colors and spines warn predators of their sting',
  'Some species are agricultural pests, feeding on crop leaves',
  'Adult moths are harmless and nocturnal',
],

moreInfoLink: 'https://en.wikipedia.org/wiki/Isa_textula',
),

InsectInfo(
  name: 'Assassin Bug',
  image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuMkxz5_O34VFgJWAH8vVKUXwIgW6km7QslA&s',
  description: 'Assassin bugs are predatory insects with a strong beak used to pierce and suck fluids from other insects.',
  habitat: 'Gardens, forests, fields, under leaves, tree bark, and sometimes inside houses',
  diet: 'Carnivorous – feed on other insects by piercing them and sucking out body fluids',
  lifespan: '6–12 months depending on species and environment',
  facts: [
  'Scientific name: Reduviidae',
  'Kannada name: ಕೊಲ್ಲುವ ಹುಳು (Kolluva Huḷu)',
  'In rural areas: Sometimes called ಕಚ್ಚುವ ಹುಳು (Kacchuva Huḷu)',
  'Poison level: Moderate; most are not dangerous, but some species (like kissing bugs) can transmit diseases such as Chagas disease',
  'Risk group: Children, elderly, and people with allergies to insect bites',
  'First aid\n''Do: Wash bite area with soap and water\n''Apply ice pack, use antiseptic cream\n''Seek medical help if swelling or fever occurs\n'
  'Don’t: Don’t scratch the wound\n''Don’t apply mud or oil\n''Don’t ignore persistent symptoms',
  'Some assassin bugs are beneficial for controlling pest insects',
  'They have a strong, painful bite when handled carelessly',
  'Over 7,000 species are found worldwide',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Assassin_bug',
),

InsectInfo(
  name: 'Paper Wasp',
  image: 'https://www.opcpest.com/wp-content/uploads/Paper-Wasp-1-scaled-1.jpeg',
  description: 'Paper wasps are slender wasps known for building paper-like nests and can sting when threatened.',
  habitat: 'Gardens, forests, fields, and urban areas; nests under eaves, branches, or sheltered structures',
  diet: 'Adults feed on nectar and sweet liquids; larvae are fed chewed-up insects by adults',
  lifespan: 'Adults live several weeks to a few months; queens may live up to a year',
  facts: [
  'Scientific name: Polistinae (subfamily, includes many paper wasp species)',
  'Kannada name: ಕಾಗದ ಹುಳು (Kāgada Huḷu)',
  'In rural areas: Often called ಪೇಪರ್ ಈಚೆ (Pēpar Īche)',
  'Poison level: Moderate; sting is painful but not usually life-threatening',
  'Risk group: Children, elderly, and people allergic to insect stings',
  'First aid:\n'
  'Do: Wash sting area with soap and water\n''Apply ice pack, take pain relievers\n''Seek medical help if allergic reaction occurs\n'
  'Don’t: Don’t scratch sting\n''Don’t crush wasps\n''Don’t ignore severe symptoms',
  'Builds paper-like nests by chewing wood fibers mixed with saliva',
  'Females have stingers and can sting multiple times',
  'Helpful in controlling garden pests by feeding larvae with insects',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Paper_wasp',
),

InsectInfo(
  name: 'Silverfish',
  image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/LepismaSaccharina.jpg/1200px-LepismaSaccharina.jpg',
  description: 'Silverfish are small, wingless insects with silvery scales and a fish-like shape, known for feeding on starchy materials.',
  habitat: 'Homes, libraries, kitchens, bathrooms, basements, and dark, humid areas',
  diet: 'Feeds on starchy materials like paper, glue, book bindings, fabrics, and cereals',
  lifespan: '2–8 years depending on environment; can survive months without food',
  facts: [
  'Scientific name: Lepisma saccharina',
  'Kannada name: ಬೆಳ್ಳಿ ಚುಳುವು (Beḷḷi Chuḷuvu)',
  'In rural areas: Often called ಕಾಗದ ಹುಳು (Kāgada Huḷu – “paper insect”)',
  'Poison level: Not poisonous, harmless to humans',
  'Risk group: None, though can damage household items',
  'First aid\n'
  'Do: Maintain cleanliness, reduce humidity\n''Store food and paper items properly\n'
  'Don’t: Don’t panic; no bites or stings occur\n''don’t leave food or paper exposed',
  'Can survive long periods without food',
  'Fast-moving and nocturnal',
  'Damage books, wallpapers, clothes, and stored food if infestation occurs',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Silverfish',
),

InsectInfo(
  name: 'Altica cyanea',
  image: 'https://live.staticflickr.com/2876/8992660280_cd84ed7722_b.jpg',
  description: 'Altica cyanea is a small, metallic blue-green flea beetle that feeds on plant leaves and can be a minor pest in gardens and farms.',
  habitat: 'Gardens, agricultural fields, and areas with leafy vegetables and plants',
  diet: 'Feeds on leaves of crops like amaranth, spinach, and other leafy vegetables',
  lifespan: 'Several weeks to a few months depending on environmental conditions',
  facts: [
  'Scientific name: Altica cyanea',
  'Kannada name: ನೀಲಿ ಹೀನು ಹುಳು (Neeli Hīnu Huḷu)',
  'In rural areas: Often called ಹೀನು ಹುಳು (Hīnu Huḷu – “leaf beetle”)',
  'Poison level: Not poisonous to humans; harmless if touched',
  'Risk group: None for humans; can affect farmers due to crop damage',
  'First aid:\n'
  'Do: Wash hands if handled\n''Use gloves when removing from crops\n'
  'Don’t: Don’t ingest\n''Don’t crush unnecessarily, avoid spreading on plants',
  'Capable of jumping long distances like fleas when disturbed',
  'Metallic coloration helps in camouflage and predator avoidance',
  'Larvae and adults both feed on plant leaves causing “shot-hole” damage',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Altica_cyanea',
),

InsectInfo(
  name: 'Diamesus osculans',
  image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9x7EYTiQP2o0iAxTxh-zsyg-YXOEOPIvhnw&s',
  description: 'Diamesus osculans is a carrion beetle that feeds on decaying animal matter, helping in nutrient recycling.',
  habitat: 'Forests, grasslands, and areas with animal carcasses or decaying organic matter',
  diet: 'Feeds on decaying animal carcasses and organic matter; some species feed on fly larvae found in carrion',
  lifespan: 'Several months depending on environmental conditions; life cycle includes egg, larva, pupa, and adult',
  facts: [
  'Scientific name: Diamesus osculans',
  'Kannada name: ಮೃತಹಾರಿ ಹುಳು (Mr̥tahāri Huḷu)',
  'In rural areas: Often called ಸಡಿಲ ಹುಳು (Saḍila Huḷu)',
  'Poison level: Not poisonous to humans; harmless to touch',
  'Risk group: None for humans; mostly important ecologically',
  'First aid:\n'
  'Do: Wash hands if touched\n''Avoid handling carcasses directly\n'
  'Don’t: Don’t ingest or crush unnecessarily\n''Don’t handle contaminated carcasses without protection',
  'Important for decomposition and nutrient cycling',
  'Can compete with flies for carrion resources',
  'Some species exhibit parental care by burying carcasses for their larvae',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Diamesus_osculans',
),

InsectInfo(
  name: 'Weaver Ant',
  image: 'https://inaturalist-open-data.s3.amazonaws.com/photos/115048419/original.jpg',
  description: 'Weaver ants are social ants known for building large nests by weaving leaves together using silk produced by their larvae.',
  habitat: 'Tropical forests, gardens, orchards, and plantations; primarily in trees',
  diet: 'Omnivorous – feed on nectar, honeydew from aphids, small insects, and other arthropods',
  lifespan: 'Workers live a few months; queens can live several years',
  facts: [
  'Scientific name: Oecophylla smaragdina',
  'Kannada name: ನಾಯಿ ಹುಳು (Nāyi Huḷu)',
  'In rural areas: Often called ರೇಷ್ಮೆ ಹುಳು (Reśme Huḷu)',
  'Poison level: Moderate; sting is painful but rarely dangerous',
  'Risk group: Children and people allergic to insect stings',
  'First aid:\n'
  'Do: Wash sting area with soap and water\n''Apply ice pack or antihistamine cream\n''Seek medical help if allergic reaction occurs\n'
  'Don’t: Don’t scratch sting\n''Don’t crush ants\n''Don’t ignore signs of severe allergy',
  'Builds large communal nests by stitching leaves together with silk from larvae',
  'Aggressive and territorial, defend nests collectively',
  'Beneficial for pest control in gardens and plantations',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Oecophylla_smaragdina',
),

InsectInfo(
  name: 'Bat Fly',
  image: 'https://images.nzgeo.com/1970/01/81_Batfly_Header-2000x1331.jpg',
  description: 'Bat flies are small, parasitic flies that live on bats and feed on their blood.',
  habitat: 'Caves, attics, and roosts where bats live; always closely associated with their bat hosts',
  diet: 'Blood of bats',
  lifespan: 'Adults live several weeks to months depending on species; entire life cycle occurs on the host',
  facts: [
  'Scientific name: Nycteribiidae and Streblidae',
  'Kannada name: ಬಾತ್ ಹೀನು (Bāt Hīnu)',
  'In rural areas: Often called ಬಾತ್ ಹುಳು (Bāt Huḷu)',
  'Poison level: Not poisonous, but bite can irritate skin if humans are bitten',
  'Risk group: Rarely humans; mostly affects bats',
  'First aid:\n'
  'Do: Wash bite area with soap and water if bitten\n''Apply antiseptic or ice pack\n'
  'Don’t: Don’t scratch bite\n''Don’t handle bats without protection\n''Avoid crushing the flies on skin',
  'Highly specialized parasites that cannot survive long away from bats',
  'Wingless in many species; excellent climbers on bat fur',
  'Transmit bat-specific pathogens but rarely affect humans',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Bat_fly',
),

InsectInfo(
  name: 'Brown Recluse Spider',
  image: 'https://upload.wikimedia.org/wikipedia/commons/d/d7/Brown-recluse-2-edit.jpg',
  description: 'Brown recluse spiders are venomous spiders known for their necrotic bite, often hiding in dark, undisturbed places.',
  habitat: 'Indoors in closets, attics, basements, under furniture, and outdoors under rocks, logs, and debris',
  diet: 'Feeds on small insects and other arthropods',
  lifespan: '1–2 years; can survive several months without food',
  facts: [
  'Scientific name: Loxosceles reclusa',
  'Kannada name: ಕಂದು ಹುಳು (Kandu Huḷu)',
  'In rural areas: Often called ಮನೆ ಹುಳು (Mane Huḷu – “house spider”)',
  'Poison level: High; venom can cause necrosis and systemic reactions',
  'Risk group: Children, elderly, and immunocompromised individuals',
  'First aid:\n'
  'Do: Wash bite area with soap and water, apply cold compress\n''Keep the affected limb elevated, seek immediate medical attention\n'
  'Don’t: Don’t cut or suck the wound\n''Don’t apply unverified remedies\n''Don’t ignore severe pain or spreading redness',
  'Six eyes arranged in pairs (unique among spiders)',
  'Shy and non-aggressive; bite usually occurs when pressed or trapped',
  'Bite can cause necrotic skin lesions and, rarely, systemic symptoms',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Brown_recluse_spider',
),

InsectInfo(
  name: 'Deathstalker Scorpion',
  image: 'https://upload.wikimedia.org/wikipedia/commons/3/39/Deathstalker_ST_07.JPG',
  description: 'The Deathstalker Scorpion is a highly venomous scorpion known for its potent sting and aggressive defense when threatened.',
  habitat: 'Deserts, scrublands, rocky areas, and arid regions; often hides under rocks and in crevices',
  diet: 'Feeds on insects, spiders, and small vertebrates',
  lifespan: '4–8 years depending on species and environment',
  facts: [
  'Scientific name: Leiurus quinquestriatus',
  'Kannada name: ಸತ್ತಿಕ scorpion (Sattika Scorpion)',
  'In rural areas: Often called ಮರಣ scorpion (Maraṇa Scorpion)',
  'Poison level: Extremely high; venom is dangerous and potentially lethal',
  'Risk group: Children, elderly, and anyone allergic to scorpion venom',
  'First aid:\n'
  'Do: Wash sting area with soap and water, apply cold pack\n''Seek immediate medical attention, antivenom may be required.\n'
  'Don’t: Don’t cut or suck the wound\n''Don’t tie tight bands\n''Don’t apply mud or unverified remedies',
  'Bright yellow color warns predators of its toxicity',
  'Nocturnal and hides during the day',
  'Venom contains a mix of neurotoxins that affect the nervous system',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Leiurus_quinquestriatus',
),

InsectInfo(
  name: 'Red Imported Fire Ant',
  image: 'https://upload.wikimedia.org/wikipedia/commons/9/94/Fire_ants_01.jpg',
  description: 'Red imported fire ants are aggressive ants known for their painful stings that can cause allergic reactions.',
  habitat: 'Open fields, lawns, gardens, pastures, and disturbed areas; build large mound nests in soil',
  diet: 'Omnivorous – feed on insects, seeds, plant material, and sugary substances like honeydew',
  lifespan: 'Workers live a few months; queens can live several years',
  facts: [
  'Scientific name: Solenopsis invicta',
  'Kannada name: ಕೆಂಪು ಹುಳು (Kempu Huḷu)',
  'In rural areas: Often called ಬೆಂಕಿ ಹುಳು (Benki Huḷu)',
  'Poison level: Moderate to high; sting is painful and may cause allergic reactions',
  'Risk group: Children, elderly, and people allergic to insect stings',
  'First aid\n'
  'Do: Wash sting area with soap and water, apply ice pack\n''Use antihistamine cream or pain relievers\n''Seek medical help if severe reaction occurs\n'
  'Don’t: Don’t scratch sting, don’t crush ants\n''Don’t ignore signs of severe allergy',
  'Workers defend the colony aggressively and can sting repeatedly',
  'Build large mound nests with interconnected tunnels',
  'Stings inject venom containing alkaloids causing burning sensation',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Red_imported_fire_ant',
),

InsectInfo(
  name: 'Kissing Bug',
  image: 'https://static01.nyt.com/images/2025/09/12/well/WELL-KISSING-BUG1/WELL-KISSING-BUG1-mediumSquareAt3X.jpg',
  description: 'Kissing bugs are blood-sucking insects that feed on mammals, including humans, and can transmit Chagas disease.',
  habitat: 'Rural and suburban areas, often in cracks of walls, roofs, animal shelters, and nests of birds or rodents',
  diet: 'Blood of mammals, birds, and reptiles',
  lifespan: 'Several months to over a year depending on species and environmental conditions',
  facts: [
  'Scientific name: Triatominae',
  'Kannada name: ಚುಂಬಿಸುವ ಹುಳು (Cumbisuvva Huḷu)',
  'In rural areas: Often called ರಕ್ತ ಹುಳು (Rakta Huḷu)',
  'Poison level: Not poisonous, but can transmit Chagas disease which is serious',
  'Risk group: Children, elderly, and people living in rural or poorly constructed homes',
  'First aid:\n'
  'Do: Wash bite area with soap and water, apply antiseptic\n''Monitor for fever or swelling\n''Seek medical attention if symptoms appear\n'
  'Don’t: Don’t crush the insect on skin\n''Don’t ignore bites\n''Don’t self-treat for Chagas disease without medical supervision',
  'Feeds at night, often biting around the face',
  'Can transmit Trypanosoma cruzi parasite causing Chagas disease',
  'Mostly active in warmer months and hidden during the day',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Kissing_bug',
),

InsectInfo(
  name: 'Bullet Ant',
  image: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Paraponera_clavata.jpg',
  description: 'Bullet ants are large, aggressive ants known for their extremely painful sting, considered one of the most painful insect stings in the world.',
  habitat: 'Rainforests and tropical lowland forests of Central and South America; live in trees and on the forest floor',
  diet: 'Omnivorous – feed on nectar, small insects, and other arthropods',
  lifespan: 'Workers live several months; queens can live up to 7 years',
  facts: [
  'Scientific name: Paraponera clavata',
  'Kannada name: ಗುಂಡಿ ಹುಳು (Gundi Huḷu)',
  'In rural areas: Often called ಬೆದರಿಸುವ ಹುಳು (Bedarisuva Huḷu)',
  'Poison level: Extremely high; sting is excruciatingly painful but rarely fatal',
  'Risk group: Children, elderly, and anyone allergic to insect venom',
  'First aid:\n'
  'Do: Wash sting area with soap and water\n''Apply ice pack, take pain relievers\n''Monitor for allergic reaction,seek medical help if severe\n'
  'Don’t: Don’t scratch sting\n''Don’t ignore severe allergic reactions',
  'Sting described as intense, throbbing, and can last up to 24 hours',
  'Often used in initiation rituals by some Amazonian tribes due to extreme pain',
  'Workers are large (up to 2.5 cm) and aggressive when defending the colony',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Bullet_ant',
),

InsectInfo(
  name: 'Wandering Glider',
  image: 'https://upload.wikimedia.org/wikipedia/commons/b/bd/Pantala_flavescens-Kadavoor-2017-05-04-002.jpg',
  description: 'The Wandering Glider is a migratory dragonfly known for its long-distance flights and aerial hunting skills.',
  habitat: 'Ponds, lakes, wetlands, and marshes; often seen flying over water bodies and open fields',
  diet: 'Feeds on flying insects such as mosquitoes, flies, and small moths',
  lifespan: 'Adults live a few weeks; larval stage lasts several months underwater',
  facts: [
  'Scientific name: Pantala flavescens',
  'Kannada name: ಸಂಚಾರಿ ಜೋಳಪು (Sanchāri Jōḷapu)',
  'In rural areas: Often called ಬಂಡೆ ಜೋಳಪು (Baṇḍe Jōḷapu)',
  'Poison level: Not poisonous; harmless to humans',
  'Risk group: None; safe for humans',
  'First aid:\n'
  'Do: None needed, safe to observe\n'
  'Don’t: Don’t handle unnecessarily, avoid crushing wings',
  'World’s most widespread dragonfly species, capable of crossing oceans',
  'Helps control mosquito populations and other small insects',
  'Adult dragonflies are strong fliers and highly agile in the air',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Pantala_flavescens',
),

InsectInfo(
  name: 'Warrior Wasp',
  image: 'https://upload.wikimedia.org/wikipedia/commons/f/f9/Synoeca_septentrionalis_cropped.jpg',
  description: 'The Warrior Wasp is a highly aggressive social wasp known for its painful sting and unique defense behaviors, including synchronized wing drumming and sting autotomy.',
  habitat: 'Tropical forests of Central and South America, particularly in Brazil and Argentina; nests are typically located on tree trunks or branches',
  diet: 'Feeds on nectar, honeydew, and small insects; larvae are fed animal proteins collected by workers',
  lifespan: 'Workers live several months; queens can live up to 16 years',
  facts: [
  'Scientific name: Synoeca cyanea',
  'Kannada name: ಯೋಧ ಹುಳು (Yodha Huḷu)',
  'In rural areas: Often called ಸೈನಿಕ ಹುಳು (Sainika Huḷu)',
  'Poison level: Extremely high; sting is excruciatingly painful and can cause systemic reactions',
  'Risk group: Children, elderly, and individuals allergic to insect stings',
  'First aid:\n''Do: Wash sting area with soap and water\n''Apply cold compress, take pain relievers\n''Seek medical attention if severe reactions occur\n'
  'Don’t: Don’t scratch sting\n''Don’t ignore signs of severe allergy',
  'Known for synchronized wing drumming as a warning display before attacking',
  'Sting autotomy: Wasp may lose its stinger during attack, leading to its death',
  'Nests can last several years and may contain multiple queens',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Synoeca_cyanea',
),

InsectInfo(
  name: 'Lonomia obliqua',
  image: 'https://upload.wikimedia.org/wikipedia/commons/e/e3/Lonomia-obliqua-citsc-1.jpg',
  description: 'Lonomia obliqua is a venomous caterpillar known for its potent venom that can cause severe bleeding disorders and even be fatal.',
  habitat: 'Forests, shrubs, and areas with leafy trees in South America, particularly Brazil',
  diet: 'Feeds on leaves of various trees and shrubs',
  lifespan: 'Caterpillar stage lasts a few weeks; adult moth stage lasts about 1–2 weeks',
  facts: [
  'Scientific name: Lonomia obliqua',
  'Kannada name: ವಿಷಕಾರಿ ಹುಳು (Viṣakāri Huḷu)',
  'In rural areas: Often called ರಕ್ತ ಹುಳು (Rakta Huḷu)',
  'Poison level: Extremely high; venom can cause hemorrhaging, kidney failure, and death',
  'Risk group: Children, adults handling leaves or plants where caterpillar is present',
  'First aid:\n'
  'Do: Do not touch; if contact occurs, wash area with soap and water\n''Seek immediate medical attention, keep victim calm and still\n'
  'Don’t: Don’t attempt to remove spines by hand\n''Don’t apply home remedies\n''Don’t ignore symptoms such as bruising or bleeding',
  'Venom contains anticoagulants causing internal bleeding',
  'Often camouflaged on leaves; difficult to see until touched',
  'Responsible for several fatalities in South America each year',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Lonomia_obliqua',
),

InsectInfo(
  name: 'Tsetse Fly',
  image: 'https://upload.wikimedia.org/wikipedia/commons/b/be/Glossina-morsitans.jpg',
  description: 'Tsetse flies are blood-feeding insects known for transmitting sleeping sickness (trypanosomiasis) in humans and animals.',
  habitat: 'Woodlands, savannas, and areas near rivers and lakes in sub-Saharan Africa; often found in shaded vegetation',
  diet: 'Blood of humans, livestock, and wild animals',
  lifespan: 'Adult flies live 1–3 months; females give birth to fully developed larvae one at a time',
  facts: [
  'Scientific name: Glossina spp.',
  'Kannada name: ತ್ಸೆಟ್ಸೆ ಹೀನು (Tsetse Hīnu)',
  'In rural areas: Often called ರಕ್ತ ಹೀನು (Rakta Hīnu)',
  'Poison level: Not venomous, but can transmit serious diseases',
  'Risk group: People living in endemic areas, livestock, and travelers',
  'First aid:\n'
  'Do: Clean bite site with soap and water\n''Monitor for fever or swelling\n''Seek medical attention if symptoms like lethargy or sleep disturbances occur\n'
  'Don’t: Don’t ignore bites\n''Don’t scratch\n''Don’t self-medicate for trypanosomiasis',
  'Transmits Trypanosoma parasites causing African sleeping sickness',
  'Both males and females feed on blood',
  'Effective vector control includes traps, insecticides, and habitat management',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Tsetse_fly',
),

InsectInfo(
  name: 'Malaria Mosquito',
  image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Anopheles_stephensi.jpeg/1200px-Anopheles_stephensi.jpeg',
  description: 'Malaria mosquitoes are blood-feeding insects responsible for transmitting malaria parasites to humans.',
  habitat: 'Stagnant water bodies, ponds, puddles, marshes, and areas near human habitation in tropical and subtropical regions',
  diet: 'Females feed on human and animal blood; males feed on nectar and plant juices',
  lifespan: 'Adult females live 1–2 weeks in nature; males live about a week',
  facts: [
  'Scientific name: Anopheles spp.',
  'Kannada name: ಮಲೇರಿಯಾ ಹೀನು (Malēriyā Hīnu)',
  'In rural areas: Often called ರಕ್ತ ಹೀನು (Rakta Hīnu)',
  'Poison level: Not poisonous, but transmits malaria parasites which are dangerous',
  'Risk group: Children, pregnant women, and people living in malaria-endemic areas',
  'First aid:\n'
  'Do: Protect against bites using nets, repellents, and insecticides; seek medical attention immediately if fever, chills, or body aches occur\n'
  'Don’t: Don’t ignore symptoms\n''Don’t self-medicate without diagnosis\n''Don’t let stagnant water accumulate near homes',
  'Transmits Plasmodium parasites causing malaria',
  'Only female mosquitoes bite humans for blood to develop eggs',
  'Breeds in clean or slightly polluted stagnant water',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Anopheles',
),

InsectInfo(
  name: 'Tasar Silkworm',
  image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFybcXndf8xPO1fVZ_obLDcKV1UoLNBigP0g&s',
  description: 'Tasar silkworms are silk-producing caterpillars that feed on leaves of host trees and are used in commercial silk production.',
  habitat: 'Forests and plantations with host trees like Terminalia and Shorea species; mostly in India',
  diet: 'Feeds on leaves of Terminalia, Shorea, and other host trees',
  lifespan: 'Caterpillar stage lasts 6–7 weeks; pupal stage lasts 2–3 weeks; adult moth lives a few days to a week',
  facts: [
  'Scientific name: Antheraea mylitta',
  'Kannada name: ತಸರ ಹೀನು (Tasar Hīnu)',
  'In rural areas: Often called ರೇಷ್ಮೆ ಹುಳು (Reśme Huḷu)',
  'Poison level: Not poisonous; harmless to humans',
  'Risk group: None; safe for humans',
  'First aid:\n'
  'Do: Handle gently; wash hands after contact if needed\n'
  'Don’t: Don’t crush larvae unnecessarily\n''Avoid pesticides when handling',
  'Produces coarse silk used for making tasar silk fabrics',
  'Feeds on specific host trees and contributes to silk industry',
  'Reared commercially in India for silk production',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Antheraea_mylitta',
),

InsectInfo(
  name: 'Moon Moth',
  image: 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Actias_luna-male.jpg',
  description: 'Moon moths are large, striking moths known for their pale green wings and long tail-like extensions.',
  habitat: 'Forests, woodlands, and areas with host trees; mostly nocturnal and attracted to light',
  diet: 'Adult moths typically do not feed; caterpillars feed on leaves of various trees such as hickory, walnut, and sweetgum',
  lifespan: 'Adult moths live about 1 week; larval stage lasts several weeks',
  facts: [
  'Scientific name: Actias luna',
  'Kannada name: ಚಂದ್ರ ಹೀನು (Chandra Hīnu)',
  'In rural areas: Often called ಚಂದ್ರ ಹುಳು (Chandra Huḷu)',
  'Poison level: Not poisonous; harmless to humans',
  'Risk group: None; safe for humans',
  'First aid:\n'
  'Do: Observe and appreciate; handle gently if necessary\n'
  'Don’t: Don’t crush wings, don’t touch unnecessarily',
  'Wings have long tail-like extensions and eye spots to deter predators',
  'Nocturnal and attracted to lights at night',
  'Caterpillars are bright green and feed on deciduous tree leaves',
],
moreInfoLink: 'https://en.wikipedia.org/wiki/Actias_luna',
),







    ];
  }



  // Future methods for adding/editing insects
  Future<void> addInsect(InsectInfo insect) async {
    // Implementation for adding new insects
  }

  Future<void> updateInsect(InsectInfo insect) async {
    // Implementation for updating insects
  }

  Future<void> deleteInsect(String insectName) async {
    // Implementation for deleting insects
  }
}