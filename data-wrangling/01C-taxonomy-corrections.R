# Hideous taxonomy correction script
# These are the names that don't match the MSW 2005 taxonomy
# Some are simple changes/errors/typos
# Some are new species discovered since 2005
#--------------------------------------------------------

ds3 <- ds2 %>%
  
#----------------------------------------------------------------------------------------
# Can't find these so excluding them
# Note these are not new species (none have dates > 2005)
# Most represent only 1 or 2 specimens
# Some are extinct species that have slipped in due to errors in MNHN records
#----------------------------------------------------------------------------------------
mutate(binomial = str_replace(binomial, "Acomys gautuni", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Acomys voltaicus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Anoplotherium commune", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Antilope quelbelu", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Ailurus ochraceus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Anoura fistulata", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Artibeus aequatorialis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Arvicola junitorum", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Arctopithecus griseus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Ateles coaita", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Blarina cinerea", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Blastocerus melanopus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Coelodonta antiquitatis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Crocidura pachyura", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Cryptomys micrura", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Crocidura leucogenys", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Crocidura nyasae", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Crocuta spelaea", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Cynocephalus niger", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Chaerephon pusillus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Conepatus mapurito", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Crocidura electa", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Crocidura heljanensis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Dasypus punctata", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Dasypus punctatus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Deinotherium giganteum", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Delphinus brocchi", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Delphinus eurynome", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Delphinus sulcatus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Dusicyon darwini", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Elephas primigenius", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Epomophorus anselli", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Erethizon godfreyi", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Eroides frontatus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Eumetopias elongatus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Episoriculus macrourus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Genetta rubiginosa", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Eutatus seguini", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Felis domesticus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Galago minor", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Glyptodon clavipes", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Galeopithecus philippensis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Gerbilliscus volobouevi", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Gerbillus dipodillus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Haeromys montanus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Herpestes galerella", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Herpestes griseus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Hippopotamus lemerlei", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Galidictis ornatus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Helogale macmillani", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Helogale percivali", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Helogale vetula", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Helogale victorina", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Hoplophoneus primaevus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Hoplophorus brevirostris", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Kangurus veterum", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Kerivoula kachinensis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Limnomys alstoni", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Lorentzimys lutillus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Loris lori", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Megaloceros giganteus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Mus terraereginae", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Myopterus senegalensis", NA_character_)) %>%     
mutate(binomial = str_replace(binomial, "Macaca maculata", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Maxomys aminudi", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Melomys exulans", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Meriones sibirica", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Microgale macpheei", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Microsciurus griseigena", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Microtus ochraceus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Microtus pedomys", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Microtus worthington", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Mus agricola", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Mus legada", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Natalus lanatus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Neurotrichus trowbridgei", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Oryzomys aureus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Oryzomys nigricans", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Oryzomys snethlageri", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Ovis sculptorum", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Pachycynodon borei", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Panthera spelaea", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Paradoxurus quadrilineatus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Perognathus truei", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Phalanger australis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Phoca phocaena", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Pipistrellus hanaki", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Pogonomys vates", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Pronolagus poelagus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Protosiren fraasi", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Prosciurillus alstoni", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Phyllops vetus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Pharotois imogene", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Paradoxurus nigrifrons", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Rattus pesticularis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Sorex rutilus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Sorex centralis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Steno gadamu", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Stenella horrida", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Stenella spinosa", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Semnopithecus subanus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Sciurus giganteus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Saimiri madierae", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Tatera miniscula", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Tursiops catalania", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Tursiops cortesii", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Rattus caelestes", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Sapajus flavius", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Sorex flaviventer", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Sturnira sorianoi", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Tamias ater", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Tamias insularis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Trichosurus penicillata", NA_character_)) %>%

mutate(binomial = str_replace(binomial, "Vespertilio antiquus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Xaymaca fulvopulvis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Xenothrix mcgregori", NA_character_)) %>%

#------------------------------
# Unclear taxonomy so excluded:
#------------------------------
mutate(binomial = str_replace(binomial, "Apodemus chevrieri?", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Gerbillus latastei?", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Gerbillus nigeriae?", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Lemniscomys m", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Macaca .", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Microtus 092742", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Oligoryzomys b", NA_character_)) %>%

#------------------------------
# Human
#------------------------------
mutate(binomial = str_replace(binomial, "Homo neanderthalensis", NA_character_)) %>%
  mutate(binomial = str_replace(binomial, "Homo sapiens", NA_character_)) %>%
  
#-------------------------------------------------------
# Weird ones missing from taxize but on the MSW database
# Noted here in case they appear in quality checks
#-------------------------------------------------------
# Microcavia australis
# Octodontomys gliroides
#-------------------------------------------------------
# New species since 2005
#-------------------------------------------------------
# "Abrothrix manni"            
# "Apomys aurorae"             
# "Apomys banahao"             
# "Apomys brownorum"           
# "Apomys camiguinensis"       
# "Apomys iridensis"           
# "Apomys lubangensis"         
# "Apomys magnus"              
# "Apomys minganensis"         
# "Apomys sierrae"             
# "Apomys zambalensis"         
# "Archboldomys maximus"       
# "Bassaricyon medius"         
# "Bassaricyon neblina"        
# "Batomys hamiguitan"         
# "Batomys uragon"             
# "Bunomys karokophilus"       
# "Caenolestes sangay"         
# "Carollia benkeithi"         
# "Carollia manu"     
# Casinycteris campomaanensis         
# "Chrotomys sibuyanensis"  
# Congosorex phillipsorum   
# "Crocidura abscondita"       
# "Crocidura fingui"           
# "Crocidura lwiroensis"       
# "Crocidura munissii"         
# "Crocidura newmarki"         
# "Crocidura ninoyi"           
# "Cryptotis lacertosus"       
# "Cryptotis mam"              
# "Cryptotis oreoryctes"  
#Coccymys shawmayeri  
# "Dendromus lachaisei"   
# Dendromus lachaisei     
# "Desmalopex microleucopterus"
# "Dromiciops bozinovici"      
# "Dyacopterus rickarti"       
# "Grammomys brevirostris"     
# "Heteromys catopterius"     
# Hsunycteris cadenai 
# "Hylaeamys acritus"          
# "Hylomyscus arcimontensis"   
# "Hylomyscus kerbispeterhansi"
# "Hylomyscus pamfi"           
# "Hylomyscus walterverheyeni" 
# Hylomyscus heinrichorum
# "Isothrix barbarabrownae"    
# "Laonastes aenigmamus"       
# "Leptomys paulus"            
# "Lonchophylla cadenai"       
# "Lonchophylla chocoana"      
# "Lonchophylla fornicata"     
# "Lonchophylla inexpectata"   
# Loncheres punctatus
# Lophostoma kalkoae
# "Marmosops chucha"           
# "Marmosops magdalenae"       
# "Miniopterus aelleni"        
# "Miniopterus ambohitrensis"  
# "Miniopterus egeri"          
# "Miniopterus griffithsi"     
# "Miniopterus mahafaliensis"  
# "Miniopterus petersoni"      
# "Miniopterus sororculus"     
# "Monodelphis arlindoi"       
# "Monodelphis sanctaerosae"   
# "Mops bakarii"               
# "Mormopterus francoismoutoui"
# "Murina belzeebub"           
# "Murina jaintiana"           
# "Murina lorelieae"           
# "Murina pluvialis"           
# "Mus cypriacus"              
# "Musseromys anacuao"         
# "Musseromys beneficus"       
# "Musseromys inopinatus"      
# "Myosorex bururiensis"       
# "Myosorex gnoskei"           
# "Myosorex jejei"             
# "Myosorex kabogoensis"       
# "Myotis attenboroughi"       
# "Myzopoda schliemanni"  
# Megaloglossus azagnyi
# Monodelphis gardneri
# Moschiola kathygre
# Myotis midastactus
# Myotis lavali
# Myotis handleyi
# Myotis diminutus
# Myotis dieteri
# "Neoromicia stanleyi"        
# "Oecomys sydandersoni"       
# "Otomys simiensis"   
# Otomops harrisoni
# Pteropus coxi
# Paratriaenops pauliani
# Tonkinomys daovantieni
# Scotophilus andrewreborii
# Scotophilus livingstonii
# Surdisorex schlitteri
# "Parastrellus hesperus"      
# "Paremballonura atrata"      
# "Pattonomys carrikeri"       
# "Pattonomys occasius"        
# "Pattonomys semivillosus"    
# "Peromyscus carletoni"       
# "Peropteryx pallidoptera"    
# "Pithecia isabela"           
# "Pithecia rylandsi"          
# "Platyrrhinus albericoi"     
# "Platyrrhinus angustirostris"
# "Platyrrhinus fusciventris"  
# "Platyrrhinus ismaeli"       
# "Platyrrhinus masu"          
# "Platyrrhinus matapalensis"  
# "Platyrrhinus nitelinea"     
# "Praomys coetzeei"           
# "Pteralopex flanneryi"       
# "Rhinolophus kahuzi"         
# "Rhinolophus willardi"       
# "Rhynchocyon udzungwensis"   
# "Rhynchomys banahao"         
# "Rhynchomys tapulao"         
# "Rungwecebus kipunji"        
# "Saxatilomys paulinae"       
# "Scotonycteris bergmansi"    
# "Sorex madrensis"            
# "Sorex rohweri"              
# "Soricomys kalinga"          
# "Soricomys leonardocoi"      
# "Soricomys montanus"         
# "Styloctenium mindorensis"   
# "Suncus hututsi"             
# "Talpa aquitania"            
# "Thomasomys andersoni"       
# "Thomomys nayarensis"        
# "Triaenops menamena"         
# "Triaenops pauliani"         
# "Vampyressa elisabethae"

#-------------------------------------------------------
# Correcting taxonomy/spellings/typos
#-------------------------------------------------------
# A
mutate(binomial = str_replace(binomial, "Acomys homericus", "Acomys dimidiatus")) %>%
mutate(binomial = str_replace(binomial, "Acomys whitei", "Acomys dimidiatus")) %>%
mutate(binomial = str_replace(binomial, "Acrocodia indica", "Tapirus indicus")) %>%
mutate(binomial = str_replace(binomial, "Aegialomys bauri", "Oryzomys galapagoensis")) %>%
mutate(binomial = str_replace(binomial, "Aegialomys galapagoensis", "Oryzomys galapagoensis")) %>%
mutate(binomial = str_replace(binomial, "Aegialomys xanthaeolus", "Oryzomys xanthaeolus")) %>%
mutate(binomial = str_replace(binomial, "Aethomys granti", "Micaelamys granti")) %>%
mutate(binomial = str_replace(binomial, "Aethomys namaquensis", "Micaelamys namaquensis")) %>%
mutate(binomial = str_replace(binomial, "Agouti paca", "Cuniculus paca")) %>%
mutate(binomial = str_replace(binomial, "Akodon andinus", "Abrothrix andinus")) %>%
mutate(binomial = str_replace(binomial, "Akodon jelskii", "Abrothrix jelskii")) %>%
mutate(binomial = str_replace(binomial, "Akodon kempi", "Deltamys kempi")) %>%
mutate(binomial = str_replace(binomial, "Akodon longipilis", "Abrothrix longipilis")) %>%
mutate(binomial = str_replace(binomial, "Akodon nigrita", "Thaptomys nigrita")) %>%
mutate(binomial = str_replace(binomial, "Akodon olivaceus", "Abrothrix olivaceus")) %>%
mutate(binomial = str_replace(binomial, "Akodon sanborni", "Abrothrix sanborni")) %>%
mutate(binomial = str_replace(binomial, "Akodon urichi", "Necromys urichi")) %>%
mutate(binomial = str_replace(binomial, "Akodon xanthorhinus", "Abrothrix olivaceus")) %>%
mutate(binomial = str_replace(binomial, "Allactaga pumilio", "Pygeretmus pumilio")) %>%
mutate(binomial = str_replace(binomial, "Alopex lagopus", "Vulpes lagopus")) %>%
mutate(binomial = str_replace(binomial, "Alouatta nigra", "Alouatta caraya")) %>%
mutate(binomial = str_replace(binomial, "Alouatta villosa", "Alouatta pigra")) %>%
mutate(binomial = str_replace(binomial, "Amblonyx cinereus", "Aonyx cinerea")) %>%
mutate(binomial = str_replace(binomial, "Amblysomus gunningi", "Neamblysomus gunningi")) %>%
mutate(binomial = str_replace(binomial, "Ammospermophilus beldingi", "Spermophilus beldingi")) %>%
mutate(binomial = str_replace(binomial, "Ammospermophilus harisii", "Ammospermophilus harrisii")) %>%
mutate(binomial = str_replace(binomial, "Anomalurus peli", "Anomalurus pelii")) %>%
mutate(binomial = str_replace(binomial, "Anomalurus peliii", "Anomalurus pelii")) %>%
mutate(binomial = str_replace(binomial, "Antechinus mayeri", "Murexechinus melanurus")) %>%
mutate(binomial = str_replace(binomial, "Antechinus naso", "Phascomurexia naso")) %>%
mutate(binomial = str_replace(binomial, "Antechinus ninbing", "Pseudantechinus ningbing")) %>%
mutate(binomial = str_replace(binomial, "Antilocapra cervicapra", "Antilope cervicapra")) %>%
mutate(binomial = str_replace(binomial, "Aonyx cinereus", "Aonyx cinerea")) %>%
mutate(binomial = str_replace(binomial, "Aonyx congicus", "Aonyx capensis")) %>%
mutate(binomial = str_replace(binomial, "Aotus azarai", "Aotus azarae")) %>%
mutate(binomial = str_replace(binomial, "Apomys hylocoetes", "Apomys hylocetes")) %>%
mutate(binomial = str_replace(binomial, "Artibeus hartii", "Enchisthenes hartii")) %>%
mutate(binomial = str_replace(binomial, "Artibeus intermedius", "Artibeus lituratus")) %>%
mutate(binomial = str_replace(binomial, "Auliscomys micropus", "Loxodontoomys micropus")) %>%
mutate(binomial = str_replace(binomial, "Acanthion hodgsonii", "Hystrix brachyura")) %>%
mutate(binomial = str_replace(binomial, "Aello cuveri", "Mormoops blainvillei")) %>%
mutate(binomial = str_replace(binomial, "Akodon arviculoides", "Necromys lasiurus")) %>%
mutate(binomial = str_replace(binomial, "Akodon suffusus", "Akodon subfuscus")) %>%
mutate(binomial = str_replace(binomial, "Allochrocebus lhoesti", "Cercopithecus lhoesti")) %>%
mutate(binomial = str_replace(binomial, "Allochrocebus preussi", "Cercopithecus preussi")) %>%
mutate(binomial = str_replace(binomial, "Allochrocebus solatus", "Cercopithecus solatus")) %>%
mutate(binomial = str_replace(binomial, "Antechinus ferruginifrons", "Sminthopsis leucopus")) %>%
mutate(binomial = str_replace(binomial, "Antechinus fuliginosus", "Sminthopsis fuliginosus")) %>%
mutate(binomial = str_replace(binomial, "Antelopus roualeynei", "Tragelaphus scriptus")) %>%
mutate(binomial = str_replace(binomial, "Antilope burchelli", "Sylvicapra grimmia")) %>%
mutate(binomial = str_replace(binomial, "Antilope caerula", "Philantomba caerula")) %>%
mutate(binomial = str_replace(binomial, "Antilope claudi", "Cephalophus claudi")) %>%
mutate(binomial = str_replace(binomial, "Antilope decula", "Tragelaphus	decula")) %>%
mutate(binomial = str_replace(binomial, "Antilope depressicornis", "Bubalus depressicornis")) %>%
mutate(binomial = str_replace(binomial, "Antilope saltiana", "Madoqua saltiana")) %>%
mutate(binomial = str_replace(binomial, "Antilope triangularis", "Taurotragus triangularis")) %>%
mutate(binomial = str_replace(binomial, "Antilope villosa", "Pelea capreolus")) %>%
mutate(binomial = str_replace(binomial, "Arctocephalus californianus", "Zalophus californianus")) %>%
mutate(binomial = str_replace(binomial, "Arctocephalus delalandi", "Arctocephalus pusillus")) %>%
mutate(binomial = str_replace(binomial, "Artibeus macleayii", "Artibeus jamaicensis")) %>%
mutate(binomial = str_replace(binomial, "Arvicola mandarinus", "Lasiopodomys mandarinus")) %>%
  
# B
mutate(binomial = str_replace(binomial, "Belomys pearsoni", "Belomys pearsonii")) %>%
mutate(binomial = str_replace(binomial, "Belomys pearsoniii", "Belomys pearsonii")) %>%
mutate(binomial = str_replace(binomial, "Blarina brevicaudata", "Blarina brevicauda")) %>%
mutate(binomial = str_replace(binomial, "Bolomys amoenus", "Necromys amoenus")) %>%
mutate(binomial = str_replace(binomial, "Bolomys lasiurus", "Necromys lasiurus")) %>%
mutate(binomial = str_replace(binomial, "Bolomys lenguarum", "Necromys lenguarum")) %>%
mutate(binomial = str_replace(binomial, "Bolomys obscurus", "Necromys obscurus")) %>%
mutate(binomial = str_replace(binomial, "Bos gur", "Bos frontalis")) %>%
mutate(binomial = str_replace(binomial, "Brachyuromys betsiloensis", "Brachyuromys betsileoensis")) %>%
mutate(binomial = str_replace(binomial, "Brachyurus rubicundus", "Cacajao calvus")) %>%
mutate(binomial = str_replace(binomial, "Bullimus bagopus", "Bullimus bagobus")) %>%
mutate(binomial = str_replace(binomial, "Balionycteris maculator", "Balionycteris maculata")) %>%
mutate(binomial = str_replace(binomial, "Blanfordimys juldaschi", "Neodon juldaschi")) %>%
mutate(binomial = str_replace(binomial, "Blastocerus sylvestris", "Ozotoceros bezoarticus")) %>%
mutate(binomial = str_replace(binomial, "Boocerus euryceros", "Tragelaphus eurycerus")) %>%
mutate(binomial = str_replace(binomial, "Boocerus eurycerus", "Tragelaphus eurycerus")) %>%
mutate(binomial = str_replace(binomial, "Bos nanus", "Syncerus caffer")) %>%
mutate(binomial = str_replace(binomial, "Bubalus brachyceros", "Syncerus caffer")) %>%
mutate(binomial = str_replace(binomial, "Bubalus centralis", "Syncerus caffer")) %>%
mutate(binomial = str_replace(binomial, "Buselaphus major", "Alcelaphus buselaphus")) %>%
mutate(binomial = str_replace(binomial, "Baiyankamys habbema", "Hydromys habbema")) %>%

# C
mutate(binomial = str_replace(binomial, "Cabreramops aequatorianus", "Molossops aequatorianus")) %>%
mutate(binomial = str_replace(binomial, "Callithrix humeralifer", "Callithrix humeralifera")) %>%
mutate(binomial = str_replace(binomial, "Callosciurus finlaysoni", "Callosciurus finlaysonii")) %>%
mutate(binomial = str_replace(binomial, "Callosciurus finlaysoniii", "Callosciurus finlaysonii")) %>%
mutate(binomial = str_replace(binomial, "Callosciurus rubriventer", "Rubrisciurus rubriventer")) %>%
mutate(binomial = str_replace(binomial, "Callospermophilus lateralis", "Spermophilus lateralis")) %>%
mutate(binomial = str_replace(binomial, "Callospermophilus madrensis", "Spermophilus madrensis")) %>%
mutate(binomial = str_replace(binomial, "Callospermophilus saturatus", "Spermophilus saturatus")) %>%
mutate(binomial = str_replace(binomial, "Canis culpaeus", "Lycalopex culpaeus")) %>%
mutate(binomial = str_replace(binomial, "Canis mexicanus", "Canis lupus")) %>%
mutate(binomial = str_replace(binomial, "Capromys prehensilis", "Mysateles prehensilis")) %>%
mutate(binomial = str_replace(binomial, "Caracal serval", "Leptailurus serval")) %>%
mutate(binomial = str_replace(binomial, "Carlito syrichta", "Tarsius syrichta")) %>%
mutate(binomial = str_replace(binomial, "Castoria angustidens", "Akodon serrensis")) %>%
mutate(binomial = str_replace(binomial, "Celaenomys silaceus", "Chrotomys silaceus")) %>%
mutate(binomial = str_replace(binomial, "Cephalopachus bancanus", "Tarsius bancanus")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus caerulus", "Philantomba monticola")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus maxwelli", "Philantomba maxwellii")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus maxwellii", "Philantomba maxwellii")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus monticola", "Philantomba monticola")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus musculoides", "Philantomba monticola")) %>%
mutate(binomial = str_replace(binomial, "Cercocebus albigena", "Lophocebus albigena")) %>%
mutate(binomial = str_replace(binomial, "Cercoleptes caudivolvulus", "Potos flavus")) %>%
mutate(binomial = str_replace(binomial, "Cercopithecus aethiops", "Chlorocebus aethiops")) %>%
mutate(binomial = str_replace(binomial, "Cercopithecus callitrichus", "Chlorocebus sabaeus")) %>%
mutate(binomial = str_replace(binomial, "Cercopithecus griseus", "Chlorocebus aethiops")) %>%
mutate(binomial = str_replace(binomial, "Cercopithecus niger", "Miopithecus talopoin")) %>%
mutate(binomial = str_replace(binomial, "Cercopithecus patas", "Erythrocebus patas")) %>%
mutate(binomial = str_replace(binomial, "Cercopithecus rufoviridis", "Chlorocebus pygerythrus")) %>%
mutate(binomial = str_replace(binomial, "Cercopithecus sabaeus", "Chlorocebus sabaeus")) %>%
mutate(binomial = str_replace(binomial, "Cercopithecus talapoin", "Miopithecus talopoin")) %>%
mutate(binomial = str_replace(binomial, "Cerradomys \"subflavus\"", "Oryzomys subflavus")) %>%
mutate(binomial = str_replace(binomial, "Cerradomys langguthi", "Oryzomys subflavus")) %>%
mutate(binomial = str_replace(binomial, "Cerradomys maracajuensis", "Oryzomys maracajuensis")) %>%
mutate(binomial = str_replace(binomial, "Cerradomys scotti", "Oryzomys scotti")) %>%
mutate(binomial = str_replace(binomial, "Cerradomys subflavus", "Oryzomys subflavus")) %>%
mutate(binomial = str_replace(binomial, "Cervus aristotelis", "Rusa unicolor")) %>%
mutate(binomial = str_replace(binomial, "Cervus canadensis", "Cervus elaphus")) %>%
mutate(binomial = str_replace(binomial, "Cervus duvaucelii", "Rucervus duvaucelii")) %>%
mutate(binomial = str_replace(binomial, "Cervus eldii", "Rucervus eldii")) %>%
mutate(binomial = str_replace(binomial, "Cervus mariannus", "Rusa marianna")) %>%
mutate(binomial = str_replace(binomial, "Cervus moluccensis", "Rusa timorensis")) %>%
mutate(binomial = str_replace(binomial, "Cervus porcinus", "Axis porcinus")) %>%
mutate(binomial = str_replace(binomial, "Cervus russa", "Rusa timorensis")) %>%
mutate(binomial = str_replace(binomial, "Cervus schomburgki", "Rucervus schomburgki")) %>%
mutate(binomial = str_replace(binomial, "Cervus timorensis", "Rusa timorensis")) %>%
mutate(binomial = str_replace(binomial, "Cervus unicolor", "Rusa unicolor")) %>%
mutate(binomial = str_replace(binomial, "Chalinolobus argentatus", "Glauconycteris argentata")) %>%
mutate(binomial = str_replace(binomial, "Chalinolobus variegata", "Glauconycteris variegata")) %>%
mutate(binomial = str_replace(binomial, "Chalinolobus variegatus", "Glauconycteris variegata")) %>%
mutate(binomial = str_replace(binomial, "Chilonycteris parnellii", "Pteronotus parnellii")) %>%
mutate(binomial = str_replace(binomial, "Chilonycteris rubiginosa", "Pteronotus parnellii")) %>%
mutate(binomial = str_replace(binomial, "Chimarrogale platycephala", "Chimarrogale platycephalus")) %>%
mutate(binomial = str_replace(binomial, "Chionomys layi", "Chionomys nivalis")) %>%
mutate(binomial = str_replace(binomial, "Chiromyscus gliroides", "Chiropodomys gliroides")) %>%
mutate(binomial = str_replace(binomial, "Chlorocebus cynosurus", "Chlorocebus cynosuros")) %>%
mutate(binomial = str_replace(binomial, "Chroeomys andinus", "Abrothrix andinus")) %>%
mutate(binomial = str_replace(binomial, "Chroeomys jelskii", "Abrothrix jelskii")) %>%
mutate(binomial = str_replace(binomial, "Chrysothrix sciurea", "Saimiri sciureus")) %>%
mutate(binomial = str_replace(binomial, "Clethrionomys gapperi", "Myodes gapperi")) %>%
mutate(binomial = str_replace(binomial, "Clethrionomys glareolus", "Myodes glareolus")) %>%
mutate(binomial = str_replace(binomial, "Clethrionomys occidentalis", "Myodes californicus")) %>%
mutate(binomial = str_replace(binomial, "Clethrionomys rufocanus", "Myodes rufocanus")) %>%
mutate(binomial = str_replace(binomial, "Clethrionomys rutilus", "Myodes rutilus")) %>%
mutate(binomial = str_replace(binomial, "Cobus maria", "Kobus megaceros")) %>%
mutate(binomial = str_replace(binomial, "Coelops frithi", "Coelops frithii")) %>%
mutate(binomial = str_replace(binomial, "Coelops frithiii", "Coelops frithii")) %>%
mutate(binomial = str_replace(binomial, "Coendou insidiosus", "Sphiggurus insidiosus")) %>%
mutate(binomial = str_replace(binomial, "Coendou melanurus", "Sphiggurus melanurus")) %>%
mutate(binomial = str_replace(binomial, "Coendou mexicanus", "Sphiggurus mexicanus")) %>%
mutate(binomial = str_replace(binomial, "Coendou pruinosus", "Sphiggurus pruinosus")) %>%
mutate(binomial = str_replace(binomial, "Coendou rufescens", "Echinoprocta rufescens")) %>%
mutate(binomial = str_replace(binomial, "Coendou sanctaemartae", "Coendou prehensilis")) %>%
mutate(binomial = str_replace(binomial, "Coendou spinosus", "Sphiggurus spinosus")) %>%
mutate(binomial = str_replace(binomial, "Coendou vestitus", "Sphiggurus vestitus")) %>%
mutate(binomial = str_replace(binomial, "Colobus powelli", "Piliocolobus foai")) %>%
mutate(binomial = str_replace(binomial, "Colobus preussi", "Piliocolobus preussi")) %>%
mutate(binomial = str_replace(binomial, "Colobus refomitratus", "Piliocolobus rufomitratus")) %>%
mutate(binomial = str_replace(binomial, "Colobus rufomitratus", "Piliocolobus rufomitratus")) %>%
mutate(binomial = str_replace(binomial, "Colobus satanus", "Colobus satanas")) %>%
mutate(binomial = str_replace(binomial, "Cremnomys blanfordi", "Madromys blanfordi")) %>%
mutate(binomial = str_replace(binomial, "Cricetulus curtatus", "Allocricetulus curtatus")) %>%
mutate(binomial = str_replace(binomial, "Cricetulus eversmanni", "Allocricetulus eversmanni")) %>%
mutate(binomial = str_replace(binomial, "Crocidura tarfayaensis", "Crocidura tarfayensis")) %>%
mutate(binomial = str_replace(binomial, "Cryptonanus chacoensis", "Gracilinanus agilis")) %>%
mutate(binomial = str_replace(binomial, "Cryptonanus ignitus", "Gracilinanus ignitus")) %>%
mutate(binomial = str_replace(binomial, "Cryptonanus unduaviensis", "Gracilinanus agilis")) %>%
mutate(binomial = str_replace(binomial, "Cryptotis magnus", "Cryptotis magna")) %>%
mutate(binomial = str_replace(binomial, "Cynictis selousi", "Paracynictis selousi")) %>%
mutate(binomial = str_replace(binomial, "Cynocephalus variegatus", "Galeopterus variegates")) %>%
mutate(binomial = str_replace(binomial, "Cynopterus horsfieldi", "Cynopterus horsfieldii")) %>%
mutate(binomial = str_replace(binomial, "Cynopterus horsfieldiii", "Cynopterus horsfieldii")) %>%
mutate(binomial = str_replace(binomial, "Cynopterus titthaecheileus", "Cynopterus titthaecheilus")) %>%
mutate(binomial = str_replace(binomial, "Callithrix pencillata", "Callithrix penicillata")) %>%
mutate(binomial = str_replace(binomial, "Canis chrysurus", "Vulpes bengalensis")) %>%
mutate(binomial = str_replace(binomial, "Canis himalaicus", "Vulpes vulpes")) %>%
mutate(binomial = str_replace(binomial, "Canis urostictus", "Lycalopex urostictus")) %>%
mutate(binomial = str_replace(binomial, "Capra warryato", "Hemitragus hylocrius")) %>%
mutate(binomial = str_replace(binomial, "Capricornis sumatrensis", "Capricornis sumatraensis")) %>%
mutate(binomial = str_replace(binomial, "Capromys ingrahami", "Geocapromys ingrahami")) %>%
mutate(binomial = str_replace(binomial, "Casinycteris ophiodon", "Scotonycteris ophiodon")) %>%
mutate(binomial = str_replace(binomial, "Cebuella pygmaea", "Callithrix pygmaea")) %>%
mutate(binomial = str_replace(binomial, "Cepahlophus harveyi", "Cephalophus natalensis")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus abyssinicus", "Sylvicapra grimmia")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus bicolor", "Philantomba monticola")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus lowei", "Philantomba maxwellii")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus lugens", "Philantomba monticola")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus melanorheus", "Philantomba monticola")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus nyasae", "Philantomba monticola")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus simpsoni", "Philantomba monticola")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus walkeri", "Sylvicapra grimmia")) %>%
mutate(binomial = str_replace(binomial, "Cephalophus whitfieldi", "Philantomba maxwellii")) %>%
mutate(binomial = str_replace(binomial, "Cerradomys langguthi", "Deltamys kempi")) %>%
mutate(binomial = str_replace(binomial, "Cerradomys maracajuensis", "Oryzomys maracajuensis")) %>%
mutate(binomial = str_replace(binomial, "Cerradomys subflavus", "Oryzomys subflavus")) %>%
mutate(binomial = str_replace(binomial, "Cervulus ratwa", "Muntiacus muntjak")) %>%
mutate(binomial = str_replace(binomial, "Cervulus reevesi", "Muntiacus reevesi")) %>%
mutate(binomial = str_replace(binomial, "Cervulus sclateri", "Muntiacus reevesi")) %>%
mutate(binomial = str_replace(binomial, "Cervulus tamulicus", "Muntiacus muntjak")) %>%
mutate(binomial = str_replace(binomial, "Cervus bezoarticus", "Ozotoceros bezoarticus")) %>%
mutate(binomial = str_replace(binomial, "Cervus dimorphe", "Rucervus duvaucelii")) %>%
mutate(binomial = str_replace(binomial, "Cervus heterocerus", "Rusa unicolor")) %>%
mutate(binomial = str_replace(binomial, "Cervus humilis", "Pudu puda")) %>%
mutate(binomial = str_replace(binomial, "Cervus mexicanus", "Odocoileus virginianus")) %>%
mutate(binomial = str_replace(binomial, "Cervus nudipalpebra", "Axis axis")) %>%
mutate(binomial = str_replace(binomial, "Cervus peruvianus", "Odocoileus virginianus")) %>%
mutate(binomial = str_replace(binomial, "Cervus spatulatus", "Rusa unicolor")) %>%
mutate(binomial = str_replace(binomial, "Cervus tavistocki", "Rusa timoriensis")) %>%
mutate(binomial = str_replace(binomial, "Cervus thoroldi", "Przewalskium albirostris")) %>%
mutate(binomial = str_replace(binomial, "Cervus timoriensis", "Rusa timoriensis")) %>%
mutate(binomial = str_replace(binomial, "Chacodelphys formosa", "Gracilinanus formosus")) %>%
mutate(binomial = str_replace(binomial, "Cheirogaleus smithii", "Microcebus rufus")) %>%
mutate(binomial = str_replace(binomial, "Cheracebus lugens", "Callicebus lugens")) %>%
mutate(binomial = str_replace(binomial, "Cheracebus medemi", "Callicebus medemi")) %>%
mutate(binomial = str_replace(binomial, "Cheracebus torquatus", "Callicebus torquatus")) %>%
mutate(binomial = str_replace(binomial, "Chionomys layi", "Chionomys nivalis")) %>%
mutate(binomial = str_replace(binomial, "Chiropotes sagulatus", "Chiropotes chiropotes")) %>%
mutate(binomial = str_replace(binomial, "Chrysochloris congicus", "Calcochloris leucorhinus")) %>%
mutate(binomial = str_replace(binomial, "Cleotis percivali", "Cloeotis percivali")) %>%
mutate(binomial = str_replace(binomial, "Coendou ichillus", "Sphiggurus ichillus")) %>%
mutate(binomial = str_replace(binomial, "Coendu quichua", "Coendou bicolor")) %>%
mutate(binomial = str_replace(binomial, "Colobus fuliginosus", "Piliocolobus badius")) %>%
mutate(binomial = str_replace(binomial, "Colobus palliatus", "Colobus angolensis")) %>%
mutate(binomial = str_replace(binomial, "Colobus tephrasceles", "Piliocolobus tephrosceles")) %>%
mutate(binomial = str_replace(binomial, "Conepatus huntii", "Conepatus chinga")) %>%
mutate(binomial = str_replace(binomial, "Conepatus nasutus", "Conepatus leuconotus")) %>%
mutate(binomial = str_replace(binomial, "Cratogeomys fulvescens", "Cratogeomys merriami")) %>%
mutate(binomial = str_replace(binomial, "Cratogeomys perotensis", "Cratogeomys merriami")) %>%
mutate(binomial = str_replace(binomial, "Cratogeomys planiceps", "Cratogeomys tylorhinus")) %>%
mutate(binomial = str_replace(binomial, "Crocidura capensoides", "Crocidura cyanea")) %>%
mutate(binomial = str_replace(binomial, "Cryptonanus unduaviensis", "Gracilinanus agilis")) %>%
mutate(binomial = str_replace(binomial, "Cynicitis maccarthiae", "Herpestes fuscus")) %>%
mutate(binomial = str_replace(binomial, "Cynictis pencillata", "Cynictis penicillata")) %>%
  
