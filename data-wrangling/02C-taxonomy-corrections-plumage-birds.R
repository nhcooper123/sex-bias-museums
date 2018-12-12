# Hideous taxonomy correction script
# for plumage dataset
# These are the names that don't match the GBIF taxonomy
# Some are simple changes/errors/typos
#--------------------------------------------------------

plumage2 <- plumage %>%

#----------------------------------------------------  
# Uncertain taxonomy so excluding this one
# Could be one of two species
#----------------------------------------------------
mutate(binomial = str_replace(binomial, "Certhilauda barlowi", NA_character_)) %>%
#----------------------------------------------------
# These appear in BirdLife International taxonomy
# but not in GBIF apparently
#----------------------------------------------------
# Conopias parvus
# Corcorax melanorhamphos
# Eurochelidon sirintarae
# Phylloscopus sibilatrix
# Pyrrhurus scandens
# Trichastoma buettikoferi
# Trichastoma pyrrogenys
# Trichastoma tickelli

#-------------------------------------------------------
# Correcting taxonomy/spellings/typos
# Checked against BirdLife International taxonomy
#-------------------------------------------------------
mutate(binomial = str_replace(binomial, "Acanthidops bairdii", "Acanthidops bairdi")) %>%
mutate(binomial = str_replace(binomial, "Alcippe danisi", "Fulvetta danisi")) %>%
mutate(binomial = str_replace(binomial, "Alcippe formosana", "Fulvetta formosana")) %>%
mutate(binomial = str_replace(binomial, "Alcippe manipurensis", "Fulvetta manipurensis")) %>%
mutate(binomial = str_replace(binomial, "Amaurocichla bocagei", "Amaurocichla bocagii")) %>%
mutate(binomial = str_replace(binomial, "Anthreptes aurantium", "Anthreptes aurantius")) %>%
mutate(binomial = str_replace(binomial, "Artamus leucorynchus", "Artamus leucoryn")) %>%
mutate(binomial = str_replace(binomial, "Bathmocercus winifredae", "Scepomycter winifredae")) %>%
mutate(binomial = str_replace(binomial, "Bernieria apperti", "Xanthomixis apperti")) %>%
mutate(binomial = str_replace(binomial, "Bernieria cinereiceps", "Xanthomixis cinereiceps")) %>%
mutate(binomial = str_replace(binomial, "Bernieria tenebrosa", "Crossleyia tenebrosa")) %>%
mutate(binomial = str_replace(binomial, "Brachypteryx leucophrys", "Brachypteryx leucophris")) %>%
mutate(binomial = str_replace(binomial, "Calyptocichla serina", "Calyptocichla serinus")) %>%
mutate(binomial = str_replace(binomial, "Camaroptera fasciolata", "Calamonastes fasciolatus")) %>%
mutate(binomial = str_replace(binomial, "Camaroptera simplex", "Calamonastes simplex")) %>%
mutate(binomial = str_replace(binomial, "Camaroptera undosa", "Calamonastes undosus")) %>%
mutate(binomial = str_replace(binomial, "Campylorhamphus pucherani", "Drymotoxeres pucheranii")) %>%
mutate(binomial = str_replace(binomial, "Cinclus schulzi", "Cinclus schulzii")) %>%
mutate(binomial = str_replace(binomial, "Cisticola nanus", "Cisticola nana")) %>%
mutate(binomial = str_replace(binomial, "Colluricincla sanghirensis", "Coracornis sanghirensis")) %>%
mutate(binomial = str_replace(binomial, "Cossypha albicapilla", "Cossypha albicapillus")) %>%
mutate(binomial = str_replace(binomial, "Dendrocitta bayleyi", "Dendrocitta bayleii")) %>%
mutate(binomial = str_replace(binomial, "Eremopsaltria mongolicus", "Bucanetes mongolicus")) %>%
mutate(binomial = str_replace(binomial, "Garrulax chrysopterus", "Trochalopteron chrysopterum")) %>%
mutate(binomial = str_replace(binomial, "Garrulax imbricatus", "Trochalopteron imbricatum")) %>%
mutate(binomial = str_replace(binomial, "Garrulax melanostigma", "Trochalopteron melanostigma")) %>%
mutate(binomial = str_replace(binomial, "Garrulax peninsulae", "Trochalopteron peninsulae")) %>%
mutate(binomial = str_replace(binomial, "Grallina bruijni", "Grallina bruijnii")) %>%
mutate(binomial = str_replace(binomial, "Gypsophila crispifrons", "Turdinus crispifrons")) %>%
mutate(binomial = str_replace(binomial, "Histurgops ruficaudus", "Histurgops ruficauda")) %>%
mutate(binomial = str_replace(binomial, "Hylacola cauta", "Calamanthus cautus")) %>%
mutate(binomial = str_replace(binomial, "Hylacola pyrrhopygia", "Calamanthus pyrrhopygius")) %>%
mutate(binomial = str_replace(binomial, "Macronous bornensis", "Mixornis bornensis")) %>%
mutate(binomial = str_replace(binomial, "Macronyx fuellebornii", "Macronyx fuelleborni")) %>%
mutate(binomial = str_replace(binomial, "Modulatrix orostruthus", "Arcanator orostruthus")) %>%
mutate(binomial = str_replace(binomial, "Monarcha guttula", "Symposiachrus guttula")) %>%
mutate(binomial = str_replace(binomial, "Monticola imerinus", "Monticola imerina")) %>%
mutate(binomial = str_replace(binomial, "Myrmecocichla arnoti", "Myrmecocichla arnotti")) %>%
mutate(binomial = str_replace(binomial, "Myrmecocichla cinnamomeiventris", "Thamnolaea cinnamomeiventris")) %>%
mutate(binomial = str_replace(binomial, "Myrmecocichla semirufa", "Monticola semirufus")) %>%
mutate(binomial = str_replace(binomial, "Nectarinia chalcomelas", "Cinnyris chalcomelas")) %>%
mutate(binomial = str_replace(binomial, "Nectarinia coccinigaster", "Cinnyris coccinigastrus")) %>%
mutate(binomial = str_replace(binomial, "Nectarinia neergardi", "Cinnyris neergaardi")) %>%
mutate(binomial = str_replace(binomial, "Nectarinia tsavoensis", "Cinnyris tsavoensis")) %>%
mutate(binomial = str_replace(binomial, "Ochetorhynchus melanura", "Ochetorhynchus melanurus")) %>%
mutate(binomial = str_replace(binomial, "Oenanthe bifasciata", "Campicoloides bifasciatus")) %>%
mutate(binomial = str_replace(binomial, "Oreolais pulchra", "Oreolais pulcher")) %>%
mutate(binomial = str_replace(binomial, "Oriolus brachyrhynchus", "Oriolus brachyrynchus")) %>%
mutate(binomial = str_replace(binomial, "Paradoxornis margaritae", "Psittiparus margaritae")) %>%
mutate(binomial = str_replace(binomial, "Parus davidi", "Poecile davidi")) %>%
mutate(binomial = str_replace(binomial, "Peneothello sigillatus", "Peneothello sigillata")) %>%
mutate(binomial = str_replace(binomial, "Phelpsia inornatus", "Phelpsia inornata")) %>%
mutate(binomial = str_replace(binomial, "Phoenicurus caeruleocephala", "Phoenicurus coeruleocephala")) %>%
mutate(binomial = str_replace(binomial, "Phylidonyris undulatus", "Gliciphila undulata")) %>%
mutate(binomial = str_replace(binomial, "Rhamphocoris clotbey", "Ramphocoris clotbey")) %>%
mutate(binomial = str_replace(binomial, "Rhodopechys obsoletus", "Rhodospiza obsoleta")) %>%
mutate(binomial = str_replace(binomial, "Sicalis uropygialis", "Sicalis uropigyalis")) %>%
mutate(binomial = str_replace(binomial, "Spiloptila rufifrons", "Prinia rufifrons")) %>%
mutate(binomial = str_replace(binomial, "Stachyris pygmaea", "Dasycrotapha pygmaea")) %>%
mutate(binomial = str_replace(binomial, "Strophocincla cachinnans", "Trochalopteron cachinnans")) %>%
mutate(binomial = str_replace(binomial, "Strophocincla fairbanki", "Trochalopteron fairbanki")) %>%
mutate(binomial = str_replace(binomial, "Sturnus albofrontatus", "Sturnornis albofrontatus")) %>%
mutate(binomial = str_replace(binomial, "Tchagra minutus", "Bocagia minuta")) %>%
mutate(binomial = str_replace(binomial, "Turdinus marmorata", "Turdinus marmoratus")) %>%
mutate(binomial = str_replace(binomial, "Turdoides reinwardii", "Turdoides reinwardtii")) %>%
mutate(binomial = str_replace(binomial, "Turdus libonyanus", "Turdus libonyana")) %>%
mutate(binomial = str_replace(binomial, "Urocissa erythrorhyncha", "Urocissa erythroryncha")) %>%
mutate(binomial = str_replace(binomial, "Zoothera camaronensis", "Geokichla camaronensis")) %>%
mutate(binomial = str_replace(binomial, "Zosterops chloronothus", "Zosterops chloronothos"))