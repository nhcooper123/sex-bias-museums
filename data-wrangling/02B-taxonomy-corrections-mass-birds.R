# Hideous taxonomy correction script
# for body mass dataset
# These are the names that don't match the GBIF taxonomy
# Some are simple changes/errors/typos
#--------------------------------------------------------

body2 <- body %>%
  
#----------------------------------------------------
# These appear in BirdLife International taxonomy
# but not in GBIF apparently
#----------------------------------------------------
# Phylloscopus sibilatrix
# Porphyrio martinicus

#-------------------------------------------------------
# Delete subspecies
#-------------------------------------------------------
mutate(binomial = str_replace(binomial, "Acanthiza pusilla apicalis", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Basileuterus rufifrons delatri", NA_character_)) %>%
mutate(binomial = str_replace(binomial, "Pardalotus punctatus xanthopygus", NA_character_)) %>%

#-------------------------------------------------------
# Correcting taxonomy/spellings/typos
# Checked against BirdLife International taxonomy
#-------------------------------------------------------

mutate(binomial = str_replace(binomial, "Acanthornis magnus", "Acanthornis magna")) %>%
mutate(binomial = str_replace(binomial, "Aglaiocercus kingi", "Aglaiocercus kingii")) %>%
mutate(binomial = str_replace(binomial, "Alopochen aegyptiacus", "Alopochen aegyptiaca")) %>%
mutate(binomial = str_replace(binomial, "Amaurornis olivaceus", "Amaurornis olivacea")) %>%
mutate(binomial = str_replace(binomial, "Ammomanes cincturus", "Ammomanes cinctura")) %>%
mutate(binomial = str_replace(binomial, "Anser canagica", "Anser canagicus")) %>%
mutate(binomial = str_replace(binomial, "Anthreptes aurantium", "Anthreptes aurantius")) %>%
mutate(binomial = str_replace(binomial, "Artamus leucorynchus", "Artamus leucoryn")) %>%
mutate(binomial = str_replace(binomial, "Bleda canicapilla", "Bleda canicapillus")) %>%
mutate(binomial = str_replace(binomial, "Bleda eximia", "Bleda eximius")) %>%
mutate(binomial = str_replace(binomial, "Bleda syndactyla", "Bleda syndactylus")) %>%
mutate(binomial = str_replace(binomial, "Butorides striatus", "Butorides striata")) %>%
mutate(binomial = str_replace(binomial, "Calyptocichla serina", "Calyptocichla serinus")) %>%
mutate(binomial = str_replace(binomial, "Catharus mustelinus", "Hylocichla mustelina")) %>%
mutate(binomial = str_replace(binomial, "Chionis alba", "Chionis albus")) %>%
mutate(binomial = str_replace(binomial, "Chlidonias hybridus", "Chlidonias hybrida")) %>%
mutate(binomial = str_replace(binomial, "Cinclosoma castanotus", "Cinclosoma castanotum")) %>%
mutate(binomial = str_replace(binomial, "Cisticola chinianus", "Cisticola chiniana")) %>%
mutate(binomial = str_replace(binomial, "Cisticola fulvicapillus", "Cisticola fulvicapilla")) %>%
mutate(binomial = str_replace(binomial, "Cisticola nanus", "Cisticola nana")) %>%
mutate(binomial = str_replace(binomial, "Cisticola subruficapillus", "Cisticola subruficapilla")) %>%
mutate(binomial = str_replace(binomial, "Climacteris melanura", "Climacteris melanurus")) %>%
mutate(binomial = str_replace(binomial, "Climacteris rufa", "Climacteris rufus")) %>%
mutate(binomial = str_replace(binomial, "Cochlearius cochlearia", "Cochlearius cochlearius")) %>%
mutate(binomial = str_replace(binomial, "Collocalia spodiopygius", "Aerodramus spodiopygius")) %>%
mutate(binomial = str_replace(binomial, "Coracias abyssinica", "Coracias abyssinicus")) %>%
mutate(binomial = str_replace(binomial, "Coracias caudata", "Coracias caudatus")) %>%
mutate(binomial = str_replace(binomial, "Coracias naevia", "Coracias naevius")) %>%
mutate(binomial = str_replace(binomial, "Coracias spatulata", "Coracias spatulatus")) %>%
mutate(binomial = str_replace(binomial, "Cormobates leucophaeus", "Cormobates leucophaea")) %>%
mutate(binomial = str_replace(binomial, "Cossypha albicapilla", "Cossypha albicapillus")) %>%
mutate(binomial = str_replace(binomial, "Cyanochen cyanopterus", "Cyanochen cyanoptera")) %>%
mutate(binomial = str_replace(binomial, "Cyanopica cyana", "Cyanopica cyanus")) %>%
mutate(binomial = str_replace(binomial, "Cygnus melanocorypha", "Cygnus melanocoryphus")) %>%
mutate(binomial = str_replace(binomial, "Delichon urbica", "Delichon urbicum")) %>%
mutate(binomial = str_replace(binomial, "Eolophus roseicapillus", "Eolophus roseicapilla")) %>%
mutate(binomial = str_replace(binomial, "Eremopterix signata", "Eremopterix signatus")) %>%
mutate(binomial = str_replace(binomial, "Eriocnemis vestitus", "Eriocnemis vestita")) %>%
mutate(binomial = str_replace(binomial, "Eudynamys scolopacea", "Eudynamys scolopaceus")) %>%
mutate(binomial = str_replace(binomial, "Euplectes macrourus", "Euplectes macroura")) %>%
mutate(binomial = str_replace(binomial, "Falco araea", "Falco araeus")) %>%
mutate(binomial = str_replace(binomial, "Gerygone chloronotus", "Gerygone chloronota")) %>%
mutate(binomial = str_replace(binomial, "Glaucis hirsuta", "Glaucis hirsutus")) %>%
mutate(binomial = str_replace(binomial, "Grallina bruijni", "Grallina bruijnii")) %>%
mutate(binomial = str_replace(binomial, "Heliolais erythroptera", "Prinia erythroptera")) %>%
mutate(binomial = str_replace(binomial, "Heliothryx aurita", "Heliothryx auritus")) %>%
mutate(binomial = str_replace(binomial, "Helmitheros vermivorus", "Helmitheros vermivorum")) %>%
mutate(binomial = str_replace(binomial, "Hylacola pyrrhopygia", "Calamanthus pyrrhopygius")) %>%
mutate(binomial = str_replace(binomial, "Lagopus leucurus", "Lagopus leucura")) %>%
mutate(binomial = str_replace(binomial, "Lagopus mutus", "Lagopus muta")) %>%
mutate(binomial = str_replace(binomial, "Lamprotornis purpuropterus", "Lamprotornis purpuroptera")) %>%
mutate(binomial = str_replace(binomial, "Macronyx fuellebornii", "Macronyx fuelleborni")) %>%
mutate(binomial = str_replace(binomial, "Manucodia chalybata", "Manucodia chalybatus")) %>%
mutate(binomial = str_replace(binomial, "Nectarinia coccinigaster", "Cinnyris coccinigastrus")) %>%
mutate(binomial = str_replace(binomial, "Nigrita canicapilla", "Nigrita canicapillus")) %>%
mutate(binomial = str_replace(binomial, "Nigrita fusconota", "Nigrita fusconotus")) %>%
mutate(binomial = str_replace(binomial, "Oriolus brachyrhynchus", "Oriolus brachyrynchus")) %>%
mutate(binomial = str_replace(binomial, "Otus kennicottii", "Megascops kennicottii")) %>%
mutate(binomial = str_replace(binomial, "Peneothello sigillatus", "Peneothello sigillata")) %>%
mutate(binomial = str_replace(binomial, "Pipilo erythrophthalmus maculatus", "Pipilo maculatus")) %>%
mutate(binomial = str_replace(binomial, "Phalaropus fulicaria", "Phalaropus fulicarius")) %>%
mutate(binomial = str_replace(binomial, "Phoenicurus erythronota", "Phoenicurus erythronotus")) %>%
mutate(binomial = str_replace(binomial, "Phylidonyris pyrrhoptera", "Phylidonyris pyrrhopterus")) %>%
mutate(binomial = str_replace(binomial, "Phylloscopus ruficapillus", "Phylloscopus ruficapilla")) %>%
mutate(binomial = str_replace(binomial, "Pygoscelis antarctica", "Pygoscelis antarcticus")) %>%
mutate(binomial = str_replace(binomial, "Regulus ignicapillus", "Regulus ignicapilla")) %>%
mutate(binomial = str_replace(binomial, "Rhodopechys sanguinea", "Rhodopechys sanguineus")) %>%
mutate(binomial = str_replace(binomial, "Rupicola peruviana", "Rupicola peruvianus")) %>%
mutate(binomial = str_replace(binomial, "Saxicola torquata", "Saxicola torquatus")) %>%
mutate(binomial = str_replace(binomial, "Schoenicola platyura", "Schoenicola platyurus")) %>%
mutate(binomial = str_replace(binomial, "Schoeniophylax phryganophila", "Schoeniophylax phryganophilus")) %>%
mutate(binomial = str_replace(binomial, "Seiurus aurocapillus", "Seiurus aurocapilla")) %>%
mutate(binomial = str_replace(binomial, "Spiziapteryx circumcinctus", "Spiziapteryx circumcincta")) %>%
mutate(binomial = str_replace(binomial, "Strigops habroptilus", "Strigops habroptila")) %>%
mutate(binomial = str_replace(binomial, "Sylvia subcaeruleum", "Sylvia subcoerulea")) %>%
mutate(binomial = str_replace(binomial, "Tchagra senegala", "Tchagra senegalus")) %>%
mutate(binomial = str_replace(binomial, "Tiaris olivacea", "Tiaris olivaceus")) %>%
mutate(binomial = str_replace(binomial, "Treron calva", "Treron calvus")) %>%
mutate(binomial = str_replace(binomial, "Turdoides caudatus", "Argya caudata")) %>%
mutate(binomial = str_replace(binomial, "Turdoides fulvus", "Argya fulva")) %>%
mutate(binomial = str_replace(binomial, "Turdoides hypoleucus", "Turdoides hypoleuca")) %>%
mutate(binomial = str_replace(binomial, "Turdoides leucocephalus", "Turdoides leucocephala")) %>%
mutate(binomial = str_replace(binomial, "Turdoides leucopygius", "Turdoides leucopygia")) %>%
mutate(binomial = str_replace(binomial, "Turdoides rubiginosus", "Argya rubiginosa")) %>%
mutate(binomial = str_replace(binomial, "Turdoides squamulatus", "Turdoides squamulata")) %>%
mutate(binomial = str_replace(binomial, "Turdoides tenebrosus", "Turdoides tenebrosa")) %>%
mutate(binomial = str_replace(binomial, "Turdus libonyanus", "Turdus libonyana")) %>%
mutate(binomial = str_replace(binomial, "Turnix castanota", "Turnix castanotus")) %>%
mutate(binomial = str_replace(binomial, "Turnix hottentotta", "Turnix hottentotus")) %>%
mutate(binomial = str_replace(binomial, "Turnix maculosa", "Turnix maculosus")) %>%
mutate(binomial = str_replace(binomial, "Turnix sylvatica", "Turnix sylvaticus")) %>%
mutate(binomial = str_replace(binomial, "Turnix varia", "Turnix varius")) %>%
mutate(binomial = str_replace(binomial, "Uraeginthus granatina", "Granatina granatina")) %>%
mutate(binomial = str_replace(binomial, "Urolais epichlora", "Urolais epichlorus")) %>%
mutate(binomial = str_replace(binomial, "Vireo atricapillus", "Vireo atricapilla")) %>%
mutate(binomial = str_replace(binomial, "Xanthotis macleayana", "Xanthotis macleayanus")) %>%
mutate(binomial = str_replace(binomial, "Xanthotis polygramma", "Xanthotis polygrammus"))