# D  
mutate(binomial = str_replace(binomial, "Damaliscus hunteri", "Beatragus hunteri")) %>%
mutate(binomial = str_replace(binomial, "Dasymys incomtusrufulus", "Dasymys incomtus")) %>%
mutate(binomial = str_replace(binomial, "Dasyprocta agouti", "Dasyprocta leporina")) %>%
mutate(binomial = str_replace(binomial, "Dasyprocta paca", "Cuniculus paca")) %>%
mutate(binomial = str_replace(binomial, "Dasyprocta taczanowskii", "Cuniculus taczanowskii")) %>%
mutate(binomial = str_replace(binomial, "Dephomys eburnea", "Dephomys eburneae")) %>%
mutate(binomial = str_replace(binomial, "Dermanura anderseni", "Artibeus anderseni")) %>%
mutate(binomial = str_replace(binomial, "Dermanura azteca", "Artibeus aztecus")) %>%
mutate(binomial = str_replace(binomial, "Dermanura cinerea", "Artibeus cinereus")) %>%
mutate(binomial = str_replace(binomial, "Dermanura glauca", "Artibeus glaucus")) %>%
mutate(binomial = str_replace(binomial, "Dermanura gnoma", "Artibeus gnomus")) %>%
mutate(binomial = str_replace(binomial, "Dermanura phaeotis", "Artibeus phaeotis")) %>%
mutate(binomial = str_replace(binomial, "Dermanura tolteca", "Artibeus toltecus")) %>%
mutate(binomial = str_replace(binomial, "Dermanura watsoni", "Artibeus watsoni")) %>%
mutate(binomial = str_replace(binomial, "Desmalopex leucopterus", "Pteropus leucopterus")) %>%
mutate(binomial = str_replace(binomial, "Dorcopsis macleayi", "Dorcopsulus macleayi")) %>%
mutate(binomial = str_replace(binomial, "Dusicyon culpaeus", "Lycalopex culpaeus")) %>%
mutate(binomial = str_replace(binomial, "Dusicyon griseus", "Lycalopex griseus")) %>%
mutate(binomial = str_replace(binomial, "Dusicyon gymnocercus", "Lycalopex gymnocercus")) %>%
mutate(binomial = str_replace(binomial, "Dusicyon sechurae", "Lycalopex sechurae")) %>%
mutate(binomial = str_replace(binomial, "Dusicyon thous", "Cerdocyon thous")) %>%
mutate(binomial = str_replace(binomial, "Dusicyon vetulus", "Lycalopex vetulus")) %>%
mutate(binomial = str_replace(binomial, "Dermanura bogotensis", "Artibeus glaucus")) %>%
mutate(binomial = str_replace(binomial, "Dermanura rava", "Artibeus phaeotis")) %>%
mutate(binomial = str_replace(binomial, "Dermanura rosenbergi", "Artibeus glaucus")) %>%
mutate(binomial = str_replace(binomial, "Didelphys australis", "Dromiciops gliroides")) %>%
mutate(binomial = str_replace(binomial, "Dipodillus nanus", "Gerbillus nanus")) %>%
  
# E
mutate(binomial = str_replace(binomial, "Echimys armatus", "Makalata didelphoides")) %>%
mutate(binomial = str_replace(binomial, "Echimys braziliensis", "Phyllomys brasiliensis")) %>%
mutate(binomial = str_replace(binomial, "Echimys didelphoides", "Makalata didelphoides")) %>%
mutate(binomial = str_replace(binomial, "Echimys grandis", "Makalata grandis")) %>%
mutate(binomial = str_replace(binomial, "Echimys occasius", "Makalata occasius")) %>%
mutate(binomial = str_replace(binomial, "Echimys rhipidurus", "Makalata rhipidura")) %>%
mutate(binomial = str_replace(binomial, "Elephas africanus", "Loxodonta africana")) %>%
mutate(binomial = str_replace(binomial, "Emballonura nigrescens", "Mosia nigrescens")) %>%
mutate(binomial = str_replace(binomial, "Eothenomys eva", "Caromys eva")) %>%
mutate(binomial = str_replace(binomial, "Eothenomys kageus", "Myodes kageus")) %>%
mutate(binomial = str_replace(binomial, "Eothenomys shanseius", "Myodes shanseius")) %>%
mutate(binomial = str_replace(binomial, "Eothenomys smithi", "Myodes smithii")) %>%
mutate(binomial = str_replace(binomial, "Epomops dobsoni", "Epomops dobsonii")) %>%
mutate(binomial = str_replace(binomial, "Epomops dobsoniii", "Epomops dobsonii")) %>%
mutate(binomial = str_replace(binomial, "Eptesicus guineensis", "Neoromicia guineensis")) %>%
mutate(binomial = str_replace(binomial, "Eptesicus nilssoni", "Eptesicus nilssonii")) %>%
mutate(binomial = str_replace(binomial, "Eptesicus nilssoniii", "Eptesicus nilssonii")) %>%
mutate(binomial = str_replace(binomial, "Eptesicus tenuipinnis", "Neoromicia tenuipinnis")) %>%
mutate(binomial = str_replace(binomial, "Eremoryzomys polius", "Oryzomys polius")) %>%
mutate(binomial = str_replace(binomial, "Erethizon dorsatum", "Erethizon dorsata")) %>%
mutate(binomial = str_replace(binomial, "Erethizon dorsatus", "Erethizon dorsata")) %>%
mutate(binomial = str_replace(binomial, "Euryoryzomys emmonsae", "Oryzomys emmonsae")) %>%
mutate(binomial = str_replace(binomial, "Euryoryzomys legatus", "Oryzomys legatus")) %>%
mutate(binomial = str_replace(binomial, "Euryoryzomys macconnelli", "Oryzomys macconnelli")) %>%
mutate(binomial = str_replace(binomial, "Euryoryzomys nitidus", "Oryzomys nitidus")) %>%
mutate(binomial = str_replace(binomial, "Euryoryzomys russatus", "Oryzomys russatus")) %>%
mutate(binomial = str_replace(binomial, "Echymipera kalabu", "Echymipera kalubu")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus calligoni", "Hemiechinus auritus")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus fallax", "Atelerix algirus")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus grayii", "Hemiechinus collaris")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus hindei", "Atelerix albiventris")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus jerdoni", "Paraechinus hypomelas")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus macracanthus", "Paraechinus hypomelas")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus mentalis", "Paraechinus micropus")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus miodon", "Mesechinus hughi")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus niger", "Paraechinus hypomelas")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus sibiricus", "Mesechinus dauuricus")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus spatangus", "Hemiechinus collaris")) %>%
mutate(binomial = str_replace(binomial, "Erinaceus spiculus", "Atelerix albiventris")) %>%
mutate(binomial = str_replace(binomial, "Erythrocebus albigenis", "Erythrocebus patas")) %>%
mutate(binomial = str_replace(binomial, "Euryoryzomys lamia", "Oryzomys lamia")) %>%
mutate(binomial = str_replace(binomial, "Eqvus johnstoni", "Okapia johnstoni")) %>%
  
# F
mutate(binomial = str_replace(binomial, "Felis aurata", "Profelis aurata")) %>%
mutate(binomial = str_replace(binomial, "Felis bengalensis", "Prionailurus bengalensis")) %>%
mutate(binomial = str_replace(binomial, "Felis caracal", "Caracal caracal")) %>%
mutate(binomial = str_replace(binomial, "Felis colocolo", "Leopardus colocolo")) %>%
mutate(binomial = str_replace(binomial, "Felis concolor", "Puma concolor")) %>%
mutate(binomial = str_replace(binomial, "Felis geoffroyi", "Leopardus geoffroyi")) %>%
mutate(binomial = str_replace(binomial, "Felis liptosticta", "Leptailurus serval")) %>%
mutate(binomial = str_replace(binomial, "Felis marmorata", "Pardofelis marmorata")) %>%
mutate(binomial = str_replace(binomial, "Felis pagonaroundi", "Puma yagouaroundi")) %>%
mutate(binomial = str_replace(binomial, "Felis pardalis", "Leopardus pardalis")) %>%
mutate(binomial = str_replace(binomial, "Felis pardus", "Panthera pardus")) %>%
mutate(binomial = str_replace(binomial, "Felis parvalis", "Leopardus pardalis")) %>%
mutate(binomial = str_replace(binomial, "Felis rubiginosa", "Pronailurus rubiginosus")) %>%
mutate(binomial = str_replace(binomial, "Felis rufus", "Lynx rufus")) %>%
mutate(binomial = str_replace(binomial, "Felis serval", "Leptailurus serval")) %>%
mutate(binomial = str_replace(binomial, "Felis sylvestris", "Felis silvestris")) %>%
mutate(binomial = str_replace(binomial, "Felis temminckii", "Catopuma temminckii")) %>%
mutate(binomial = str_replace(binomial, "Felis tigrina", "Leopardus tigrinus")) %>%
mutate(binomial = str_replace(binomial, "Felis uncia", "Uncia uncia")) %>%
mutate(binomial = str_replace(binomial, "Felis viverrina", "Pronailurus viverrinus")) %>%
mutate(binomial = str_replace(binomial, "Felis weidii", "Leopardus wiedii")) %>%
mutate(binomial = str_replace(binomial, "Felis yaguarondi", "Puma yagouaroundi")) %>%
mutate(binomial = str_replace(binomial, "Funisciurus pyrrhopus", "Funisciurus pyrropus")) %>%
mutate(binomial = str_replace(binomial, "Felis agrius", "Felis sylvestris")) %>%
mutate(binomial = str_replace(binomial, "Felis fearonii", "Acinonyx jubatus")) %>%
mutate(binomial = str_replace(binomial, "Felis herschelii", "Pronailurus herschelii")) %>%
mutate(binomial = str_replace(binomial, "Felis pardochrous", "Pronailurus bengalensis")) %>%
mutate(binomial = str_replace(binomial, "Felis pardoides", "Leopardus geoffroyi")) %>%
mutate(binomial = str_replace(binomial, "Felis rutilus", "Profelis aurata")) %>%
mutate(binomial = str_replace(binomial, "Felis villosa", "Panthera pardus")) %>%
mutate(binomial = str_replace(binomial, "Felis wagati", "Pronailurus bengalensis")) %>%
  
# G
mutate(binomial = str_replace(binomial, "Galago crassicaudatus", "Otolemur crassicaudatus")) %>%
mutate(binomial = str_replace(binomial, "Galagoides demidoff", "Galago demidoff")) %>%
mutate(binomial = str_replace(binomial, "Galago demidoffi", "Galago demidoff")) %>%
mutate(binomial = str_replace(binomial, "Galagoides demidoff", "Galago demidoff")) %>%
mutate(binomial = str_replace(binomial, "Galagoides thomasi", "Galago thomasi")) %>%
mutate(binomial = str_replace(binomial, "Galeopterus variegatus", "Galeopterus variegates")) %>%
mutate(binomial = str_replace(binomial, "Galera barbata", "Eira barbara")) %>%
mutate(binomial = str_replace(binomial, "Galidictis vittatus", "Galidictis fasciata")) %>%
mutate(binomial = str_replace(binomial, "Gardnerycteris crenulata", "Mimon crenulatum")) %>%
mutate(binomial = str_replace(binomial, "Gardnerycteris crenulatum", "Mimon crenulatum")) %>%
mutate(binomial = str_replace(binomial, "Gazella albonotata", "Eudorcas rufifrons")) %>%
mutate(binomial = str_replace(binomial, "Gazella merrilli", "Gazella gazella")) %>%
mutate(binomial = str_replace(binomial, "Gazella dama", "Dama dama")) %>%
mutate(binomial = str_replace(binomial, "Gazella granti", "Nanger granti")) %>%
mutate(binomial = str_replace(binomial, "Gazella rufifrons", "Eudorcas rufifrons")) %>%
mutate(binomial = str_replace(binomial, "Gazella soemmerringii", "Nanger soemmerringii")) %>%
mutate(binomial = str_replace(binomial, "Gazella thomsonii", "Eudorcas thomsonii")) %>%
mutate(binomial = str_replace(binomial, "Genetta terrae-sanctae", "Genetta genetta")) %>%
mutate(binomial = str_replace(binomial, "Geomys cherriei", "Orthogeomys cherriei")) %>%
mutate(binomial = str_replace(binomial, "Geomys colonus", "Geomys pinetis")) %>%
mutate(binomial = str_replace(binomial, "Geomys cumberlandius", "Geomys pinetis")) %>%
mutate(binomial = str_replace(binomial, "Geomys perotensis", "Cratogeomys merriami")) %>%
mutate(binomial = str_replace(binomial, "Gerbillus campestris", "Dipodillus campestris")) %>%
mutate(binomial = str_replace(binomial, "Gerbillus dasyurus", "Dipodillus dasyurus")) %>%
mutate(binomial = str_replace(binomial, "Gerbillus firouzi", "Allactaga firouzi")) %>%
mutate(binomial = str_replace(binomial, "Gerbillus harwoodi", "Dipodillus harwoodi")) %>%
mutate(binomial = str_replace(binomial, "Gerbillus leucogaster", "Gerbilliscus leucogaster")) %>%
mutate(binomial = str_replace(binomial, "Gerbillus mackillingini", "Dipodillus mackilligini")) %>%
mutate(binomial = str_replace(binomial, "Gerbillus paeba", "Gerbillurus paeba")) %>%
mutate(binomial = str_replace(binomial, "Gerbillus simoni", "Dipodillus simoni")) %>%
mutate(binomial = str_replace(binomial, "Gerbillus simonii", "Dipodillus simoni")) %>%
mutate(binomial = str_replace(binomial, "Gerbillus stigmonyx", "Dipodillus stigmonyx")) %>%
mutate(binomial = str_replace(binomial, "Gerbilliscus kempii", "Gerbilliscus kempi")) %>%
mutate(binomial = str_replace(binomial, "Gerbillus vanillus", "Gerbillus vallinus")) %>%
mutate(binomial = str_replace(binomial, "Globicephala melaena", "Globicephala melas")) %>%
mutate(binomial = str_replace(binomial, "Gracilinanus longicaudus", "Gracilinanus emiliae")) %>%
mutate(binomial = str_replace(binomial, "Graphiurus claviglis", "Graphiurus crassicaudatus")) %>%
mutate(binomial = str_replace(binomial, "Graphiurus nagtglassii", "Graphiurus nagtglasii")) %>%
mutate(binomial = str_replace(binomial, "Graphiurus dolichurus", "Grammomys dolichurus")) %>%

# H
mutate(binomial = str_replace(binomial, "Halmaturus houtmannii", "Macropus eugenii")) %>%
mutate(binomial = str_replace(binomial, "Halmaturus rufogriseus", "Macropus rufogriseus")) %>%
mutate(binomial = str_replace(binomial, "Handleyomys alfaroi", "Oryzomys alfaroi")) %>%
mutate(binomial = str_replace(binomial, "Handleyomys chapmani", "Oryzomys chapmani")) %>%
mutate(binomial = str_replace(binomial, "Handleyomys melanotis", "Oryzomys melanotis")) %>%
mutate(binomial = str_replace(binomial, "Handleyomys rostratus", "Oryzomys rostratus")) %>%
mutate(binomial = str_replace(binomial, "Handleyomys saturatior", "Oryzomys saturatior")) %>%
mutate(binomial = str_replace(binomial, "Hapale jacchus", "Callithrix jacchus")) %>%
mutate(binomial = str_replace(binomial, "Hapale penicillata", "Callithrix penicillata")) %>%
mutate(binomial = str_replace(binomial, "Helictis orientalis", "Melogale orientalis")) %>%
mutate(binomial = str_replace(binomial, "Helogale brunetta", "Helogale parvula")) %>%
mutate(binomial = str_replace(binomial, "Helogale undulata", "Helogale parvula")) %>%
mutate(binomial = str_replace(binomial, "Hemicentetes semicaudatus", "Hemicentetes semispinosus")) %>%
mutate(binomial = str_replace(binomial, "Hemiechinus aethiopicus", "Paraechinus aethiopicus")) %>%
mutate(binomial = str_replace(binomial, "Hemiechinus hypomelas", "Paraechinus hypomelas")) %>%
mutate(binomial = str_replace(binomial, "Hemiechinus micropus", "Paraechinus micropus")) %>%
mutate(binomial = str_replace(binomial, "Hemigalus hosei", "Diplogale hosei")) %>%
mutate(binomial = str_replace(binomial, "Herpailurus yaguarondi", "Puma yagouaroundi")) %>%
mutate(binomial = str_replace(binomial, "Herpestes edwardsii", "Herpestes edwardsi")) %>%
mutate(binomial = str_replace(binomial, "Herpestes pulverculentus", "Galerella pulverulenta")) %>%
mutate(binomial = str_replace(binomial, "Herpestes sanguineus", "Galerella sanguinea")) %>%
mutate(binomial = str_replace(binomial, "Herpestes cauui", "Galerella sanguinea")) %>%
mutate(binomial = str_replace(binomial, "Herpestes gracilis", "Galerella sanguinea")) %>%
mutate(binomial = str_replace(binomial, "Herpestes nigripes", "Bdeogale nigripes")) %>%
mutate(binomial = str_replace(binomial, "Herpestes punctulatus", "Galerella sanguinea")) %>%
mutate(binomial = str_replace(binomial, "Herpestes widdringtoni", "Herpestes ichneumon")) %>%
mutate(binomial = str_replace(binomial, "Hesperomys fulvescens", "Oligoryzomys fulvescens")) %>%
mutate(binomial = str_replace(binomial, "Hipposideros commersonii", "Hipposideros commersoni")) %>%
mutate(binomial = str_replace(binomial, "Hipposideros speouis", "Hipposideros speoris")) %>%
mutate(binomial = str_replace(binomial, "Hoolock hoolock", "Bunopithecus hoolock")) %>%
mutate(binomial = str_replace(binomial, "Hsunycteris thomasi", "Lonchophylla thomasi")) %>%
mutate(binomial = str_replace(binomial, "Hylaeamys tatei", "Oryzomys tatei")) %>%
mutate(binomial = str_replace(binomial, "Hylopetes sagitta", "Hylopetes lepidus")) %>%
mutate(binomial = str_replace(binomial, "Hydrochoerus hydrochaeris", "Hydrochoeris hydrochaeris")) %>%
mutate(binomial = str_replace(binomial, "Hydrochoerus isthmius", "Hydrochoeris isthmius")) %>%
mutate(binomial = str_replace(binomial, "Hydromys neobrittanicus", "Hydromys neobritannicus")) %>%
mutate(binomial = str_replace(binomial, "Hylaeamys laticeps", "Oryzomys laticeps")) %>%
mutate(binomial = str_replace(binomial, "Hylaeamys megacephalus", "Oryzomys megacephalus")) %>%
mutate(binomial = str_replace(binomial, "Hylaeamys oniscus", "Oryzomys laticeps")) %>%
mutate(binomial = str_replace(binomial, "Hylaeamys perenensis", "Oryzomys perenensis")) %>%
mutate(binomial = str_replace(binomial, "Hylaeamys yunganus", "Oryzomys yunganus")) %>%
mutate(binomial = str_replace(binomial, "Hylobates concolor", "Nomascus concolor")) %>%
mutate(binomial = str_replace(binomial, "Hylobates hoolock", "Bunopithecus hoolock")) %>%
mutate(binomial = str_replace(binomial, "Hylobates leucogenys", "Nomascus leucogenys")) %>%
mutate(binomial = str_replace(binomial, "Hylobates syndactylus", "Symphalangus syndactylus")) %>%
mutate(binomial = str_replace(binomial, "Hylomys sinensis", "Neotetracus sinensis")) %>%
mutate(binomial = str_replace(binomial, "Hylomyscus fumosus", "Heimyscus fumosus")) %>%
mutate(binomial = str_replace(binomial, "Hylopetes fimbriatus", "Eoglaucomys fimbriatus")) %>%
mutate(binomial = str_replace(binomial, "Hystrix africae", "Hystrix africaeaustralis")) %>%
# The line of code above breaks the correctly designated species so the line below fixes that
mutate(binomial = str_replace(binomial, "Hystrix africaeaustralisaustralis", "Hystrix africaeaustralis")) %>%

  # I
mutate(binomial = str_replace(binomial, "Ictidomys mexicanus", "Spermophilus mexicanus")) %>%
mutate(binomial = str_replace(binomial, "Ictidomys parvidens", "Spermophilus mexicanus")) %>%
mutate(binomial = str_replace(binomial, "Ictidomys tridecemlineatus", "Spermophilus tridecemlineatus")) %>%
mutate(binomial = str_replace(binomial, "Iomys horsfieldi", "Iomys horsfieldii")) %>%
mutate(binomial = str_replace(binomial, "Iomys horsfieldiii", "Iomys horsfieldii")) %>%
mutate(binomial = str_replace(binomial, "Isothrix villosa", "Isothrix bistriata")) %>%
mutate(binomial = str_replace(binomial, "Ictonyx erythraea", "Ictonyx striatus")) %>%
mutate(binomial = str_replace(binomial, "Ictonyx libycus", "Ictonyx libyca")) %>%

# K
mutate(binomial = str_replace(binomial, "Kobus anselli", "Hippotragus niger")) %>%
mutate(binomial = str_replace(binomial, "Kobus kordoni", "Kobus vardonii")) %>%
mutate(binomial = str_replace(binomial, "Kobus vardoni", "Kobus vardonii")) %>%
 mutate(binomial = str_replace(binomial, "Kobus vardoniii", "Kobus vardonii")) %>%
  
# L
mutate(binomial = str_replace(binomial, "Lagothrix flavicauda", "Oreonax flavicauda")) %>%
mutate(binomial = str_replace(binomial, "Lagurus curtatus", "Lemmiscus curtatus")) %>%
mutate(binomial = str_replace(binomial, "Lagurus luteus", "Eolagurus luteus")) %>%
mutate(binomial = str_replace(binomial, "Lagurus przewalskii", "Eolagurus przewalskii")) %>%
mutate(binomial = str_replace(binomial, "Lama vicugna", "Vicugna vicugna")) %>%
mutate(binomial = str_replace(binomial, "Lasiopodomys brandti", "Lasiopodomys brandtii")) %>%
  mutate(binomial = str_replace(binomial, "Lasiopodomys brandtiii", "Lasiopodomys brandtii")) %>%
mutate(binomial = str_replace(binomial, "Leggadina delicatula", "Pseudomys delicatulus")) %>%
mutate(binomial = str_replace(binomial, "Leggadina hermannsburgensis", "Pseudomys hermannsburgensis")) %>%
mutate(binomial = str_replace(binomial, "Lemmus schisticolor", "Myopus schisticolor")) %>%
mutate(binomial = str_replace(binomial, "Lemur coronatus", "Eulemur coronatus")) %>%
mutate(binomial = str_replace(binomial, "Lemur fulvus", "Eulemur fulvus")) %>%
mutate(binomial = str_replace(binomial, "Lemur macaco", "Eulemur macaco")) %>%
mutate(binomial = str_replace(binomial, "Lemur variegatus", "Varecia variegata")) %>%
mutate(binomial = str_replace(binomial, "Leopoldamys flavopunctatus", "Lophuromys flavopunctatus")) %>%
mutate(binomial = str_replace(binomial, "Lepus brasiliensis", "Sylvilagus brasiliensis")) %>%
mutate(binomial = str_replace(binomial, "Lepus cuniculus", "Sylvilagus cunicularius")) %>%
mutate(binomial = str_replace(binomial, "Lepus floridanus", "Sylvilagus floridanus")) %>%
mutate(binomial = str_replace(binomial, "Lepus nuttalli", "Sylvilagus nuttallii")) %>%
mutate(binomial = str_replace(binomial, "Lepus palustris", "Sylvilagus palustris")) %>%
mutate(binomial = str_replace(binomial, "Lepus pequensis", "Lepus peguensis")) %>%
mutate(binomial = str_replace(binomial, "Lepus talai", "Lepus tolai")) %>%
mutate(binomial = str_replace(binomial, "Lobodon carcinophagus", "Lobodon carcinophaga")) %>%
mutate(binomial = str_replace(binomial, "Lutra brasiliensis", "Pteronura brasiliensis")) %>%
mutate(binomial = str_replace(binomial, "Lutra canadensis", "Lontra canadensis")) %>%
mutate(binomial = str_replace(binomial, "Lutra maculicollis", "Hydrictis maculicollis")) %>%
mutate(binomial = str_replace(binomial, "Lagorchestes albipilis", "Lagostrophus fasciatus")) %>%
mutate(binomial = str_replace(binomial, "Lagothrix lagothricha", "Lagothrix lagotricha")) %>%
mutate(binomial = str_replace(binomial, "Lemur lecomystax", "Eulemur macaco")) %>%
mutate(binomial = str_replace(binomial, "Leontocebus fuscicollis", "Saguinus fuscicollis")) %>%
mutate(binomial = str_replace(binomial, "Leontocebus fuscus", "Saguinus fuscicollis")) %>%
mutate(binomial = str_replace(binomial, "Leontocebus illigeri", "Saguinus fuscicollis")) %>%
mutate(binomial = str_replace(binomial, "Leontocebus lagonotus", "Saguinus fuscicollis")) %>%
mutate(binomial = str_replace(binomial, "Leontocebus leucogenys", "Saguinus fuscicollis")) %>%
mutate(binomial = str_replace(binomial, "Leontocebus nigricollis", "Saguinus nigricollis")) %>%
mutate(binomial = str_replace(binomial, "Leontocebus nigrifrons", "Saguinus fuscicollis")) %>%
mutate(binomial = str_replace(binomial, "Leontocebus tripartitus", "Saguinus tripartitus")) %>%
mutate(binomial = str_replace(binomial, "Leontocebus weddelli", "Saguinus fuscicollis")) %>%
mutate(binomial = str_replace(binomial, "Leopardus ellioti", "Pronailurus bengalensis")) %>%
mutate(binomial = str_replace(binomial, "Leopardus hernandesii", "Panthera onca")) %>%
mutate(binomial = str_replace(binomial, "Leopardus perniger", "Panthera pardus")) %>%
mutate(binomial = str_replace(binomial, "Lepus douglasii", "Sylvilagus palustris")) %>%
mutate(binomial = str_replace(binomial, "Lepus huxleyi", "Oryctolagus cuniculus")) %>%
mutate(binomial = str_replace(binomial, "Lepus peninsularis", "Sylvilagus bachmani")) %>%
mutate(binomial = str_replace(binomial, "Lutra chilensis", "Lontra felina")) %>%
mutate(binomial = str_replace(binomial, "Lutra indigitatus", "Aonyx cinerea")) %>%
mutate(binomial = str_replace(binomial, "Lutra leptonyx", "Aonyx cinerea")) %>%
mutate(binomial = str_replace(binomial, "Lutra simung", "Lutrogale perspicillata")) %>%
mutate(binomial = str_replace(binomial, "Lutra tarayensis", "Lutrogale perspicillata")) %>%
 
# M
mutate(binomial = str_replace(binomial, "Malacomys lukolelae", "Praomys lukolelae")) %>%
mutate(binomial = str_replace(binomial, "Mandrillus choras", "Papio anubis")) %>%
mutate(binomial = str_replace(binomial, "Manis longicaudata", "Manis tetradactyla")) %>%
mutate(binomial = str_replace(binomial, "Macroscelides edwardsii", "Elephantulus edwardii")) %>%
mutate(binomial = str_replace(binomial, "Marmosa citella", "Thylamys pusillus")) %>%
mutate(binomial = str_replace(binomial, "Marmosa incana", "Marmosops incanus")) %>%
mutate(binomial = str_replace(binomial, "Marmosa leucastra", "Marmosops noctivagus")) %>%
mutate(binomial = str_replace(binomial, "Marmosa limae", "Micoureus demerarae")) %>%
mutate(binomial = str_replace(binomial, "Marmosa ocellata", "Marmosops impavidus")) %>%
mutate(binomial = str_replace(binomial, "Marmosa sobrina", "Marmosops impavidus")) %>%
mutate(binomial = str_replace(binomial, "Marmosa alstoni", "Micoureus alstoni")) %>%
mutate(binomial = str_replace(binomial, "Marmosa canescens", "Tlacuatzin canescens")) %>%
mutate(binomial = str_replace(binomial, "Marmosa cinerea", "Micoureus paraguayanus")) %>%
mutate(binomial = str_replace(binomial, "Marmosa constantiae", "Micoureus constantiae")) %>%
mutate(binomial = str_replace(binomial, "Marmosa demerarae", "Micoureus demerarae")) %>%
mutate(binomial = str_replace(binomial, "Marmosa impavida", "Marmosops impavidus")) %>%
mutate(binomial = str_replace(binomial, "Marmosa narica", "Gracilinanus marica")) %>%
mutate(binomial = str_replace(binomial, "Marmosa paraguayana", "Micoureus paraguayanus")) %>%
mutate(binomial = str_replace(binomial, "Marmosa phaea", "Micoureus phaeus")) %>%
mutate(binomial = str_replace(binomial, "Marmosa regina", "Micoureus regina")) %>%
mutate(binomial = str_replace(binomial, "Marmosops ocellatus", "Marmosops impavidus")) %>%
mutate(binomial = str_replace(binomial, "Mastomys angolensis", "Myomyscus agolensis")) %>%
mutate(binomial = str_replace(binomial, "Melomys fellowsi", "Protochromys fellowsi")) %>%
mutate(binomial = str_replace(binomial, "Melomys levipes", "Paramelomys levipes")) %>%
mutate(binomial = str_replace(binomial, "Melomys lorentzi", "Paramelomys lorentzii")) %>%
mutate(binomial = str_replace(binomial, "Melomys lorentzii", "Paramelomys lorentzii")) %>%
mutate(binomial = str_replace(binomial, "Melomys moncktoni", "Paramelomys moncktoni")) %>%
mutate(binomial = str_replace(binomial, "Melomys platyops", "Paramelomys platyops")) %>%
mutate(binomial = str_replace(binomial, "Melomys rattoides", "Mammelomys rattoides")) %>%
mutate(binomial = str_replace(binomial, "Melomys rubex", "Paramelomys rubex")) %>%
mutate(binomial = str_replace(binomial, "Meriones tristami", "Meriones tristrami")) %>%
mutate(binomial = str_replace(binomial, "Microcavia australis", "Microcavia australis")) %>%
mutate(binomial = str_replace(binomial, "Microcebus coquereli", "Mirza coquereli")) %>%
mutate(binomial = str_replace(binomial, "Micronycteris brachyotis", "Lampronycteris brachyotis")) %>%
mutate(binomial = str_replace(binomial, "Micronycteris nicefori", "Trinycteris nicefori")) %>%
mutate(binomial = str_replace(binomial, "Micronycteris pusilla", "Neonycteris pusilla")) %>%
mutate(binomial = str_replace(binomial, "Micronycteris sylvestris", "Glyphonycteris sylvestris")) %>%
mutate(binomial = str_replace(binomial, "Microperoryctes ornata", "Microperoryctes longicauda")) %>%
mutate(binomial = str_replace(binomial, "Microtus brandti", "Lasiopodomys brandtii")) %>%
mutate(binomial = str_replace(binomial, "Microtus carruthersi", "Neodon juldaschi")) %>%
mutate(binomial = str_replace(binomial, "Microtus irene", "Neodon irene")) %>%
mutate(binomial = str_replace(binomial, "Microtus juldaschi", "Neodon juldaschi")) %>%
mutate(binomial = str_replace(binomial, "Microtus longicaudatus", "Microtus longicaudus")) %>%
mutate(binomial = str_replace(binomial, "Microtus mandarinus", "Lasiopodomys mandarinus")) %>%
mutate(binomial = str_replace(binomial, "Microtus middendorffi", "Microtus middendorffii")) %>%
mutate(binomial = str_replace(binomial, "Microtus nivalis", "Chionomys nivalis")) %>%
mutate(binomial = str_replace(binomial, "Miniopterus schreibersi", "Miniopterus schreibersii")) %>%
mutate(binomial = str_replace(binomial, "Miniopterus schreibersiii", "Miniopterus schreibersii")) %>%
mutate(binomial = str_replace(binomial, "Mormoops blainvillii", "Mormoops blainvillei")) %>%
mutate(binomial = str_replace(binomial, "Mormopterus petrophilus", "Sauromys petrophilus")) %>%
mutate(binomial = str_replace(binomial, "Mormopterus setiger", "Platymops setiger")) %>%
mutate(binomial = str_replace(binomial, "Mustela eversmannii", "Mustela eversmanii")) %>%
mutate(binomial = str_replace(binomial, "Mustela flavigala", "Martes flavigula")) %>%
mutate(binomial = str_replace(binomial, "Mustela tiarata", "Mustela eversmanii")) %>%
mutate(binomial = str_replace(binomial, "Myomys albipes", "Stenocephalemys albipes")) %>%
mutate(binomial = str_replace(binomial, "Myomys butleri", "Praomys daltoni")) %>%
mutate(binomial = str_replace(binomial, "Myomys daltoni", "Praomys daltoni")) %>%
mutate(binomial = str_replace(binomial, "Myomys derooi", "Praomys derooi")) %>%
mutate(binomial = str_replace(binomial, "Myomys ingoldbyi", "Praomys daltoni")) %>%
mutate(binomial = str_replace(binomial, "Myomys yemeni", "Myomyscus yemeni")) %>%
mutate(binomial = str_replace(binomial, "Myonycteris angolensis", "Lissonycteris angolensis")) %>%
mutate(binomial = str_replace(binomial, "Myospalax fontanierii", "Eospalax fontanierii")) %>%
mutate(binomial = str_replace(binomial, "Myospalax smithii", "Eospalax smithii")) %>%
mutate(binomial = str_replace(binomial, "Myotis bechsteini", "Myotis bechsteinii")) %>%
mutate(binomial = str_replace(binomial, "Myotis bechsteiniii", "Myotis bechsteinii")) %>%
mutate(binomial = str_replace(binomial, "Myotis bocagei", "Myotis bocagii")) %>%
mutate(binomial = str_replace(binomial, "Myoxus glis", "Glis glis")) %>%
mutate(binomial = str_replace(binomial, "Myrmecophaga tetradactyla", "Tamandua tetradactyla")) %>%
mutate(binomial = str_replace(binomial, "Mephitis nasuta", "Conepatus leuconotus")) %>%
mutate(binomial = str_replace(binomial, "Mico argentatus", "Callithrix argentata")) %>%
mutate(binomial = str_replace(binomial, "Mico chrysoleucos", "Callithrix chrysoleuca")) %>%
mutate(binomial = str_replace(binomial, "Mico emiliae", "Callithrix emiliae")) %>%
mutate(binomial = str_replace(binomial, "Mico humeralifer", "Callithrix humeralifera")) %>%
mutate(binomial = str_replace(binomial, "Mico intermedius", "Callithrix intermedia")) %>%
mutate(binomial = str_replace(binomial, "Mico leucippe", "Callithrix leucippe")) %>%
mutate(binomial = str_replace(binomial, "Mico melanoleucas", "Callithrix chrysoleuca")) %>%
mutate(binomial = str_replace(binomial, "Mico melanurus", "Callithrix melanura")) %>%
mutate(binomial = str_replace(binomial, "Micromys agrarius", "Apodemus agrarius")) %>%
mutate(binomial = str_replace(binomial, "Mindomys hammondi", "Oryzomys hammondi")) %>%
mutate(binomial = str_replace(binomial, "Mirimiri acrodonta", "Pteralopex acrodonta")) %>%
mutate(binomial = str_replace(binomial, "Mormopterus cobourgianus", "Mormopterus loriae")) %>%
mutate(binomial = str_replace(binomial, "Moschus fulviventer", "Tragulus kanchil")) %>%
mutate(binomial = str_replace(binomial, "Moschus meminna", "Moschiola meminna")) %>%
mutate(binomial = str_replace(binomial, "Moschus moschifrus", "Moschus moschiferus")) %>%
mutate(binomial = str_replace(binomial, "Moschus stanleyanus", "Tragulus napu")) %>%
mutate(binomial = str_replace(binomial, "Mungos auratus", "Galerella sanguinea")) %>%
mutate(binomial = str_replace(binomial, "Mungos incertus", "Herpestes javanicus")) %>%
mutate(binomial = str_replace(binomial, "Muntiacus lacrymans", "Muntiacus reevesi")) %>%
mutate(binomial = str_replace(binomial, "Murina huttonii", "Murina huttoni")) %>%
mutate(binomial = str_replace(binomial, "Mus aguti", "Dasyprocta leporina")) %>%
mutate(binomial = str_replace(binomial, "Mus arboricola", "Rattus rattus")) %>%
mutate(binomial = str_replace(binomial, "Mus colletti", "Rattus colletti")) %>%
mutate(binomial = str_replace(binomial, "Mustela flavigula", "Martes flavigula")) %>%
mutate(binomial = str_replace(binomial, "Mustela leucopus", "Martes americana")) %>%
mutate(binomial = str_replace(binomial, "Myrmarctos eversmanni", "Ursus arctos")) %>%
mutate(binomial = str_replace(binomial, "Microsciurus granatensis", "Sciurus granatensis")) %>%

# N
mutate(binomial = str_replace(binomial, "Naemorhedus crispus", "Capricornis crispus")) %>%
mutate(binomial = str_replace(binomial, "Naemorhedus sumatraensis", "Capricornis sumatraensis")) %>%
mutate(binomial = str_replace(binomial, "Nannomys triton", "Mus triton")) %>%
mutate(binomial = str_replace(binomial, "Nannosciurus concinnus", "Exilisciurus concinnus")) %>%
mutate(binomial = str_replace(binomial, "Nannosciurus exilis", "Exilisciurus exilis")) %>%
mutate(binomial = str_replace(binomial, "Nannosciurus surrutilus", "Exilisciurus concinnus")) %>%
mutate(binomial = str_replace(binomial, "Nasalis concolor", "Simias concolor")) %>%
mutate(binomial = str_replace(binomial, "Natalus lepidus", "Nyctiellus lepidus")) %>%
mutate(binomial = str_replace(binomial, "Natalus micropus", "Chilonatalus micropus")) %>%
mutate(binomial = str_replace(binomial, "Nemorhaedus goral", "Naemorhedus goral")) %>%
mutate(binomial = str_replace(binomial, "Nemorhaedus sumatraensis", "Capricornis sumatraensis")) %>%
mutate(binomial = str_replace(binomial, "Neomicroxus bogotensis", "Akodon bogotensis")) %>%
mutate(binomial = str_replace(binomial, "Neoromicia matroka", "Eptesicus matroka")) %>%
mutate(binomial = str_replace(binomial, "Neotomodon mexicana", "Neotoma mexicana")) %>%
mutate(binomial = str_replace(binomial, "Nephelomys albigularis", "Oryzomys albigularis")) %>%
mutate(binomial = str_replace(binomial, "Nephelomys auriventer", "Oryzomys auriventer")) %>%
mutate(binomial = str_replace(binomial, "Nephelomys caracolus", "Oryzomys caracolus")) %>%
mutate(binomial = str_replace(binomial, "Nephelomys devius", "Oryzomys devius")) %>%
mutate(binomial = str_replace(binomial, "Nephelomys keaysi", "Oryzomys keaysi")) %>%
mutate(binomial = str_replace(binomial, "Nephelomys levipes", "Oryzomys levipes")) %>%
mutate(binomial = str_replace(binomial, "Nephelomys maculiventer", "Oryzomys albigularis")) %>%
mutate(binomial = str_replace(binomial, "Nephelomys meridensis", "Oryzomys meridensis")) %>%
mutate(binomial = str_replace(binomial, "Nephelomys moerex", "Oryzomys albigularis")) %>%
mutate(binomial = str_replace(binomial, "Nephelomys pectoralis", "Oryzomys albigularis")) %>%
mutate(binomial = str_replace(binomial, "Nephelomys pirrensis", "Oryzomys albigularis")) %>%
mutate(binomial = str_replace(binomial, "Niviventer langbianus", "Niviventer langbianis")) %>%
mutate(binomial = str_replace(binomial, "Notiosorex gigas", "Megasorex gigas")) %>%
mutate(binomial = str_replace(binomial, "Notocitellus adocetus", "Spermophilus adocetus")) %>%
mutate(binomial = str_replace(binomial, "Notocitellus annulatus", "Spermophilus annulatus")) %>%
mutate(binomial = str_replace(binomial, "Notomys mitchelli", "Notomys mitchellii")) %>%
mutate(binomial = str_replace(binomial, "Notomys mitchelliii", "Notomys mitchellii")) %>%
mutate(binomial = str_replace(binomial, "Nyctalus anthonyi", "Hypsugo anthonyi")) %>%
mutate(binomial = str_replace(binomial, "Nycticeius balstoni", "Scotorepens balstoni")) %>%
mutate(binomial = str_replace(binomial, "Nycticeius greyii", "Scotorepens greyii")) %>%
mutate(binomial = str_replace(binomial, "Nycticeius schlieffeni", "Nycticeinops schlieffeni")) %>%
mutate(binomial = str_replace(binomial, "Natalus macrourus", "Natalus stramineus")) %>%
mutate(binomial = str_replace(binomial, "Neodon fuscus", "Lasiopodomys fuscus")) %>%
mutate(binomial = str_replace(binomial, "Neodon leucurus", "Phaiomys leucurus")) %>%
mutate(binomial = str_replace(binomial, "Neomicroxus latebricola", "Akodon latebricola")) %>%
mutate(binomial = str_replace(binomial, "Neoromicia brunnea", "Neoromicia brunneus")) %>%
mutate(binomial = str_replace(binomial, "Neoromicia nana", "Neoromicia nanus")) %>%
mutate(binomial = str_replace(binomial, "Neoromicia somalica", "Neoromicia somalicus")) %>%
mutate(binomial = str_replace(binomial, "Neotragus damarensis", "Madoqua kirkii")) %>%
mutate(binomial = str_replace(binomial, "Neotragus haggardi", "Ourebia ourebi")) %>%
mutate(binomial = str_replace(binomial, "Nyctalus stenopterus", "Pipistrellus stenopterus")) %>%
mutate(binomial = str_replace(binomial, "Nectomys alfari", "Sigmodontomys alfari")) %>%
  
# O
mutate(binomial = str_replace(binomial, "Octodontomys gliroides", "Octodontomys gliroides")) %>%
mutate(binomial = str_replace(binomial, "Oecomys microtis", "Oligoryzomys microtis")) %>%
mutate(binomial = str_replace(binomial, "Oncifelis colocolo", "Leopardus colocolo")) %>%
mutate(binomial = str_replace(binomial, "Oncifelis geoffroyi", "Leopardus geoffroyi")) %>%
mutate(binomial = str_replace(binomial, "Oreoryzomys balneator", "Oryzomys balneator")) %>%
mutate(binomial = str_replace(binomial, "Oryzomys bicolor", "Oecomys bicolor")) %>%
mutate(binomial = str_replace(binomial, "Oryzomys caliginosus", "Melanomys caliginosus")) %>%
mutate(binomial = str_replace(binomial, "Oryzomys chacoensis", "Oligoryzomys chacoensis")) %>%
mutate(binomial = str_replace(binomial, "Oryzomys concolor", "Oecomys concolor")) %>%
mutate(binomial = str_replace(binomial, "Oryzomys fornesi", "Oligoryzomys fornesi")) %>%
mutate(binomial = str_replace(binomial, "Oryzomys longicaudatus", "Oligoryzomys longicaudatus")) %>%
mutate(binomial = str_replace(binomial, "Oryzomys minutus", "Microryzomys minutus")) %>%
mutate(binomial = str_replace(binomial, "Oryzomys nigripes", "Oligoryzomys nigripes")) %>%
mutate(binomial = str_replace(binomial, "Oryzomys xantheolus", "Oryzomys xanthaeolus")) %>%
mutate(binomial = str_replace(binomial, "Osbornictis piscivora", "Genetta piscivora")) %>%
mutate(binomial = str_replace(binomial, "Osgoodomys mexicanus", "Peromyscus mexicanus")) %>%
mutate(binomial = str_replace(binomial, "Osgoodomys spicilegus", "Peromyscus spicilegus")) %>%
mutate(binomial = str_replace(binomial, "Otaria californiana", "Zalophus californianus")) %>%
mutate(binomial = str_replace(binomial, "Otomys unisulcatus", "Myotomys unisulcatus")) %>%
mutate(binomial = str_replace(binomial, "Otonycteris hemprichi", "Otonycteris hemprichii")) %>%
mutate(binomial = str_replace(binomial, "Otonycteris hemprichiii", "Otonycteris hemprichii")) %>%
mutate(binomial = str_replace(binomial, "Otospermophilus atricapillus", "Spermophilus atricapillus")) %>%
mutate(binomial = str_replace(binomial, "Otospermophilus beecheyi", "Spermophilus beecheyi")) %>%
mutate(binomial = str_replace(binomial, "Otospermophilus variegatus", "Spermophilus variegatus")) %>%
mutate(binomial = str_replace(binomial, "Ovis tragelophus", "Ammotragus lervia")) %>%
mutate(binomial = str_replace(binomial, "Oxymycterus caparaoe", "Oxymycterus caparoae")) %>%
mutate(binomial = str_replace(binomial, "Ozotoceros campestris", "Ozotoceros bezoarticus")) %>%
mutate(binomial = str_replace(binomial, "Odobenus obesus", "Odobenus rosmarus")) %>%
mutate(binomial = str_replace(binomial, "Onychogalea frenata", "Onychogalea fraenata")) %>%
mutate(binomial = str_replace(binomial, "Orcinus stenorhyncha", "Orcinus orca")) %>%
mutate(binomial = str_replace(binomial, "Oryzomys barbacoas", "Sigmodontomys barbacoas")) %>%
mutate(binomial = str_replace(binomial, "Oryzomys vegetus", "Oligoryzomys vegetus")) %>%
mutate(binomial = str_replace(binomial, "Ourebia rutilus", "Ourebia ourebi")) %>%
mutate(binomial = str_replace(binomial, "Ovis burrhel", "Pseudois nayaur")) %>%
mutate(binomial = str_replace(binomial, "Ovis nahoor", "Pseudois nayaur")) %>%

# P
mutate(binomial = str_replace(binomial, "Panthera uncia", "Uncia uncia")) %>%
mutate(binomial = str_replace(binomial, "Papio leucophaeus", "Mandrillus leucophaeus")) %>%
mutate(binomial = str_replace(binomial, "Pappogeomys castanops", "Cratogeomys castanops")) %>%
mutate(binomial = str_replace(binomial, "Pappogeomys gymnurus", "Cratogeomys gymnurus")) %>%
mutate(binomial = str_replace(binomial, "Pappogeomys merriami", "Cratogeomys merriami")) %>%
mutate(binomial = str_replace(binomial, "Pappogeomys tylorhinus", "Cratogeomys tylorhinus")) %>%
mutate(binomial = str_replace(binomial, "Parascaptor insularis", "Mogera insularis")) %>%
mutate(binomial = str_replace(binomial, "Perimyotis subflavus", "Pipistrellus subflavus")) %>%
mutate(binomial = str_replace(binomial, "Perognathus alticola", "Perognathus alticolus")) %>%
mutate(binomial = str_replace(binomial, "Perognathus anthonyi", "Chaetodipus fallax")) %>%
mutate(binomial = str_replace(binomial, "Perognathus arenarius", "Chaetodipus arenarius")) %>%
mutate(binomial = str_replace(binomial, "Perognathus baileyi", "Chaetodipus baileyi")) %>%
mutate(binomial = str_replace(binomial, "Perognathus californicus", "Chaetodipus californicus")) %>%
mutate(binomial = str_replace(binomial, "Perognathus fallax", "Chaetodipus fallax")) %>%
mutate(binomial = str_replace(binomial, "Perognathus formosus", "Chaetodipus formosus")) %>%
mutate(binomial = str_replace(binomial, "Perognathus hispidus", "Chaetodipus hispidus")) %>%
mutate(binomial = str_replace(binomial, "Perognathus intermedius", "Chaetodipus intermedius")) %>%
mutate(binomial = str_replace(binomial, "Perognathus nelsoni", "Chaetodipus nelsoni")) %>%
mutate(binomial = str_replace(binomial, "Perognathus paradoxus", "Chaetodipus hispidus")) %>%
mutate(binomial = str_replace(binomial, "Perognathus penicillatus", "Chaetodipus penicillatus")) %>%
mutate(binomial = str_replace(binomial, "Perognathus pernix", "Chaetodipus pernix")) %>%
mutate(binomial = str_replace(binomial, "Perognathus spinatus", "Chaetodipus spinatus")) %>%
mutate(binomial = str_replace(binomial, "Peromyscus banderanus", "Osgoodomys banderanus")) %>%
mutate(binomial = str_replace(binomial, "Peromyscus floridanus", "Ochrotomys nuttalli")) %>%
mutate(binomial = str_replace(binomial, "Peromyscus lepturus", "Habromys lepturus")) %>%
mutate(binomial = str_replace(binomial, "Peromyscus nuttalli", "Ochrotomys nuttalli")) %>%
mutate(binomial = str_replace(binomial, "Petauroides volanstylus", "Petauroides volans")) %>%
mutate(binomial = str_replace(binomial, "Phenacomys albipes", "Arborimus albipes")) %>%
mutate(binomial = str_replace(binomial, "Phenacomys longicaudus", "Arborimus longicaudus")) %>%
mutate(binomial = str_replace(binomial, "Phoca fasciata", "Histriophoca fasciata")) %>%
mutate(binomial = str_replace(binomial, "Phoca groenlandica", "Pagophilus groenlandicus")) %>%
mutate(binomial = str_replace(binomial, "Phoca hispida", "Pusa hispida")) %>%
mutate(binomial = str_replace(binomial, "Phoca sibirica", "Pusa sibirica")) %>%
mutate(binomial = str_replace(binomial, "Phyllotis gerbillus", "Paralomys gerbillus")) %>%
mutate(binomial = str_replace(binomial, "Phyllotis micropus", "Loxodontomys micropus")) %>%
mutate(binomial = str_replace(binomial, "Phyllotis pictus", "Auliscomys pictus")) %>%
mutate(binomial = str_replace(binomial, "Phyllotis sublimis", "Auliscomys sublimis")) %>%
mutate(binomial = str_replace(binomial, "Pipistrellus cuprosus", "Arielulus cuprosus")) %>%
mutate(binomial = str_replace(binomial, "Pipistrellus maurus", "Hypsugo savii")) %>%
mutate(binomial = str_replace(binomial, "Pipistrellus nanus", "Neoromicia nanus")) %>%
mutate(binomial = str_replace(binomial, "Pitymys savii", "Microtus savii")) %>%
mutate(binomial = str_replace(binomial, "Pitymys subterraneus", "Microtus subterraneus")) %>%
mutate(binomial = str_replace(binomial, "Plecotus mexicanus", "Corynorhinus mexicanus")) %>%
mutate(binomial = str_replace(binomial, "Plecotus townsendii", "Corynorhinus townsendii")) %>%
mutate(binomial = str_replace(binomial, "Pogonomelomys sylvestris", "Pogonomys sylvestris")) %>%
mutate(binomial = str_replace(binomial, "Poliocitellus franklinii", "Spermophilus franklinii")) %>%
mutate(binomial = str_replace(binomial, "Praomys albipes", "Stenocephalemys albipes")) %>%
mutate(binomial = str_replace(binomial, "Praomys fumatus", "Mastomys natalensis")) %>%
mutate(binomial = str_replace(binomial, "Praomys natalensis", "Mastomys natalensis")) %>%
mutate(binomial = str_replace(binomial, "Presbytis cristatus", "Trachypithecus cristatus")) %>%
mutate(binomial = str_replace(binomial, "Presbytis entellus", "Semnopithecus entellus")) %>%
mutate(binomial = str_replace(binomial, "Presbytis francoisi", "Trachypithecus francoisi")) %>%
mutate(binomial = str_replace(binomial, "Presbytis johni", "Trachypithecus johnii")) %>%
mutate(binomial = str_replace(binomial, "Presbytis johnii", "Trachypithecus johnii")) %>%
mutate(binomial = str_replace(binomial, "Presbytis maurus", "Trachypithecus auratus")) %>%
mutate(binomial = str_replace(binomial, "Presbytis melalophus", "Presbytis melalophos")) %>%
mutate(binomial = str_replace(binomial, "Presbytis obscurus", "Trachypithecus obscurus")) %>%
mutate(binomial = str_replace(binomial, "Presbytis phayrei", "Trachypithecus phayrei")) %>%
mutate(binomial = str_replace(binomial, "Presbytis pileata", "Trachypithecus pileatus")) %>%
mutate(binomial = str_replace(binomial, "Presbytis pileatus", "Trachypithecus pileatus")) %>%
mutate(binomial = str_replace(binomial, "Presbytis rubicundus", "Presbytis rubicunda")) %>%
mutate(binomial = str_replace(binomial, "Presbytis senex", "Trachypithecus vetulus")) %>%
mutate(binomial = str_replace(binomial, "Prionailurus rubiginosa", "Prionailurus rubiginosus")) %>%
mutate(binomial = str_replace(binomial, "Procavia habessinica", "Procavia capensis")) %>%
mutate(binomial = str_replace(binomial, "Procolobus badius", "Piliocolobus badius")) %>%
mutate(binomial = str_replace(binomial, "Proechimys iheringi", "Trinomys iheringi")) %>%
mutate(binomial = str_replace(binomial, "Proechimys setosus", "Trinomys setosus")) %>%
mutate(binomial = str_replace(binomial, "Proechimys trinitatis", "Proechimys trinitatus")) %>%
mutate(binomial = str_replace(binomial, "Proteles cristatus", "Proteles cristata")) %>%
mutate(binomial = str_replace(binomial, "Pseudocheirus archeri", "Pseudochirops archeri")) %>%
mutate(binomial = str_replace(binomial, "Pseudocheirus canescens", "Pseudochirulus canescens")) %>%
mutate(binomial = str_replace(binomial, "Pseudocheirus caroli", "Pseudochirulus caroli")) %>%
mutate(binomial = str_replace(binomial, "Pseudocheirus corinnae", "Pseudochirops corinnae")) %>%
mutate(binomial = str_replace(binomial, "Pseudocheirus forbesi", "Pseudochirulus forbesi")) %>%
mutate(binomial = str_replace(binomial, "Pseudocheirus herbertensis", "Pseudochirulus herbertensis")) %>%
mutate(binomial = str_replace(binomial, "Pseudocheirus mayeri", "Pseudochirulus mayeri")) %>%
mutate(binomial = str_replace(binomial, "Pseudomys forresti", "Leggadina forresti")) %>%
mutate(binomial = str_replace(binomial, "Pteronotus fuliginosa", "Pteronotus quadridens")) %>%
mutate(binomial = str_replace(binomial, "Pumarra concolor", "Puma concolor")) %>%
mutate(binomial = str_replace(binomial, "Pygathrix roxellana", "Rhinopithecus roxellana")) %>%
mutate(binomial = str_replace(binomial, "Paradoxurus hamiltonii", "Nandinia binotata")) %>%
mutate(binomial = str_replace(binomial, "Paradoxurus nipalensis", "Paguma larvata")) %>%
mutate(binomial = str_replace(binomial, "Paragalago granti", "Galago granti")) %>%
mutate(binomial = str_replace(binomial, "Paragalago orinus", "Galago orinus")) %>%
mutate(binomial = str_replace(binomial, "Paragalago zanzibaricus", "Galago zanzibaricus")) %>%
mutate(binomial = str_replace(binomial, "Paratriaenops furculus", "Triaenops furculus")) %>%
mutate(binomial = str_replace(binomial, "Paraxerus flavivittis", "Paraxerus flavovittis")) %>%
mutate(binomial = str_replace(binomial, "Pelomys harringtoni", "Desmomys harringtoni")) %>%
mutate(binomial = str_replace(binomial, "Perameles fusciventer", "Isoodon obesulus")) %>%
mutate(binomial = str_replace(binomial, "Peroryctes longicauda", "Microperoryctes longicauda")) %>%
mutate(binomial = str_replace(binomial, "Petaurus taguanoides", "Petauroides volans")) %>%
mutate(binomial = str_replace(binomial, "Phascogale affinis", "Antechinus minimus")) %>%
mutate(binomial = str_replace(binomial, "Phascogale rufogaster", "Antechinus flavipes")) %>%
mutate(binomial = str_replace(binomial, "Pholidotus longicaudatus", "Manis tetradactyla")) %>%
mutate(binomial = str_replace(binomial, "Phyllomys blainvilii", "Phyllomys blainvillii")) %>%
mutate(binomial = str_replace(binomial, "Pipistrellus brunneus", "Neoromicia brunneus")) %>%
mutate(binomial = str_replace(binomial, "Pipistrellus capensis", "Neoromicia capensis")) %>%
mutate(binomial = str_replace(binomial, "Pipistrellus grandidieri", "Neoromicia capensis")) %>%
mutate(binomial = str_replace(binomial, "Pipistrellus regulus", "Vespadelus regulus")) %>%
mutate(binomial = str_replace(binomial, "Pipistrellus rendalli", "Neoromicia rendalli")) %>%
mutate(binomial = str_replace(binomial, "Pipistrellus somalicus", "Neoromicia somalicus")) %>%
mutate(binomial = str_replace(binomial, "Pithecus belliger", "Trachypithecus shortridgei")) %>%
mutate(binomial = str_replace(binomial, "Pithecus potenziani", "Presbytis potenziani")) %>%
mutate(binomial = str_replace(binomial, "Plecotus christiei", "Plecotus austriacus")) %>%
mutate(binomial = str_replace(binomial, "Plecturocebus brunneus", "Callicebus brunneus")) %>%
mutate(binomial = str_replace(binomial, "Plecturocebus caligatus", "Callicebus caligatus")) %>%
mutate(binomial = str_replace(binomial, "Plecturocebus cupreus", "Callicebus cupreus")) %>%
mutate(binomial = str_replace(binomial, "Plecturocebus discolor", "Callicebus discolor")) %>%
mutate(binomial = str_replace(binomial, "Plecturocebus donacophilus", "Callicebus donacophilus")) %>%
mutate(binomial = str_replace(binomial, "Plecturocebus hoffmannsi", "Callicebus hoffmannsi")) %>%
mutate(binomial = str_replace(binomial, "Plecturocebus moloch", "Callicebus moloch")) %>%
mutate(binomial = str_replace(binomial, "Plecturocebus oenanthe", "Callicebus oenanthe")) %>%
mutate(binomial = str_replace(binomial, "Plecturocebus ornatus", "Callicebus ornatus")) %>%
mutate(binomial = str_replace(binomial, "Plecturocebus pallescens", "Callicebus pallescens")) %>%
mutate(binomial = str_replace(binomial, "Plecturocebus toppini", "Callicebus cupreus")) %>%
mutate(binomial = str_replace(binomial, "Pogonomys forbesi", "Chiruromys forbesi")) %>%
mutate(binomial = str_replace(binomial, "Praomys fumatus", "Mastomys natalensis")) %>%
mutate(binomial = str_replace(binomial, "Presbytis obscura", "Trachypithecus obscurus")) %>%
mutate(binomial = str_replace(binomial, "Presbytis sumatrana", "Presbytis melalophos")) %>%
mutate(binomial = str_replace(binomial, "Presbytis vetulus", "Trachypithecus vetulus")) %>%
mutate(binomial = str_replace(binomial, "Prionodon pardicotor", "Prionodon pardicolor")) %>%
mutate(binomial = str_replace(binomial, "Procavia crawshayi", "Dendrohyrax arboreus")) %>%
mutate(binomial = str_replace(binomial, "Procavia pumila", "Heterohyrax brucei")) %>%
mutate(binomial = str_replace(binomial, "Procavia ruwenzorii", "Dendrohyrax arboreus")) %>%
mutate(binomial = str_replace(binomial, "Procavia syriaca", "Procavia syriacus")) %>%
mutate(binomial = str_replace(binomial, "Przewalskium albirostre", "Przewalskium albirostris")) %>%
mutate(binomial = str_replace(binomial, "Pseudalopex azarica", "Lycalopex gymnocercus")) %>%
mutate(binomial = str_replace(binomial, "Pseudalopex inca", "Lycalopex culpaeus")) %>%
mutate(binomial = str_replace(binomial, "Pseudalopex zorrula", "Lycalopex gymnocercus")) %>%
mutate(binomial = str_replace(binomial, "Pseudocheirus cupreus", "Pseudochirops cupreus")) %>%
mutate(binomial = str_replace(binomial, "Pseudocheirus dahli", "Petropseudes dahli")) %>%
mutate(binomial = str_replace(binomial, "Pseudochirus corinnae", "Pseudochirops corinnae")) %>%
mutate(binomial = str_replace(binomial, "Pseudochirus laniginosus", "Pseudocheirus peregrinus")) %>%
mutate(binomial = str_replace(binomial, "Pteropus pelagicus", "Pteropus insularis")) %>%
mutate(binomial = str_replace(binomial, "Putorius arcticus", "Mustela erminea")) %>%
mutate(binomial = str_replace(binomial, "Putorius ermineus", "Mustela erminea")) %>%
mutate(binomial = str_replace(binomial, "Putorius hibernicus", "Mustela erminea")) %>%
mutate(binomial = str_replace(binomial, "Putorius nivalis", "Mustela nivalis")) %>%
mutate(binomial = str_replace(binomial, "Putorius sibericus", "Mustela sibirica")) %>%
mutate(binomial = str_replace(binomial, "Putorius tibetanus", "Mustela eversmanii")) %>%

# R
mutate(binomial = str_replace(binomial, "Rattus adspersus", "Bunomys andrewsi")) %>%
mutate(binomial = str_replace(binomial, "Rattus andersoni", "Niviventer andersoni")) %>%
mutate(binomial = str_replace(binomial, "Rattus andrewsi", "Bunomys andrewsi")) %>%
mutate(binomial = str_replace(binomial, "Rattus bagobus", "Bullimus bagobus")) %>%
mutate(binomial = str_replace(binomial, "Rattus brahma", "Niviventer brahma")) %>%
mutate(binomial = str_replace(binomial, "Rattus bukit", "Niviventer fulvescens")) %>%
mutate(binomial = str_replace(binomial, "Rattus chrysocomus", "Bunomys chrysocomus")) %>%
mutate(binomial = str_replace(binomial, "Rattus coelestis", "Bunomys coelestis")) %>%
mutate(binomial = str_replace(binomial, "Rattus coxingi", "Niviventer coninga")) %>%
mutate(binomial = str_replace(binomial, "Rattus cremoriventer", "Niviventer cremoriventer")) %>%
mutate(binomial = str_replace(binomial, "Rattus daltoni", "Praomys daltoni")) %>%
mutate(binomial = str_replace(binomial, "Rattus diardi", "Rattus tanezumi")) %>%
mutate(binomial = str_replace(binomial, "Rattus dominator", "Paruromys dominator")) %>%
mutate(binomial = str_replace(binomial, "Rattus edwardsi", "Leopoldamys edwardsi")) %>%
mutate(binomial = str_replace(binomial, "Rattus eha", "Niviventer eha")) %>%
mutate(binomial = str_replace(binomial, "Rattus excelsior", "Niviventer excelsior")) %>%
mutate(binomial = str_replace(binomial, "Rattus fulvescens", "Niviventer fulvescens")) %>%
mutate(binomial = str_replace(binomial, "Rattus fumatus", "Mastomys natalensis")) %>%
mutate(binomial = str_replace(binomial, "Rattus hinpoon", "Niviventer hinpoon")) %>%
mutate(binomial = str_replace(binomial, "Rattus huang", "Niviventer fulvescens")) %>%
mutate(binomial = str_replace(binomial, "Rattus hylomyoides", "Maxomys hylomyoides")) %>%
mutate(binomial = str_replace(binomial, "Rattus langbianus", "Niviventer langbianis")) %>%
mutate(binomial = str_replace(binomial, "Rattus lepturus", "Niviventer lepturus")) %>%
mutate(binomial = str_replace(binomial, "Rattus muelleri", "Sundamys muelleri")) %>%
mutate(binomial = str_replace(binomial, "Rattus natalensis", "Mastomys natalensis")) %>%
mutate(binomial = str_replace(binomial, "Rattus niviventer", "Niviventer niviventer")) %>%
mutate(binomial = str_replace(binomial, "Rattus panglima", "Maxomys panglima")) %>%
mutate(binomial = str_replace(binomial, "Rattus penitus", "Bunomys penitus")) %>%
mutate(binomial = str_replace(binomial, "Rattus rabori", "Bullimus bagobus")) %>%
mutate(binomial = str_replace(binomial, "Rattus rajah", "Maxomys rajah")) %>%
mutate(binomial = str_replace(binomial, "Rattus rapit", "Niviventer rapit")) %>%
mutate(binomial = str_replace(binomial, "Rattus sabanus", "Leopoldamys sabanus")) %>%
mutate(binomial = str_replace(binomial, "Rattus surifer", "Maxomys surifer")) %>%
mutate(binomial = str_replace(binomial, "Rattus whiteheadi", "Maxomys whiteheadi")) %>%
mutate(binomial = str_replace(binomial, "Reithrodontomys humilis", "Reithrodontomys humulis")) %>%
mutate(binomial = str_replace(binomial, "Rhinolophus hildebrandti", "Rhinolophus hildebrandtii")) %>%
mutate(binomial = str_replace(binomial, "Rhinolophus hildebrandtiii", "Rhinolophus hildebrandtii")) %>%
mutate(binomial = str_replace(binomial, "Rhinolophus pearsoni", "Rhinolophus pearsonii")) %>%
mutate(binomial = str_replace(binomial, "Rhinolophus pearsoniii", "Rhinolophus pearsonii")) %>%
mutate(binomial = str_replace(binomial, "Rhinolophus rouxi", "Rhinolophus rouxii")) %>%
mutate(binomial = str_replace(binomial, "Rhinolophus rouxiii", "Rhinolophus rouxii")) %>%
mutate(binomial = str_replace(binomial, "Rhinopoma hardwickei", "Rhinopoma hardwickii")) %>%
mutate(binomial = str_replace(binomial, "Rhinopoma hardwickeiii", "Rhinopoma hardwickii")) %>%
mutate(binomial = str_replace(binomial, "Rhipidomys qundianus", "Rhipidomys latimanus")) %>%
mutate(binomial = str_replace(binomial, "Rattus coelestis", "Bunomys coelestis")) %>%
mutate(binomial = str_replace(binomial, "Rattus coucha", "Mastomys coucha")) %>%
mutate(binomial = str_replace(binomial, "Rattus panglima", "Maxomys panglima")) %>%
mutate(binomial = str_replace(binomial, "Rhipidomys qundianus", "Rhipidomys latimanus")) %>%
  
# S
mutate(binomial = str_replace(binomial, "Saimiri oerstedi", "Saimiri oerstedii")) %>%
mutate(binomial = str_replace(binomial, "Saimiri oerstediii", "Saimiri oerstedii")) %>%
mutate(binomial = str_replace(binomial, "Sarcophilus laniarius", "Sarcophilus harrisii")) %>%
mutate(binomial = str_replace(binomial, "Scapteromys tomentosus", "Kunsia tomentosus")) %>%
mutate(binomial = str_replace(binomial, "Sciurus hudsonius", "Tamiasciurus hudsonicus")) %>%
mutate(binomial = str_replace(binomial, "Sciurus nigrivittatus", "Callosciurus nigrovittatus")) %>%
mutate(binomial = str_replace(binomial, "Sciurus notatus", "Callosciurus notatus")) %>%
mutate(binomial = str_replace(binomial, "Semnopithecus fulvogriseus", "Trachypithecus vetulus")) %>%
mutate(binomial = str_replace(binomial, "Semnopithecus johnii", "Trachypithecus johnii")) %>%
mutate(binomial = str_replace(binomial, "Semnopithecus maurus", "Trachypithecus auratus")) %>%
mutate(binomial = str_replace(binomial, "Semnopithecus vetulus", "Trachypithecus vetulus")) %>%
mutate(binomial = str_replace(binomial, "Sigmoceros lichtensteinii", "Alcelaphus lichtensteinii")) %>%
mutate(binomial = str_replace(binomial, "Sminthopsis laniger", "Antechinomys laniger")) %>%
mutate(binomial = str_replace(binomial, "Sommeromys macrorhinus", "Sommeromys macrorhinos")) %>%
mutate(binomial = str_replace(binomial, "Sooretamys angouya", "Oryzomys angouya")) %>%
mutate(binomial = str_replace(binomial, "Sorex hydrodromus", "Sorex pribilofensis")) %>%
mutate(binomial = str_replace(binomial, "Soricomys musseri", "Archboldomys musseri")) %>%
mutate(binomial = str_replace(binomial, "Soriculus caudatus", "Episoriculus caudatus")) %>%
mutate(binomial = str_replace(binomial, "Soriculus hypsibius", "Chodsigoa hypsibia")) %>%
mutate(binomial = str_replace(binomial, "Soriculus irene", "Episoriculus macrourus")) %>%
mutate(binomial = str_replace(binomial, "Soriculus lamula", "Chodsigoa lamula")) %>%
mutate(binomial = str_replace(binomial, "Soriculus leucops", "Episoriculus leucops")) %>%
mutate(binomial = str_replace(binomial, "Soriculus macrourus", "Episoriculus macrourus")) %>%
mutate(binomial = str_replace(binomial, "Soriculus parca", "Chodsigoa parca")) %>%
mutate(binomial = str_replace(binomial, "Soriculus sacratus", "Episoriculus caudatus")) %>%
mutate(binomial = str_replace(binomial, "Soriculus salenskii", "Chodsigoa salenskii")) %>%
mutate(binomial = str_replace(binomial, "Soriculus smithii", "Chodsigoa smithii")) %>%
mutate(binomial = str_replace(binomial, "Spalax microphtalmus", "Spalax microphthalmus")) %>%
mutate(binomial = str_replace(binomial, "Spermophilus leucurus", "Ammospermophilus leucurus")) %>%
mutate(binomial = str_replace(binomial, "Spermophilus lineatus", "Spermophilus tridecemlineatus")) %>%
mutate(binomial = str_replace(binomial, "Stenomys niobe", "Rattus niobe")) %>%
mutate(binomial = str_replace(binomial, "Stenomys richardsoni", "Rattus richardsoni")) %>%
mutate(binomial = str_replace(binomial, "Stenomys verecundus", "Rattus verecundus")) %>%
mutate(binomial = str_replace(binomial, "Strigocuscus gymnotis", "Phalanger gymnotis")) %>%
mutate(binomial = str_replace(binomial, "Strigocuscus pelegensis", "Strigocuscus pelengensis")) %>%
mutate(binomial = str_replace(binomial, "Suncus luzoniensis", "Suncus murinus")) %>%
mutate(binomial = str_replace(binomial, "Suncus occultidens", "Suncus murinus")) %>%
mutate(binomial = str_replace(binomial, "Sylvilagus californicus", "Lepus californicus")) %>%
mutate(binomial = str_replace(binomial, "Sylvilagus townsendii", "Lepus townsendii")) %>%
mutate(binomial = str_replace(binomial, "Sylvisorex megalura", "Suncus megalura")) %>%
mutate(binomial = str_replace(binomial, "Santamartamys rufodorsalis", "Diplomys rufodorsalis")) %>%
mutate(binomial = str_replace(binomial, "Sapajus apella", "Cebus apella")) %>%
mutate(binomial = str_replace(binomial, "Sapajus cay", "Cebus libidinosus")) %>%
mutate(binomial = str_replace(binomial, "Sapajus libidinosus", "Cebus libidinosus")) %>%
mutate(binomial = str_replace(binomial, "Sapajus nigritus", "Cebus nigritus")) %>%
mutate(binomial = str_replace(binomial, "Sapajus robustus", "Cebus nigritus")) %>%
mutate(binomial = str_replace(binomial, "Sapajus xanthosternos", "Cebus xanthosternos")) %>%
mutate(binomial = str_replace(binomial, "Schoinobates volans", "Petauroides volans")) %>%
mutate(binomial = str_replace(binomial, "Sciurocheirus alleni", "Galago alleni")) %>%
mutate(binomial = str_replace(binomial, "Sciurocheirus gabonensis", "Galago gabonensis")) %>%
mutate(binomial = str_replace(binomial, "Sciurus pygerythrus", "Callosciurus pygerythrus")) %>%
mutate(binomial = str_replace(binomial, "Semnopithecus natunae", "Presbytis natunae")) %>%
mutate(binomial = str_replace(binomial, "Sorex caeruleus", "Suncus murinus")) %>%
mutate(binomial = str_replace(binomial, "Sorex griffithi", "Suncus murinus")) %>%
mutate(binomial = str_replace(binomial, "Sorex nemorivagus", "Suncus murinus")) %>%
mutate(binomial = str_replace(binomial, "Sorex saturatior", "Suncus murinus")) %>%
mutate(binomial = str_replace(binomial, "Sorex sikimensis", "Soriculus nigrescens")) %>%
mutate(binomial = str_replace(binomial, "Suncus palawanensis", "Crocidura palawanensis")) %>%
mutate(binomial = str_replace(binomial, "Sylvisorex gemmeus", "Suncus megalura")) %>%
mutate(binomial = str_replace(binomial, "Sciurus macclellandi", "Tamiops mcclellandii")) %>%

# T
mutate(binomial = str_replace(binomial, "Tamiops macclellandi", "Tamiops mcclellandii")) %>%
mutate(binomial = str_replace(binomial, "Tamiops rodolphei", "Tamiops rodolphii")) %>%
mutate(binomial = str_replace(binomial, "Tapirella bairdii", "Tapirus bairdii")) %>%
mutate(binomial = str_replace(binomial, "Tatera afra", "Gerbilliscus afra")) %>%
mutate(binomial = str_replace(binomial, "Tatera boehmi", "Gerbilliscus boehmi")) %>%
mutate(binomial = str_replace(binomial, "Tatera brantsi", "Gerbilliscus brantsii")) %>%
mutate(binomial = str_replace(binomial, "Tatera brantsii", "Gerbilliscus brantsii")) %>%
mutate(binomial = str_replace(binomial, "Tatera gambiana", "Gerbilliscus kempi")) %>%
mutate(binomial = str_replace(binomial, "Tatera guineae", "Gerbilliscus guineae")) %>%
mutate(binomial = str_replace(binomial, "Tatera hopkinsoni", "Gerbilliscus kempi")) %>%
mutate(binomial = str_replace(binomial, "Tatera kempi", "Gerbilliscus kempi")) %>%
mutate(binomial = str_replace(binomial, "Tatera leucogaster", "Gerbilliscus leucogaster")) %>%
mutate(binomial = str_replace(binomial, "Tatera minuscula", "Gerbilliscus phillipsi")) %>%
mutate(binomial = str_replace(binomial, "Tatera nigricauda", "Gerbilliscus nigricaudus")) %>%
mutate(binomial = str_replace(binomial, "Tatera nigrita", "Gerbilliscus kempi")) %>%
mutate(binomial = str_replace(binomial, "Tatera robusta", "Gerbilliscus robustus")) %>%
mutate(binomial = str_replace(binomial, "Tatera valida", "Gerbilliscus validus")) %>%
mutate(binomial = str_replace(binomial, "Tatera welmanni", "Gerbilliscus kempi")) %>%
mutate(binomial = str_replace(binomial, "Taurotragus eurycerus", "Tragelaphus eurycerus")) %>%
mutate(binomial = str_replace(binomial, "Tayassu tajacu", "Pecari tajacu")) %>%
mutate(binomial = str_replace(binomial, "Thamnomys rutilans", "Grammomys poensis")) %>%
mutate(binomial = str_replace(binomial, "Thomasomys ischyurus", "Thomasomys ischyrus")) %>%
mutate(binomial = str_replace(binomial, "Thomasomys macconnelli", "Rhipidomys macconnelli")) %>%
mutate(binomial = str_replace(binomial, "Thomomys atrovarius", "Thomomys umbrinus")) %>%
mutate(binomial = str_replace(binomial, "Thomomys aureus", "Thomomys bottae")) %>%
mutate(binomial = str_replace(binomial, "Thomomys sheldoni", "Thomomys umbrinus")) %>%
mutate(binomial = str_replace(binomial, "Thrichomys laurentius", "Thrichomys apereoides")) %>%
mutate(binomial = str_replace(binomial, "Toromys grandis", "Makalata grandis")) %>%
mutate(binomial = str_replace(binomial, "Toromys rhipidurus", "Makalata rhipidura")) %>%
mutate(binomial = str_replace(binomial, "Tragelaphus angasi", "Tragelaphus angasii")) %>%
mutate(binomial = str_replace(binomial, "Tragelaphus angasiii", "Tragelaphus angasii")) %>%
mutate(binomial = str_replace(binomial, "Tragelaphus livingstonei", "Taurotragus oryx")) %>%
mutate(binomial = str_replace(binomial, "Tragelaphus oryx", "Taurotragus oryx")) %>%
mutate(binomial = str_replace(binomial, "Tragulus meminna", "Moschiola meminna")) %>%
mutate(binomial = str_replace(binomial, "Transandinomys bolivaris", "Oryzomys bolivaris")) %>%
mutate(binomial = str_replace(binomial, "Transandinomys talamancae", "Oryzomys talamancae")) %>%
mutate(binomial = str_replace(binomial, "Tupaia everetti", "Urogale everetti")) %>%
mutate(binomial = str_replace(binomial, "Tadarida brachyptera", "Mops brachypterus")) %>%
mutate(binomial = str_replace(binomial, "Tadarida braziliensis", "Tadarida brasiliensis")) %>%
mutate(binomial = str_replace(binomial, "Tadarida laticaudata", "Nyctinomops laticaudatus")) %>%
mutate(binomial = str_replace(binomial, "Tadarida limbatus", "Chaerephon pumilus")) %>%
mutate(binomial = str_replace(binomial, "Tadarida plicatus", "Chaerephon plicatus")) %>%
mutate(binomial = str_replace(binomial, "Talpa leptura", "Scaptochirus leptura")) %>%
mutate(binomial = str_replace(binomial, "Talpa macrura", "Condylura cristata")) %>%
mutate(binomial = str_replace(binomial, "Taphozous longmanus", "Taphozous longimanus")) %>%
mutate(binomial = str_replace(binomial, "Taprirus leucogenys", "Tapirus pinchaque")) %>%
mutate(binomial = str_replace(binomial, "Thamnomys cometes", "Grammomys cometes")) %>%
mutate(binomial = str_replace(binomial, "Thamnomys dolichurus", "Grammomys dolichurus")) %>%
mutate(binomial = str_replace(binomial, "Trachypithecus crepusculus", "Trachypithecus phayrei")) %>%
mutate(binomial = str_replace(binomial, "Tupaia frenata", "Dendrogale murina")) %>%
mutate(binomial = str_replace(binomial, "Troglodytes aubryi", "Pan troglodytes")) %>%

# U
mutate(binomial = str_replace(binomial, "Urocitellus armatus", "Spermophilus armatus")) %>%
mutate(binomial = str_replace(binomial, "Urocitellus beldingi", "Spermophilus beldingi")) %>%
mutate(binomial = str_replace(binomial, "Urocitellus brunneus", "Spermophilus brunneus")) %>%
mutate(binomial = str_replace(binomial, "Urocitellus canus", "Spermophilus canus")) %>%
mutate(binomial = str_replace(binomial, "Urocitellus columbianus", "Spermophilus columbianus")) %>%
mutate(binomial = str_replace(binomial, "Urocitellus elegans", "Spermophilus elegans")) %>%
mutate(binomial = str_replace(binomial, "Urocitellus mollis", "Spermophilus mollis")) %>%
mutate(binomial = str_replace(binomial, "Urocitellus parryii", "Spermophilus parryii")) %>%
mutate(binomial = str_replace(binomial, "Urocitellus richardsonii", "Spermophilus richardsonii")) %>%
mutate(binomial = str_replace(binomial, "Urocitellus townsendii", "Spermophilus townsendii")) %>%
mutate(binomial = str_replace(binomial, "Urocitellus undulatus", "Spermophilus undulatus")) %>%
mutate(binomial = str_replace(binomial, "Urocitellus washingtoni", "Spermophilus washingtoni")) %>%
mutate(binomial = str_replace(binomial, "Uromys neobritanicus", "Uromys neobritannicus")) %>%
mutate(binomial = str_replace(binomial, "Ursus nasutus", "Ursus americanus")) %>%

# V
mutate(binomial = str_replace(binomial, "Vicugna vicugnarius", "Vicugna vicugna")) %>%
mutate(binomial = str_replace(binomial, "Viverra civetta", "Civettictis civetta")) %>%
mutate(binomial = str_replace(binomial, "Vulpes rueppelli", "Vulpes rueppellii")) %>%
mutate(binomial = str_replace(binomial, "Vampyressa sinchi", "Vampyressa melissa")) %>%
mutate(binomial = str_replace(binomial, "Vampyriscus bidens", "Vampyressa bidens")) %>%
mutate(binomial = str_replace(binomial, "Vampyriscus brocki", "Vampyressa brocki")) %>%
mutate(binomial = str_replace(binomial, "Vampyriscus nymphaea", "Vampyressa nymphaea")) %>%
mutate(binomial = str_replace(binomial, "Vespertilio blanfordii", "Myotis muricola")) %>%
mutate(binomial = str_replace(binomial, "Vespertilio cinnamomeus", "Nycticeinops cinnamomeus")) %>%
mutate(binomial = str_replace(binomial, "Vespertilio hilarii", "Eptesicus brasiliensis")) %>%
mutate(binomial = str_replace(binomial, "Vespertilio hypothrix", "Myotis nigricans")) %>%
mutate(binomial = str_replace(binomial, "Vicugna pacos", "Vicugna vicugna")) %>%
mutate(binomial = str_replace(binomial, "Viverricula malaccensis", "Viverricula indica")) %>%
mutate(binomial = str_replace(binomial, "Vulpes ruppelli", "Vulpes rueppellii")) %>%
  mutate(binomial = str_replace(binomial, "Vulpes rueppelliii", "Vulpes rueppellii")) %>%

# W
mutate(binomial = str_replace(binomial, "Wiedomys pyrrhorhinus", "Wiedomys pyrrhorhinos")) %>%

# X
mutate(binomial = str_replace(binomial, "Xerospermophilus mohavensis", "Spermophilus mohavensis")) %>%
mutate(binomial = str_replace(binomial, "Xerospermophilus perotensis", "Spermophilus perotensis")) %>%
mutate(binomial = str_replace(binomial, "Xerospermophilus spilosoma", "Spermophilus spilosoma")) %>%
mutate(binomial = str_replace(binomial, "Xerospermophilus tereticaudus", "Spermophilus tereticaudus")) %>%
mutate(binomial = str_replace(binomial, "Xerus euxerus", "Xerus erythropus")) %>%

# Z
mutate(binomial = str_replace(binomial, "Zapus hudsonicus", "Zapus hudsonius")) %>%
mutate(binomial = str_replace(binomial, "Zapus insignis", "Napaeozapus insignis")) %>%
mutate(binomial = str_replace(binomial, "Zorilla striata", "Ictonyx striatus")) %>%
mutate(binomial = str_replace(binomial, "Zygodontomys lasiurus", "Necromys lasiurus")) %>%
mutate(binomial = str_replace(binomial, "Zaedyas pichiy", "Zaedyus pichiy")) %>%



#---------------------------------------------------------------------------------------- 
# Species without mammal body size data. Double check taxonomy
#---------------------------------------------------------------------------------------- 

  mutate(binomial = str_replace(binomial, "Acomys selousi", "Acomys spinosissimus")) %>%
  mutate(binomial = str_replace(binomial, "Acrobates pulchellus", "Acrobates pygmaeus")) %>%
  mutate(binomial = str_replace(binomial, "Ailurops furvus", "Ailurops ursinus")) %>%
  mutate(binomial = str_replace(binomial, "Akodon caenosus", "Akodon lutescens")) %>%
  mutate(binomial = str_replace(binomial, "Akodon tolimae", "Akodon affinis")) %>%
  mutate(binomial = str_replace(binomial, "Alcelaphus cokei", "Alcelaphus buselaphus")) %>%
  mutate(binomial = str_replace(binomial, "Alcelaphus tora", "Alcelaphus buselaphus")) %>%
  mutate(binomial = str_replace(binomial, "Alces bedfordiae", "Alces americanus")) %>%
  mutate(binomial = str_replace(binomial, "Alouatta arctoidea", "Alouatta seniculus")) %>%
  mutate(binomial = str_replace(binomial, "Alouatta discolor", "Alouatta belzebul")) %>%
  mutate(binomial = str_replace(binomial, "Alouatta ululata", "Alouatta belzebul")) %>%
  mutate(binomial = str_replace(binomial, "Anoura peruana", "Anoura geoffroyi")) %>%
  mutate(binomial = str_replace(binomial, "Antechinus unicolor", "Antechinus stuartii")) %>%
  mutate(binomial = str_replace(binomial, "Antidorcas angolensis", "Antidorcas marsupialis")) %>%
  mutate(binomial = str_replace(binomial, "Aotus boliviensis", "Aotus azarae")) %>%
  mutate(binomial = str_replace(binomial, "Aotus brumbacki", "Aotus lemurinus")) %>%
  mutate(binomial = str_replace(binomial, "Aotus griseimembra", "Aotus lemurinus")) %>%
  mutate(binomial = str_replace(binomial, "Aotus rufipes", "Aotus vociferans")) %>%
  mutate(binomial = str_replace(binomial, "Aotus zonalis", "Aotus lemurinus")) %>%
  mutate(binomial = str_replace(binomial, "Arctictis gairdneri", "Arctictis binturong")) %>%
  mutate(binomial = str_replace(binomial, "Arctictis whitei", "Arctictis binturong")) %>%
  mutate(binomial = str_replace(binomial, "Arctonyx leucolaemus", "Arctonyx collaris")) %>%
  mutate(binomial = str_replace(binomial, "Arctonyx obscurus", "Arctonyx collaris")) %>%
  mutate(binomial = str_replace(binomial, "Artibeus grandis", "Artibeus jamaicensis")) %>%
  mutate(binomial = str_replace(binomial, "Artibeus planirostris", "Artibeus jamaicensis")) %>%
  mutate(binomial = str_replace(binomial, "Artibeus schwartzi", "Artibeus jamaicensis")) %>%
  mutate(binomial = str_replace(binomial, "Arvicanthis rumruti", "Arvicanthis nairobae")) %>%
  mutate(binomial = str_replace(binomial, "Arvicanthis somalicus", "Arvicanthis nairobae")) %>%
  mutate(binomial = str_replace(binomial, "Arvicanthis testicularis", "Arvicanthis niloticus")) %>%
  mutate(binomial = str_replace(binomial, "Asellia italosomalica", "Asellia tridens")) %>%
  mutate(binomial = str_replace(binomial, "Atelerix kilimanus", "Atelerix albiventris")) %>%
  mutate(binomial = str_replace(binomial, "Atelerix pruneri", "Atelerix albiventris")) %>%
  mutate(binomial = str_replace(binomial, "Atelerix spinifex", "Atelerix albiventris")) %>%
  mutate(binomial = str_replace(binomial, "Bdeogale tenuis", "Bdeogale crassicauda")) %>%
  mutate(binomial = str_replace(binomial, "Bettongia gouldii", "Bettongia penicillata")) %>%
  mutate(binomial = str_replace(binomial, "Bettongia setosa", "Bettongia gaimardi")) %>%
  mutate(binomial = str_replace(binomial, "Bos sondaicus", "Bos javanicus")) %>%
  mutate(binomial = str_replace(binomial, "Bradypus affinis", "Bradypus torquatus")) %>%
  mutate(binomial = str_replace(binomial, "Bradypus gorgon", "Bradypus variegatus")) %>%
  mutate(binomial = str_replace(binomial, "Bradypus macrodon", "Bradypus variegatus")) %>%
  mutate(binomial = str_replace(binomial, "Cacajao rubicundus", "Cacajao calvus")) %>%
  mutate(binomial = str_replace(binomial, "Caenolestes obscurus", "Caenolestes fuliginosus")) %>%
  mutate(binomial = str_replace(binomial, "Callicebus castaneoventris", "Callicebus caligatus")) %>%
  mutate(binomial = str_replace(binomial, "Callorhinus alascanus", "Callorhinus ursinus")) %>%
  mutate(binomial = str_replace(binomial, "Canis anthus", "Canis aureus")) %>%
  mutate(binomial = str_replace(binomial, "Canis chanco", "Canis lupus")) %>%
  mutate(binomial = str_replace(binomial, "Canis dingo", "Canis lupus")) %>%
  mutate(binomial = str_replace(binomial, "Canis indicus", "Canis aureus")) %>%
  mutate(binomial = str_replace(binomial, "Canis lanka", "Canis aureus")) %>%
  mutate(binomial = str_replace(binomial, "Canis lupaster", "Canis aureus")) %>%
  mutate(binomial = str_replace(binomial, "Canis niger", "Canis lupus")) %>%
  mutate(binomial = str_replace(binomial, "Capreolus bedfordi", "Capreolus pygargus")) %>%
  mutate(binomial = str_replace(binomial, "Capreolus coxi", "Capreolus capreolus")) %>%
  mutate(binomial = str_replace(binomial, "Capricornis osborni", "Capricornis milneedwardsii")) %>%
  mutate(binomial = str_replace(binomial, "Capricornis pryerianus", "Capricornis crispus")) %>%
  mutate(binomial = str_replace(binomial, "Cebus aequatorialis", "Cebus albifrons")) %>%
  mutate(binomial = str_replace(binomial, "Cebus brunneus", "Cebus olivaceus")) %>%
  mutate(binomial = str_replace(binomial, "Cebus cuscinus", "Cebus albifrons")) %>%
  mutate(binomial = str_replace(binomial, "Cebus leucocephalus", "Cebus albifrons")) %>%
  mutate(binomial = str_replace(binomial, "Cebus unicolor", "Cebus albifrons")) %>%
  mutate(binomial = str_replace(binomial, "Cebus versicolor", "Cebus albifrons")) %>%
  mutate(binomial = str_replace(binomial, "Cephalophus barbertoni", "Cephalophus weynsi")) %>%
  mutate(binomial = str_replace(binomial, "Cephalophus breviceps", "Cephalophus dorsalis")) %>%
  mutate(binomial = str_replace(binomial, "Cephalophus claudi", "Cephalophus nigrifrons")) %>%
  mutate(binomial = str_replace(binomial, "Cephalophus fosteri", "Cephalophus nigrifrons")) %>%
  mutate(binomial = str_replace(binomial, "Cephalophus johnstoni", "Cephalophus weynsi")) %>%
  mutate(binomial = str_replace(binomial, "Cephalophus melanoprymnus", "Cephalophus silvicultor")) %>%
  mutate(binomial = str_replace(binomial, "Cephalophus punctulatus", "Cephalophus silvicultor")) %>%
  mutate(binomial = str_replace(binomial, "Ceratotherium cottoni", "Ceratotherium simum")) %>%
  mutate(binomial = str_replace(binomial, "Cercopithecus buettikoferi", "Cercopithecus petaurista")) %>%
  mutate(binomial = str_replace(binomial, "Cercopithecus grayi", "Cercopithecus pogonius")) %>%
  mutate(binomial = str_replace(binomial, "Cercopithecus kolbi", "Cercopithecus albogularis")) %>%
  mutate(binomial = str_replace(binomial, "Cercopithecus leucampyx", "Cercopithecus mitis")) %>%
  mutate(binomial = str_replace(binomial, "Cercopithecus opisthostictus", "Cercopithecus mitis")) %>%
  mutate(binomial = str_replace(binomial, "Cercopithecus salongo", "Cercopithecus dryas")) %>%
  mutate(binomial = str_replace(binomial, "Cervus affinis", "Cervus elaphus")) %>%
  mutate(binomial = str_replace(binomial, "Cervus bactrianus", "Cervus elaphus")) %>%
  mutate(binomial = str_replace(binomial, "Cervus cashmeerianus", "Cervus elaphus")) %>%
  mutate(binomial = str_replace(binomial, "Cervus cashmirianus", "Cervus elaphus")) %>%
  mutate(binomial = str_replace(binomial, "Cervus casperianus", "Cervus elaphus")) %>%
  mutate(binomial = str_replace(binomial, "Cervus dybowskii", "Cervus nippon")) %>%
  mutate(binomial = str_replace(binomial, "Cervus euopis", "Cervus nippon")) %>%
  mutate(binomial = str_replace(binomial, "Cervus eustephanus", "Cervus elaphus")) %>%
  mutate(binomial = str_replace(binomial, "Cervus hortulorum", "Cervus nippon")) %>%
  mutate(binomial = str_replace(binomial, "Cervus macneilli", "Cervus elaphus")) %>%
  mutate(binomial = str_replace(binomial, "Cervus maral", "Cervus elaphus")) %>%
  mutate(binomial = str_replace(binomial, "Cervus tibetanus", "Cervus elaphus")) %>%
 
  mutate(binomial = str_replace(binomial, "Chaetodipus siccus", "Chaetodipus arenarius")) %>%
  mutate(binomial = str_replace(binomial, "Cheirogaleus thomasi", "Cheirogaleus adipicaudatus ")) %>%
  mutate(binomial = str_replace(binomial, "Chilonatalus macer", "Chilonatalus micropus")) %>%
  mutate(binomial = str_replace(binomial, "Chimarrogale varennei", "Chimarrogale himalayica")) %>%
  mutate(binomial = str_replace(binomial, "Chodsigoa larvarum", "Chodsigoa hypsibia")) %>%
  mutate(binomial = str_replace(binomial, "Chrysochloris capensis", "Chrysochloris asiatica")) %>%
  mutate(binomial = str_replace(binomial, "Chrysochloris damarensis", "Chrysochloris asiatica")) %>%
  mutate(binomial = str_replace(binomial, "Chrysochloris fosteri", "Chrysochloris stuhlmanni")) %>%
  mutate(binomial = str_replace(binomial, "Chrysochloris vermiculus", "Chrysochloris stuhlmanni")) %>%
  mutate(binomial = str_replace(binomial, "Coendou simonsi", "Coendou bicolor")) %>%
  mutate(binomial = str_replace(binomial, "Conepatus ajax", "Conepatus chinga")) %>%
  mutate(binomial = str_replace(binomial, "Conepatus calurus", "Conepatus chinga")) %>%
  mutate(binomial = str_replace(binomial, "Conepatus chorensis", "Conepatus chinga")) %>%
  mutate(binomial = str_replace(binomial, "Conepatus gibsoni", "Conepatus chinga")) %>%
  mutate(binomial = str_replace(binomial, "Conepatus porcinus", "Conepatus chinga")) %>%
  mutate(binomial = str_replace(binomial, "Conepatus proteus", "Conepatus humboldtii")) %>%
  mutate(binomial = str_replace(binomial, "Conepatus rex", "Conepatus chinga")) %>%
  mutate(binomial = str_replace(binomial, "Conepatus suffocans", "Conepatus chinga")) %>%
  mutate(binomial = str_replace(binomial, "Conepatus tropicalis", "Conepatus semistriatus")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura aequicauda", "Crocidura paradoxura")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura anchietae", "Crocidura olivieri")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura ansorgei", "Crocidura nigrofusca")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura arethusa", "Crocidura fulvastra")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura aridula", "Crocidura voi")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura balearica", "Crocidura suaveolens")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura beirae", "Crocidura hirta")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura beta", "Crocidura fulvastra")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura bicolor", "Crocidura fuscomurina")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura boydi", "Crocidura parvipes")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura butleri", "Crocidura voi")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura cassiteridum", "Crocidura suaveolens")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura coreae", "Crocidura shantungensis")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura cuninghamei", "Crocidura fuscomurina")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura darfurea", "Crocidura olivieri")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura deserti", "Crocidura hirta")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura doriana", "Crocidura olivieri")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura dracula", "Crocidura fuliginosa")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura giffardi", "Crocidura olivieri")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura gravida", "Crocidura malayana")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura hindei", "Crocidura viaria")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura ibeana", "Crocidura hildegardeae")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura ilensis", "Crocidura gmelini")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura ingoldbyi", "Crocidura crossei")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura klossi", "Crocidura malayana")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura manni", "Crocidura olivieri")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura maporensis", "Crocidura negligens")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura marita", "Crocidura fuscomurina")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura neavei", "Crocidura mariquensis")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura occidentalis", "Crocidura olivieri")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura percivali", "Crocidura voi")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura praedax", "Crocidura fuliginosa")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura rudolfi", "Crocidura nanilla")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura schweitzeri", "Crocidura poensis")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura shortridgei", "Crocidura mariquensis")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura sylvia", "Crocidura mariquensis")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura tephra", "Crocidura foxi")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura thomasi", "Crocidura lasiura")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura tionis", "Crocidura negligens")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura velutina", "Crocidura hirta")) %>%
  mutate(binomial = str_replace(binomial, "Crocidura zena", "Crocidura nigrofusca")) %>%
  mutate(binomial = str_replace(binomial, "Crocuta rufopicta", "Crocuta crocuta")) %>%
  mutate(binomial = str_replace(binomial, "Crocuta thomasi", "Crocuta crocuta")) %>%
  mutate(binomial = str_replace(binomial, "Cryptotis olivaceus", "Cryptotis orophila")) %>%
  mutate(binomial = str_replace(binomial, "Cuon javanicus", "Cuon alpinus")) %>%
  mutate(binomial = str_replace(binomial, "Cynictis bradfieldi", "Cynictis penicillata")) %>%
  mutate(binomial = str_replace(binomial, "Cynogale lowei", "Cynogale bennettii")) %>%
  mutate(binomial = str_replace(binomial, "Cynomops milleri", "Cynomops paranus")) %>%
  mutate(binomial = str_replace(binomial, "Cynopterus montanoi", "Cynopterus brachyotis")) %>%
  mutate(binomial = str_replace(binomial, "Dactylopsila melampus", "Dactylopsila trivirgata")) %>%
  mutate(binomial = str_replace(binomial, "Dactylopsila picata", "Dactylopsila trivirgata")) %>%
  mutate(binomial = str_replace(binomial, "Damaliscus corrigum", "Damaliscus korrigum")) %>%
  mutate(binomial = str_replace(binomial, "Dendrohyrax adersi", "Dendrohyrax arboreus")) %>%
  mutate(binomial = str_replace(binomial, "Dendrohyrax crawshayi", "Dendrohyrax arboreus")) %>%
  mutate(binomial = str_replace(binomial, "Dendrohyrax emini", "Dendrohyrax dorsalis")) %>%
  mutate(binomial = str_replace(binomial, "Dendrolagus maximus", "Dendrolagus inustus")) %>%
  mutate(binomial = str_replace(binomial, "Dephomys eburneaee", "Dephomys eburneae")) %>%
  mutate(binomial = str_replace(binomial, "Didelphis californica", "Didelphis virginiana")) %>%
  mutate(binomial = str_replace(binomial, "Diphylla centralis", "Diphylla ecaudata")) %>%
  mutate(binomial = str_replace(binomial, "Dipodomys ornatus", "Dipodomys phillipsii")) %>%
  mutate(binomial = str_replace(binomial, "Elaphodus ichangensis", "Elaphodus cephalophus")) %>%
  mutate(binomial = str_replace(binomial, "Elaphodus michianus", "Elaphodus cephalophus")) %>%
  mutate(binomial = str_replace(binomial, "Elephantulus dundasi", "Elephantulus rufescens")) %>%
  mutate(binomial = str_replace(binomial, "Eligmodontia hirtipes", "Eligmodontia puerulus")) %>%
  mutate(binomial = str_replace(binomial, "Emballonura discolor", "Emballonura alecto")) %>%
  mutate(binomial = str_replace(binomial, "Eptesicus anatolicus", "Eptesicus bottae")) %>%
  mutate(binomial = str_replace(binomial, "Eptesicus dorianus", "Dendrolagus dorianus")) %>%
  mutate(binomial = str_replace(binomial, "Equus africanus", "Equus asinus")) %>%
  mutate(binomial = str_replace(binomial, "Equus hartmannae", "Equus zebra")) %>%
  mutate(binomial = str_replace(binomial, "Equus przewalskii", "Equus caballus")) %>%
  mutate(binomial = str_replace(binomial, "Erinaceus dealbatus", "Erinaceus amurensis")) %>%
  mutate(binomial = str_replace(binomial, "Erinaceus hanensis", "Erinaceus amurensis")) %>%
  mutate(binomial = str_replace(binomial, "Erinaceus kreyenbergi", "Erinaceus amurensis")) %>%
  mutate(binomial = str_replace(binomial, "Erinaceus nesiotes", "Erinaceus roumanicus")) %>%
  mutate(binomial = str_replace(binomial, "Erinaceus tschifuensis", "Erinaceus amurensis")) %>%
  mutate(binomial = str_replace(binomial, "Eulemur flavifrons", "Eulemur macaco")) %>%
  mutate(binomial = str_replace(binomial, "Eumops delticus", "Eumops bonariensis")) %>%
  mutate(binomial = str_replace(binomial, "Eumops floridanus", "Eumops glaucinus")) %>%
  mutate(binomial = str_replace(binomial, "Eumops nanus", "Eumops bonariensis")) %>%
  mutate(binomial = str_replace(binomial, "Felis affinis", "Felis chaus")) %>%
  mutate(binomial = str_replace(binomial, "Felis grampia", "Felis silvestris")) %>%
  mutate(binomial = str_replace(binomial, "Felis ocreata", "Felis silvestris")) %>%
  mutate(binomial = str_replace(binomial, "Felis ornata", "Felis silvestris")) %>%
  mutate(binomial = str_replace(binomial, "Felis prateri", "Felis chaus")) %>%
  mutate(binomial = str_replace(binomial, "Felis pulchella", "Felis catus")) %>%
  mutate(binomial = str_replace(binomial, "Felis sylvestris", "Felis silvestris")) %>%
  mutate(binomial = str_replace(binomial, "Furipterus coerulescens", "Furipterus horrens")) %>%
  mutate(binomial = str_replace(binomial, "Galago braccatus", "Galago senegalensis")) %>%
  mutate(binomial = str_replace(binomial, "Galago dunni", "Galago senegalensis")) %>%
  mutate(binomial = str_replace(binomial, "Galictis allamandi", "Galictis vittata")) %>%
  mutate(binomial = str_replace(binomial, "Galidictis eximius", "Galidictis fasciata")) %>%
  mutate(binomial = str_replace(binomial, "Galidictis vittata", "Galictis vittata")) %>%
  mutate(binomial = str_replace(binomial, "Gazella littoralis", "Gazella dorcas")) %>%
  mutate(binomial = str_replace(binomial, "Gazella loderi", "Gazella leptoceros")) %>%
  mutate(binomial = str_replace(binomial, "Gazella marica", "Gazella subgutturosa")) %>%
  mutate(binomial = str_replace(binomial, "Gazella muscatensis", "Gazella gazella")) %>%
  mutate(binomial = str_replace(binomial, "Genetta bettoni", "Genetta servalina")) %>%
  mutate(binomial = str_replace(binomial, "Genetta bini", "Genetta cristata")) %>%
  mutate(binomial = str_replace(binomial, "Genetta grantii", "Genetta genetta")) %>%
  mutate(binomial = str_replace(binomial, "Genetta letabae", "Genetta maculata")) %>%
  mutate(binomial = str_replace(binomial, "Genetta ludia", "Genetta genetta")) %>%
  mutate(binomial = str_replace(binomial, "Geomys jugossicularis", "Geomys bursarius")) %>%
  mutate(binomial = str_replace(binomial, "Geomys lutescens", "Geomys bursarius")) %>%
  mutate(binomial = str_replace(binomial, "Gerbillus vallinus", "Gerbillurus vallinus")) %>%
  mutate(binomial = str_replace(binomial, "Giraffa giraffa", "Giraffa camelopardalis")) %>%
  mutate(binomial = str_replace(binomial, "Giraffa reticulata", "Giraffa camelopardalis")) %>%
  mutate(binomial = str_replace(binomial, "Giraffa tippelskirchi", "Giraffa camelopardalis")) %>%
  mutate(binomial = str_replace(binomial, "Gorilla graueri", "Gorilla beringei")) %>%
  mutate(binomial = str_replace(binomial, "Heliophobius spalax", "Heliophobius argenteocinereus")) %>%
  mutate(binomial = str_replace(binomial, "Heliosciurus multicolor", "Heliosciurus gambianus")) %>%
  mutate(binomial = str_replace(binomial, "Helogale brunnula", "Helogale parvula")) %>%
  mutate(binomial = str_replace(binomial, "Helogale ivori", "Helogale parvula")) %>%
  mutate(binomial = str_replace(binomial, "Herpestes flavidens", "Herpestes fuscus")) %>%
  mutate(binomial = str_replace(binomial, "Herpestes nepalensis", "Herpestes javanicus")) %>%
  mutate(binomial = str_replace(binomial, "Herpestes rutilus", "Herpestes javanicus")) %>%
  mutate(binomial = str_replace(binomial, "Heterohyrax blainvillii", "Heterohyrax brucei")) %>%
  mutate(binomial = str_replace(binomial, "Heterohyrax chapini", "Heterohyrax brucei")) %>%
  mutate(binomial = str_replace(binomial, "Heteromys goldmani", "Heteromys desmarestianus")) %>%
  mutate(binomial = str_replace(binomial, "Heteromys lepturus", "Heteromys desmarestianus")) %>%
  mutate(binomial = str_replace(binomial, "Hipposideros alongensis", "Hipposideros turpis")) %>%
  mutate(binomial = str_replace(binomial, "Hipposideros atrox", "Hipposideros bicolor")) %>%
  mutate(binomial = str_replace(binomial, "Hipposideros indus", "Hipposideros lankadiva")) %>%
  mutate(binomial = str_replace(binomial, "Hipposideros nicobarulae", "Hipposideros ater")) %>%
  mutate(binomial = str_replace(binomial, "Hipposideros pendleburyi", "Hipposideros turpis")) %>%
  mutate(binomial = str_replace(binomial, "Hipposideros templetonii", "Hipposideros speoris")) %>%
  mutate(binomial = str_replace(binomial, "Hybomys eisentrauti", "Hybomys badius")) %>%
  mutate(binomial = str_replace(binomial, "Hydrochoeris hydrochaeris", "Hydrochoeris hydrochaeris")) %>%
  mutate(binomial = str_replace(binomial, "Hydrochoeris isthmius", "Hydrochoeris isthmius")) %>%
  mutate(binomial = str_replace(binomial, "Hydrodamalis stelleri", "Hydrodamalis gigas")) %>%
  mutate(binomial = str_replace(binomial, "Hylobates abbotti", "Hylobates muelleri")) %>%
  mutate(binomial = str_replace(binomial, "Hylobates funereus", "Hylobates muelleri")) %>%
  mutate(binomial = str_replace(binomial, "Hylomyscus endorobae", "Hylomyscus denniae")) %>%
  mutate(binomial = str_replace(binomial, "Hylopetes electilis", "Hylopetes phayrei")) %>%
  mutate(binomial = str_replace(binomial, "Hystrix hodgsoni", "Hystrix brachyura")) %>%
  mutate(binomial = str_replace(binomial, "Ictonyx capensis", "Ictonyx striatus")) %>%
  mutate(binomial = str_replace(binomial, "Jaculus gordoni", "Jaculus jaculus")) %>%
  mutate(binomial = str_replace(binomial, "Kobus maria", "Kobus megaceros")) %>%
  mutate(binomial = str_replace(binomial, "Leopardus guttulus", "Leopardus tigrinus")) %>%
  mutate(binomial = str_replace(binomial, "Leopardus pictus", "Leopardus pardalis")) %>%
  mutate(binomial = str_replace(binomial, "Lepilemur grandidieri", "Lepilemur dorsalis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus angolensis", "Lepus microtis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus ansorgei", "Lepus microtis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus atlanticus", "Lepus capensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus bennettii", "Lepus californicus")) %>%
  mutate(binomial = str_replace(binomial, "Lepus canopus", "Lepus microtis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus cordeauxi", "Lepus habessinicus")) %>%
  mutate(binomial = str_replace(binomial, "Lepus creticus", "Lepus europaeus")) %>%
  mutate(binomial = str_replace(binomial, "Lepus cyprius", "Lepus europaeus")) %>%
  mutate(binomial = str_replace(binomial, "Lepus dayanus", "Lepus nigricollis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus formosus", "Lepus sinensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus harterti", "Lepus capensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus judeae", "Lepus europaeus")) %>%
  mutate(binomial = str_replace(binomial, "Lepus kabylicus", "Lepus capensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus lilfordi", "Lepus granatensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus longicaudatus", "Lepus saxatilis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus macrotus", "Lepus nigricollis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus ochropus", "Lepus capensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus omanensis", "Lepus capensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus pallidior", "Lepus capensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus pamirensis", "Lepus tibetanus")) %>%
  mutate(binomial = str_replace(binomial, "Lepus przewalskii", "Lepus oiostolus")) %>%
  mutate(binomial = str_replace(binomial, "Lepus sechuenensis", "Lepus oiostolus")) %>%
  mutate(binomial = str_replace(binomial, "Lepus sefranus", "Lepus capensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus simcoxi", "Lepus nigricollis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus swinhoei", "Lepus tolai")) %>%
  mutate(binomial = str_replace(binomial, "Lepus sylvaticus", "Lepus timidus")) %>%
  mutate(binomial = str_replace(binomial, "Lepus tigrensis", "Lepus habessinicus")) %>%
  mutate(binomial = str_replace(binomial, "Lepus tunetae", "Lepus capensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus vassali", "Lepus peguensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus whitakeri", "Lepus capensis")) %>%
  mutate(binomial = str_replace(binomial, "Lepus zuluensis", "Lepus microtis")) %>%
  mutate(binomial = str_replace(binomial, "Lonchophylla concava", "Lonchophylla mordax")) %>%
  mutate(binomial = str_replace(binomial, "Lophostoma occidentalis", "Lophostoma silvicolum")) %>%
  mutate(binomial = str_replace(binomial, "Lophuromys naso", "Lophuromys nudicaudus")) %>%
  mutate(binomial = str_replace(binomial, "Lorentzimys alticola", "Lorentzimys nouhuysi")) %>%
  mutate(binomial = str_replace(binomial, "Loris malabaricus", "Loris lydekkerianus")) %>%
  mutate(binomial = str_replace(binomial, "Lutra angustifrons", "Lutra lutra")) %>%
  mutate(binomial = str_replace(binomial, "Lutra chinensis", "Lutra lutra")) %>%
  mutate(binomial = str_replace(binomial, "Lutra lovii", "Lutra sumatrana")) %>%
  mutate(binomial = str_replace(binomial, "Lycalopex urostictus", "Lycalopex vetulus")) %>%
  mutate(binomial = str_replace(binomial, "Lynx pardella", "Lynx pardinus")) %>%
  mutate(binomial = str_replace(binomial, "Macropus manicatus", "Macropus irma")) %>%
  mutate(binomial = str_replace(binomial, "Macroscelides typicus", "Macroscelides proboscideus")) %>%
  mutate(binomial = str_replace(binomial, "Madoqua cavendishi", "Madoqua kirkii")) %>%
  mutate(binomial = str_replace(binomial, "Madoqua cordeauxi", "Madoqua saltiana")) %>%
  mutate(binomial = str_replace(binomial, "Madoqua phillipsi", "Madoqua saltiana")) %>%
  mutate(binomial = str_replace(binomial, "Madoqua swaynei", "Madoqua saltiana")) %>%
  mutate(binomial = str_replace(binomial, "Marmosa mitis", "Marmosa robinsoni")) %>%
  mutate(binomial = str_replace(binomial, "Marmosa simonsi", "Marmosa robinsoni")) %>%
  mutate(binomial = str_replace(binomial, "Marmosa tobagi", "Marmosa murina")) %>%
  mutate(binomial = str_replace(binomial, "Mazama sarae", "Mazama americana")) %>%
  mutate(binomial = str_replace(binomial, "Mazama sheila", "Mazama americana")) %>%
  mutate(binomial = str_replace(binomial, "Mazama zetta", "Mazama americana")) %>%
  mutate(binomial = str_replace(binomial, "Mellivora buchanani", "Mellivora capensis")) %>%
  mutate(binomial = str_replace(binomial, "Mellivora ratel", "Mellivora capensis")) %>%
  mutate(binomial = str_replace(binomial, "Mellivora signata", "Mellivora capensis")) %>%
  mutate(binomial = str_replace(binomial, "Melogale tonquinia", "Melogale personata")) %>%
  mutate(binomial = str_replace(binomial, "Mephitis longicaudata", "Mephitis macroura")) %>%
  mutate(binomial = str_replace(binomial, "Mephitis vittata", "Mephitis macroura")) %>%
  mutate(binomial = str_replace(binomial, "Meriones erythrourus", "Meriones libycus")) %>%
  mutate(binomial = str_replace(binomial, "Mesoplodon hotaula", "Mesoplodon ginkgodens")) %>%
  mutate(binomial = str_replace(binomial, "Microgale longirostris", "Microgale cowani")) %>%
  mutate(binomial = str_replace(binomial, "Microgale majori", "Microgale longicaudata")) %>%
  mutate(binomial = str_replace(binomial, "Microgale melanorrhachis", "Microgale drouhardi")) %>%
  mutate(binomial = str_replace(binomial, "Microgale sorella", "Microgale principula")) %>%
  mutate(binomial = str_replace(binomial, "Miniopterus griveaudi", "Miniopterus manavi")) %>%
  mutate(binomial = str_replace(binomial, "Miniopterus newtoni", "Miniopterus minor")) %>%
  mutate(binomial = str_replace(binomial, "Miniopterus pallidus", "Miniopterus schreibersii")) %>%
  mutate(binomial = str_replace(binomial, "Miniopterus scotinus", "Miniopterus natalensis")) %>%
  mutate(binomial = str_replace(binomial, "Mogera hainana", "Mogera insularis")) %>%
  mutate(binomial = str_replace(binomial, "Mogera latouchei", "Mogera insularis")) %>%
  mutate(binomial = str_replace(binomial, "Monodelphis touan", "Monodelphis brevicaudata")) %>%
  mutate(binomial = str_replace(binomial, "Mormopterus petersi", "Mormopterus planiceps")) %>%
  mutate(binomial = str_replace(binomial, "Mormopterus ridei", "Mormopterus loriae")) %>%
  mutate(binomial = str_replace(binomial, "Mungos caurinus", "Mungos mungo")) %>%
  mutate(binomial = str_replace(binomial, "Murina peninsularis", "Murina cyclotis")) %>%
  mutate(binomial = str_replace(binomial, "Mus castaneus", "Mus musculus")) %>%
  mutate(binomial = str_replace(binomial, "Mus nitidulus", "Mus cervicolor")) %>%
  mutate(binomial = str_replace(binomial, "Mus proconodon", "Mus setulosus")) %>%
  mutate(binomial = str_replace(binomial, "Mustela affinis", "Mustela frenata")) %>%
  mutate(binomial = str_replace(binomial, "Mustela aureoventris", "Mustela frenata")) %>%
  mutate(binomial = str_replace(binomial, "Mustela canigula", "Mustela sibirica")) %>%
  mutate(binomial = str_replace(binomial, "Mustela furo", "Mustela putorius")) %>%
  mutate(binomial = str_replace(binomial, "Mustela galinthias", "Mustela nivalis")) %>%
  mutate(binomial = str_replace(binomial, "Mustela hamptoni", "Mustela sibirica")) %>%
  mutate(binomial = str_replace(binomial, "Mustela hodgsoni", "Mustela sibirica")) %>%
  mutate(binomial = str_replace(binomial, "Mustela horsfieldii", "Mustela sibirica")) %>%
  mutate(binomial = str_replace(binomial, "Mustela longicauda", "Mustela frenata")) %>%
  mutate(binomial = str_replace(binomial, "Mustela longstaffi", "Mustela altaica")) %>%
  mutate(binomial = str_replace(binomial, "Mustela richardsonii", "Mustela erminea")) %>%
  mutate(binomial = str_replace(binomial, "Mustela russelliana", "Mustela nivalis")) %>%
  mutate(binomial = str_replace(binomial, "Mustela sacana", "Mustela altaica")) %>%
  mutate(binomial = str_replace(binomial, "Mustela taivana", "Mustela sibirica")) %>%
  mutate(binomial = str_replace(binomial, "Mustela temon", "Mustela altaica")) %>%
  mutate(binomial = str_replace(binomial, "Mustela whiteheadi", "Mustela erminea")) %>%
  mutate(binomial = str_replace(binomial, "Mydaus lucifer", "Mydaus javanensis")) %>%
  mutate(binomial = str_replace(binomial, "Mydaus ollula", "Mydaus javanensis")) %>%
  mutate(binomial = str_replace(binomial, "Mylomys cuninghamei", "Mylomys dybowskii")) %>%
  mutate(binomial = str_replace(binomial, "Myosorex swinnyi", "Myosorex cafer")) %>%
  mutate(binomial = str_replace(binomial, "Myotis sibiricus", "Myotis brandtii")) %>%
  mutate(binomial = str_replace(binomial, "Myotis taiwanensis", "Myotis adversus")) %>%
  mutate(binomial = str_replace(binomial, "Mystacina velutina", "Mystacina tuberculata")) %>%
  mutate(binomial = str_replace(binomial, "Nandinia gerrardi", "Nandinia binotata")) %>%
  mutate(binomial = str_replace(binomial, "Nasua quichua", "Nasua nasua")) %>%
  mutate(binomial = str_replace(binomial, "Nasua thersites", "Nasua narica")) %>%
  mutate(binomial = str_replace(binomial, "Natalus mexicanus", "Natalus stramineus")) %>%
  mutate(binomial = str_replace(binomial, "Neacomys amoenus", "Neacomys spinosus ")) %>%
  mutate(binomial = str_replace(binomial, "Nectogale sikhimensis", "Nectogale elegans")) %>%
  mutate(binomial = str_replace(binomial, "Neofelis diardi", "Neofelis nebulosa")) %>%
  mutate(binomial = str_replace(binomial, "Neotoma varia", "Neotoma albigula")) %>%
  mutate(binomial = str_replace(binomial, "Noctilio americanus", "Noctilio leporinus")) %>%
  mutate(binomial = str_replace(binomial, "Nyctereutes koreensis", "Nyctereutes procyonoides")) %>%
  mutate(binomial = str_replace(binomial, "Nycteris fuliginosa", "Nycteris thebaica")) %>%
  mutate(binomial = str_replace(binomial, "Nycteris poensis", "Nycteris hispida")) %>%
  mutate(binomial = str_replace(binomial, "Nycticebus javanicus", "Nycticebus coucang")) %>%
  mutate(binomial = str_replace(binomial, "Nycticebus menagensis", "Nycticebus coucang")) %>%
  mutate(binomial = str_replace(binomial, "Nycticeinops cinnamomeus", "Nycticeinops schlieffeni")) %>%
  mutate(binomial = str_replace(binomial, "Nycticeinops schlieffenii", "Nycticeinops schlieffeni")) %>%
  mutate(binomial = str_replace(binomial, "Nyctophilus daedalus", "Nyctophilus bifax")) %>%
  mutate(binomial = str_replace(binomial, "Nyctophilus major", "Nyctophilus timoriensis")) %>%
  mutate(binomial = str_replace(binomial, "Nyctophilus sherrini", "Nyctophilus timoriensis")) %>%
  mutate(binomial = str_replace(binomial, "Nyctophilus unicolor", "Nyctophilus geoffroyi")) %>%
  mutate(binomial = str_replace(binomial, "Ochotona bedfordi", "Ochotona dauurica")) %>%
  mutate(binomial = str_replace(binomial, "Ochotona pricei", "Ochotona pallas")) %>%
  mutate(binomial = str_replace(binomial, "Ochotona sacana", "Ochotona macrotis")) %>%
  mutate(binomial = str_replace(binomial, "Ochotona sushkini", "Ochotona alpina")) %>%
  mutate(binomial = str_replace(binomial, "Ochotona syrinx", "Ochotona huangensis")) %>%
  mutate(binomial = str_replace(binomial, "Oligoryzomys delicatus", "Oligoryzomys fulvescens")) %>%
  mutate(binomial = str_replace(binomial, "Oligoryzomys messorius", "Oligoryzomys fulvescens")) %>%
  mutate(binomial = str_replace(binomial, "Oligoryzomys utiaritensis", "Oligoryzomys eliurus")) %>%
  mutate(binomial = str_replace(binomial, "Oreotragus somalicus", "Oreotragus oreotragus")) %>%
  mutate(binomial = str_replace(binomial, "Ornithorhynchus paradoxus", "Ornithorhynchus anatinus")) %>%
  mutate(binomial = str_replace(binomial, "Orycteropus leptodon", "Orycteropus afer")) %>%
  mutate(binomial = str_replace(binomial, "Oryx beatrix", "Oryx leucoryx")) %>%
  mutate(binomial = str_replace(binomial, "Oryx callotis", "Oryx beisa")) %>%
  mutate(binomial = str_replace(binomial, "Oryzorictes niger", "Oryzorictes tetradactylus")) %>%
  mutate(binomial = str_replace(binomial, "Otaria minor", "Otaria flavescens")) %>%
  mutate(binomial = str_replace(binomial, "Otomys helleri", "Otomys typus")) %>%
  mutate(binomial = str_replace(binomial, "Otomys thomasi", "Otomys orestes")) %>%
  mutate(binomial = str_replace(binomial, "Otomys zinki", "Otomys orestes")) %>%
  mutate(binomial = str_replace(binomial, "Ourebia cottoni", "Ourebia ourebi")) %>%
  mutate(binomial = str_replace(binomial, "Ourebia goslingi", "Ourebia ourebi")) %>%
  mutate(binomial = str_replace(binomial, "Ovis blanfordi", "Ovis aries")) %>%
  mutate(binomial = str_replace(binomial, "Ovis gmelinii", "Ovis aries")) %>%
  mutate(binomial = str_replace(binomial, "Ovis sairensis", "Ovis ammon")) %>%
  mutate(binomial = str_replace(binomial, "Paguma leucomystax", "Paguma larvata")) %>%
  mutate(binomial = str_replace(binomial, "Papio kindae", "Papio cynocephalus")) %>%
  mutate(binomial = str_replace(binomial, "Paradoxurus birmanicus", "Paradoxurus hermaphroditus")) %>%
  mutate(binomial = str_replace(binomial, "Paradoxurus cochinensis", "Paradoxurus hermaphroditus")) %>%
  mutate(binomial = str_replace(binomial, "Paradoxurus dubius", "Paradoxurus hermaphroditus")) %>%
  mutate(binomial = str_replace(binomial, "Paradoxurus kangeanus", "Paradoxurus hermaphroditus")) %>%
  mutate(binomial = str_replace(binomial, "Paradoxurus macrodus", "Paradoxurus hermaphroditus")) %>%
  mutate(binomial = str_replace(binomial, "Paradoxurus minor", "Paradoxurus hermaphroditus")) %>%
  mutate(binomial = str_replace(binomial, "Paradoxurus strictus", "Paradoxurus hermaphroditus")) %>%
  mutate(binomial = str_replace(binomial, "Paradoxurus torvus", "Paradoxurus hermaphroditus")) %>%
  mutate(binomial = str_replace(binomial, "Paraechinus amir", "Paraechinus hypomelas")) %>%
  mutate(binomial = str_replace(binomial, "Paraechinus deserti", "Paraechinus aethiopicus")) %>%
  mutate(binomial = str_replace(binomial, "Paraechinus dorsalis", "Paraechinus aethiopicus")) %>%
  mutate(binomial = str_replace(binomial, "Paraechinus niger", "Paraechinus hypomelas")) %>%
  mutate(binomial = str_replace(binomial, "Paraechinus oniscus", "Paraechinus aethiopicus")) %>%
  mutate(binomial = str_replace(binomial, "Perameles arenaria", "Perameles bougainville")) %>%
  mutate(binomial = str_replace(binomial, "Perameles fasciata", "Perameles bougainville")) %>%
  mutate(binomial = str_replace(binomial, "Perodicticus edwardsi", "Perodicticus potto")) %>%
  mutate(binomial = str_replace(binomial, "Perodicticus ibeanus", "Perodicticus potto")) %>%
  mutate(binomial = str_replace(binomial, "Peromyscus nudipes", "Peromyscus mexicanus")) %>%
  mutate(binomial = str_replace(binomial, "Petaurista caniceps", "Petaurista elegans")) %>%
  mutate(binomial = str_replace(binomial, "Petinomys morrisi", "Petinomys setosus")) %>%
  mutate(binomial = str_replace(binomial, "Petrodromus robustus", "Petrodromus tetradactylus")) %>%
  mutate(binomial = str_replace(binomial, "Petrodromus rovumae", "Petrodromus tetradactylus")) %>%
  mutate(binomial = str_replace(binomial, "Petrodromus schwanni", "Petrodromus tetradactylus")) %>%
  mutate(binomial = str_replace(binomial, "Petrodromus venustus", "Petrodromus tetradactylus")) %>%
  mutate(binomial = str_replace(binomial, "Phacochoerus barkeri", "Phacochoerus africanus")) %>%
  mutate(binomial = str_replace(binomial, "Phascogale penicillata", "Phascogale tapoatafa")) %>%
  mutate(binomial = str_replace(binomial, "Philantomba caerula", "Philantomba monticola")) %>%
  mutate(binomial = str_replace(binomial, "Physeter macrocephalus", "Physeter catodon")) %>%
  mutate(binomial = str_replace(binomial, "Piliocolobus oustaleti", "Piliocolobus foai")) %>%
  mutate(binomial = str_replace(binomial, "Pithecia chrysocephala", "Pithecia pithecia")) %>%
  mutate(binomial = str_replace(binomial, "Pithecia hirsuta", "Pithecia monachus")) %>%
  mutate(binomial = str_replace(binomial, "Pithecia milleri", "Pithecia monachus")) %>%
  mutate(binomial = str_replace(binomial, "Pithecia napensis", "Pithecia monachus")) %>%
  mutate(binomial = str_replace(binomial, "Platyrrhinus aquilius", "Platyrrhinus umbratus")) %>%
  mutate(binomial = str_replace(binomial, "Plecotus ariel", "Plecotus austriacus")) %>%
  mutate(binomial = str_replace(binomial, "Plecotus homochrous", "Plecotus auritus")) %>%
  mutate(binomial = str_replace(binomial, "Plecotus sacrimontis", "Plecotus auritus")) %>%
  mutate(binomial = str_replace(binomial, "Plecotus wardi", "Plecotus austriacus")) %>%
  mutate(binomial = str_replace(binomial, "Poecilogale doggetti", "Poecilogale albinucha")) %>%
  mutate(binomial = str_replace(binomial, "Potamochoerus albifrons", "Potamochoerus porcus")) %>%
  mutate(binomial = str_replace(binomial, "Potamochoerus choeropotamus", "Potamochoerus larvatus")) %>%
  mutate(binomial = str_replace(binomial, "Potamochoerus intermedius", "Potamochoerus larvatus")) %>%
  mutate(binomial = str_replace(binomial, "Praomys butleri", "Praomys daltoni")) %>%
  mutate(binomial = str_replace(binomial, "Presbytis canicrus", "Presbytis hosei")) %>%
  mutate(binomial = str_replace(binomial, "Presbytis nobilis", "Presbytis melalophos")) %>%
  mutate(binomial = str_replace(binomial, "Presbytis robinsoni", "Presbytis femoralis")) %>%
  mutate(binomial = str_replace(binomial, "Presbytis sabana", "Presbytis hosei")) %>%
  mutate(binomial = str_replace(binomial, "Presbytis siberu", "Presbytis potenziani")) %>%
  mutate(binomial = str_replace(binomial, "Prionodon maculosus", "Prionodon linsang")) %>%
  mutate(binomial = str_replace(binomial, "Procavia buchanani", "Procavia capensis")) %>%
  mutate(binomial = str_replace(binomial, "Procavia jacksoni", "Procavia capensis")) %>%
  mutate(binomial = str_replace(binomial, "Procavia lopesi", "Procavia capensis")) %>%
  mutate(binomial = str_replace(binomial, "Procavia oweni", "Procavia capensis")) %>%
  mutate(binomial = str_replace(binomial, "Procavia syriacus", "Procavia capensis")) %>%
  mutate(binomial = str_replace(binomial, "Procyon psora", "Procyon lotor")) %>%
  mutate(binomial = str_replace(binomial, "Proechimys centralis", "Proechimys semispinosus")) %>%
  mutate(binomial = str_replace(binomial, "Pronailurus bengalensis", "Prionailurus bengalensis")) %>%
  mutate(binomial = str_replace(binomial, "Pronailurus herschelii", "Prionailurus bengalensis")) %>%
  mutate(binomial = str_replace(binomial, "Pronolagus caucinus", "Pronolagus randensis")) %>%
  mutate(binomial = str_replace(binomial, "Pronolagus ruddi", "Pronolagus crassicaudatus")) %>%
  mutate(binomial = str_replace(binomial, "Propithecus candidus", "Propithecus diadema")) %>%
  mutate(binomial = str_replace(binomial, "Propithecus coronatus", "Propithecus deckenii")) %>%
  mutate(binomial = str_replace(binomial, "Prosciurillus topapuensis", "Prosciurillus leucomus")) %>%
  mutate(binomial = str_replace(binomial, "Pteronura sambachii", "Pteronura brasiliensis")) %>%
  mutate(binomial = str_replace(binomial, "Pteropus aterrimus", "Pteropus alecto")) %>%
  mutate(binomial = str_replace(binomial, "Puma yaguarondi", "Puma yagouaroundi")) %>%
  mutate(binomial = str_replace(binomial, "Rangifer montanus", "Rangifer tarandus")) %>%
  mutate(binomial = str_replace(binomial, "Raphicerus neumanni", "Raphicerus campestris")) %>%
  mutate(binomial = str_replace(binomial, "Rattus insularis", "Rattus rattus")) %>%
  mutate(binomial = str_replace(binomial, "Rhinolophus mcintyrei", "Rhinolophus arcuatus")) %>%
  mutate(binomial = str_replace(binomial, "Rhinolophus microglobosus", "Rhinolophus stheno")) %>%
  mutate(binomial = str_replace(binomial, "Rhinolophus proconsulis", "Rhinolophus arcuatus")) %>%
  mutate(binomial = str_replace(binomial, "Rhinolophus tatar", "Rhinolophus euryotis")) %>%
  mutate(binomial = str_replace(binomial, "Rhinolophus truncatus", "Rhinolophus keyensis")) %>%
  mutate(binomial = str_replace(binomial, "Rhinopoma cystops", "Rhinopoma hardwickii")) %>%
  mutate(binomial = str_replace(binomial, "Rhynchocyon claudi", "Rhynchocyon cirnei")) %>%
  mutate(binomial = str_replace(binomial, "Rhynchocyon macrurus", "Rhynchocyon cirnei")) %>%
  mutate(binomial = str_replace(binomial, "Rhynchocyon stuhlmanni", "Rhynchocyon cirnei")) %>%
  mutate(binomial = str_replace(binomial, "Rhynchogale caniceps", "Rhynchogale melleri")) %>%
  mutate(binomial = str_replace(binomial, "Rousettus leachii", "Rousettus aegyptiacus")) %>%
  mutate(binomial = str_replace(binomial, "Rousettus stresemanni", "Rousettus amplexicaudatus")) %>%
  mutate(binomial = str_replace(binomial, "Rucervus platyceros", "Rucervus eldii")) %>%
  mutate(binomial = str_replace(binomial, "Rusa timoriensis", "Rusa timorensis")) %>%
  mutate(binomial = str_replace(binomial, "Saimiri cassiquiarensis", "Saimiri sciureus")) %>%
  mutate(binomial = str_replace(binomial, "Saimiri macrodon", "Saimiri sciureus")) %>%
  mutate(binomial = str_replace(binomial, "Scaptochirus gilliesi", "Scaptochirus moschatus")) %>%
  mutate(binomial = str_replace(binomial, "Scaptochirus leptura", "Scaptochirus moschatus")) %>%
  mutate(binomial = str_replace(binomial, "Scaptonyx fusicaudatus", "Scaptonyx fusicaudus")) %>%
  mutate(binomial = str_replace(binomial, "Scotophilus temminckii", "Scotophilus kuhlii")) %>%
  mutate(binomial = str_replace(binomial, "Scotophilus wroughtoni", "Scotophilus kuhlii")) %>%
  mutate(binomial = str_replace(binomial, "Scutisorex congicus", "Scutisorex somereni")) %>%
  mutate(binomial = str_replace(binomial, "Sigmodontomys barbacoas", "Sigmodontomys alfari")) %>%
  mutate(binomial = str_replace(binomial, "Sminthopsis rufigenis", "Sminthopsis virginiae")) %>%
  mutate(binomial = str_replace(binomial, "Sorex annexus", "Sorex caecutiens")) %>%
  mutate(binomial = str_replace(binomial, "Sorex batis", "Sorex raddei")) %>%
  mutate(binomial = str_replace(binomial, "Sorex burneyi", "Sorex minutissimus")) %>%
  mutate(binomial = str_replace(binomial, "Sorex grantii", "Sorex araneus")) %>%
  mutate(binomial = str_replace(binomial, "Sorex obscurus", "Sorex monticolus")) %>%
  mutate(binomial = str_replace(binomial, "Sorex richardsonii", "Sorex arcticus")) %>%
  mutate(binomial = str_replace(binomial, "Sorex wardi", "Sorex bedfordiae")) %>%
  mutate(binomial = str_replace(binomial, "Soriculus radulus", "Soriculus nigrescens")) %>%
  mutate(binomial = str_replace(binomial, "Sousa plumbea", "Sousa chinensis")) %>%
  mutate(binomial = str_replace(binomial, "Sturnira angeli", "Sturnira lilium")) %>%
  mutate(binomial = str_replace(binomial, "Sturnira hondurensis", "Sturnira ludovici")) %>%
  mutate(binomial = str_replace(binomial, "Sturnira parvidens", "Sturnira lilium")) %>%
  mutate(binomial = str_replace(binomial, "Sturnira paulsoni", "Sturnira lilium")) %>%
  mutate(binomial = str_replace(binomial, "Sus affinis", "Sus scrofa")) %>%
  mutate(binomial = str_replace(binomial, "Sus andersoni", "Sus scrofa")) %>%
  mutate(binomial = str_replace(binomial, "Sus cristatus", "Sus scrofa")) %>%
  mutate(binomial = str_replace(binomial, "Sus fasciatus", "Sus scrofa")) %>%
  mutate(binomial = str_replace(binomial, "Sus lybicus", "Sus scrofa")) %>%
  mutate(binomial = str_replace(binomial, "Sus mystaceus", "Sus verrucosus")) %>%
  mutate(binomial = str_replace(binomial, "Sus pliciceps", "Sus scrofa")) %>%
  mutate(binomial = str_replace(binomial, "Sylvilagus andinus", "Sylvilagus brasiliensis")) %>%
  mutate(binomial = str_replace(binomial, "Sylvilagus apollinaris", "Sylvilagus brasiliensis")) %>%
  mutate(binomial = str_replace(binomial, "Sylvilagus capsalis", "Sylvilagus brasiliensis")) %>%
  mutate(binomial = str_replace(binomial, "Sylvilagus minensis", "Sylvilagus brasiliensis")) %>%
  mutate(binomial = str_replace(binomial, "Sylvilagus nicefori", "Sylvilagus brasiliensis")) %>%
  mutate(binomial = str_replace(binomial, "Sylvilagus paraguensis", "Sylvilagus brasiliensis")) %>%
  mutate(binomial = str_replace(binomial, "Sylvilagus purgatus", "Sylvilagus floridanus")) %>%
  mutate(binomial = str_replace(binomial, "Sylvilagus surdaster", "Sylvilagus brasiliensis")) %>%
  mutate(binomial = str_replace(binomial, "Sylvilagus tapetillus", "Sylvilagus brasiliensis")) %>%
  mutate(binomial = str_replace(binomial, "Sylvilagus valenciae", "Sylvilagus floridanus")) %>%
  mutate(binomial = str_replace(binomial, "Syntheosciurus poasensis", "Syntheosciurus brochus")) %>%
  mutate(binomial = str_replace(binomial, "Tarsipes spenserae", "Tarsipes rostratus")) %>%
  mutate(binomial = str_replace(binomial, "Taterillus gyas", "Taterillus emini")) %>%
  mutate(binomial = str_replace(binomial, "Taurotragus triangularis", "Taurotragus oryx")) %>%
  mutate(binomial = str_replace(binomial, "Tolypeutes muriei", "Tolypeutes matacus")) %>%
  mutate(binomial = str_replace(binomial, "Tragelaphus\tdecula", "Tragelaphus scriptus")) %>%
  mutate(binomial = str_replace(binomial, "Tragelaphus haywoodi", "Tragelaphus scriptus")) %>%
  mutate(binomial = str_replace(binomial, "Tragulus canescens", "Tragulus napu")) %>%
  mutate(binomial = str_replace(binomial, "Triaenops afer", "Triaenops persicus")) %>%
  mutate(binomial = str_replace(binomial, "Tupaia castanea", "Tupaia glis")) %>%
  mutate(binomial = str_replace(binomial, "Tupaia clarissa", "Tupaia belangeri")) %>%
  mutate(binomial = str_replace(binomial, "Tupaia concolor", "Tupaia belangeri")) %>%
  mutate(binomial = str_replace(binomial, "Tupaia ferruginea", "Tupaia glis")) %>%
  mutate(binomial = str_replace(binomial, "Tupaia lacernata", "Tupaia glis")) %>%
  mutate(binomial = str_replace(binomial, "Tupaia longicauda", "Tupaia glis")) %>%
  mutate(binomial = str_replace(binomial, "Tupaia obscura", "Tupaia glis")) %>%
  mutate(binomial = str_replace(binomial, "Tupaia ultima", "Tupaia belangeri")) %>%
  mutate(binomial = str_replace(binomial, "Uroderma convexum", "Uroderma bilobatum")) %>%
  mutate(binomial = str_replace(binomial, "Uroderma davisi", "Uroderma bilobatum")) %>%
  mutate(binomial = str_replace(binomial, "Ursus lasiotus", "Ursus arctos")) %>%
  mutate(binomial = str_replace(binomial, "Viverra melanurus", "Viverra zibetha")) %>%
  mutate(binomial = str_replace(binomial, "Viverricula rasse", "Viverricula indica")) %>%
  mutate(binomial = str_replace(binomial, "Vulpes flavescens", "Vulpes vulpes")) %>%
  mutate(binomial = str_replace(binomial, "Vulpes hoole", "Vulpes vulpes")) %>%
  mutate(binomial = str_replace(binomial, "Vulpes ichnusae", "Vulpes vulpes")) %>%
  mutate(binomial = str_replace(binomial, "Vulpes indutus", "Vulpes vulpes")) %>%
  mutate(binomial = str_replace(binomial, "Vulpes japonica", "Vulpes vulpes")) %>%
  mutate(binomial = str_replace(binomial, "Vulpes lineiventer", "Vulpes vulpes")) %>%
  mutate(binomial = str_replace(binomial, "Vulpes waddelli", "Vulpes vulpes")) %>%

#-------------------------------------------------------
# BIRDS
# Correcting taxonomy/spellings/typos
# Checked against BirdLife International taxonomy
#--------------------------------------------------------
# Can't find these so excluding them (ostrichy things are fossils)
#--------------------------------------------------------
mutate(binomial = str_replace(binomial, "Amytornis whitei", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Cuculus tenuirostris", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Formicarius cayanensis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Struthio anderssoni", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Struthio mongolicus", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Struthiolithus chersonensis", NA_character_)) %>%
#----------------------------------------------------
# These appear in BirdLife International taxonomy
# but not in GBIF apparently
#----------------------------------------------------
# Anser cygnoid
# Dicrurus annectens
# Junco bairdi
# Lanius borealis
# Melaenornis semipartitus
# Myiagra castaneigularis
# Todiramphus youngi
# Chamaetylas poliocephala
# Junco bairdi
#-------------------------------------------------------
mutate(binomial = str_replace(binomial, "Accipiter cooperi", "Accipiter cooperii")) %>%
mutate(binomial = str_replace(binomial, "Actitis macularia", "Actitis macularius")) %>%
mutate(binomial = str_replace(binomial, "Baza cuculoides", "Aviceda cuculoides")) %>%
mutate(binomial = str_replace(binomial, "Callaeas cinerea", "Callaeas cinereus")) %>%
mutate(binomial = str_replace(binomial, "Dicrurus leucogenys", "Dicrurus leucophaeus")) %>%
mutate(binomial = str_replace(binomial, "Falco regulus", "Falco columbarius")) %>%
mutate(binomial = str_replace(binomial, "Gallinula sanvicensis", "Gallinula galeata")) %>%
mutate(binomial = str_replace(binomial, "Halcyon macleayi", "Todiramphus macleayii")) %>%
mutate(binomial = str_replace(binomial, "Himantopus knudseni", "Himantopus himantopus")) %>%
mutate(binomial = str_replace(binomial, "Larus glaucodes", "Larus glaucoides")) %>%
mutate(binomial = str_replace(binomial, "Lochmias obscurata", "Lochmias nematura")) %>%
mutate(binomial = str_replace(binomial, "Malurus assimilis", "Malurus lamberti")) %>%
mutate(binomial = str_replace(binomial, "Megalaima nuchalis", "Psilopogon nuchalis")) %>%
mutate(binomial = str_replace(binomial, "Merula albicollis", "Turdus albicollis")) %>%
mutate(binomial = str_replace(binomial, "Mimocichla ardesiaca", "Turdus plumbeus")) %>%
mutate(binomial = str_replace(binomial, "Motacilla feldegg", "Motacilla flava")) %>%
mutate(binomial = str_replace(binomial, "Motacilla melanope", "Motacilla cinerea")) %>%
mutate(binomial = str_replace(binomial, "Myzomela nigriventris", "Myzomela cardinalis")) %>%
mutate(binomial = str_replace(binomial, "Numida galeata", "Numida meleagris")) %>%
mutate(binomial = str_replace(binomial, "Numida mitrata", "Numida meleagris")) %>%
mutate(binomial = str_replace(binomial, "Oreortyx picta", "Oreortyx pictus")) %>%
mutate(binomial = str_replace(binomial, "Rhea nana", "Rhea pennata")) %>%
mutate(binomial = str_replace(binomial, "Schoeniclus schoeniclus", "Emberiza schoeniclus")) %>%
mutate(binomial = str_replace(binomial, "Sphecotera viridis", "Sphecotheres viridis")) %>%
mutate(binomial = str_replace(binomial, "Sphecothera grisea", "Sphecotheres viridis")) %>%
mutate(binomial = str_replace(binomial, "Tephrodornis pelvicus", "Tephrodornis virgatus")) %>%
mutate(binomial = str_replace(binomial, "Thamnistes rufescens", "Thamnistes anabatinus")) %>%
mutate(binomial = str_replace(binomial, "Turdus peronii", "Geokichla peronii")) %>%
mutate(binomial = str_replace(binomial, "Tyto pratinicola", "Tyto alba"))
