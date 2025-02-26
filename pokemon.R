read_xlsx("C:\Users\amol-\Downloads\pokemon.xlsx")->pokemon
read_xlsx("C:\\Users\\amol-\\Downloads\\pokemon.xlsx") -> pokemon
View(pokemon)
table(pokemon$is_legendary)
table(pokemon$generation)
table(pokemon$type1)
min(pokemon$hp)
max(pokemon$hp)
min(pokemon$speed)
max(pokemon$speed)
is.na(pokemon$abilities)
sum(is.na(pokemon$abilities))
colnames(pokemon)
colnames(pokemon)=="type1"
colnames(pokemon)[colnames(pokemon)=="type1"]<-"primary_type"
colnames(pokemon)[colnames(pokemon)=="type2"]<-"secondary_type"
colnames(pokemon)[colnames(pokemon)=="name"]<-"pokemon_name"
pokemon %>% filter(pokemon$primary_type=="grass")->grass_pokemon
View(grass_pokemon)
min(grass_pokemon$speed)#10
max(grass_pokemon$speed)#145
mean(grass_pokemon$sp_attack)#74.32
mean(grass_pokemon$sp_defense)#69.23
library(ggplot2)
ggplot(data=grass_pokemon,aes(x=hp))+geom_histogram()
ggplot(data=grass_pokemon,aes(x=hp))+geom_histogram(fill="yellow")
ggplot(data=grass_pokemon,aes(x=height_m))+geom_histogram(fill="green")
ggplot(data=grass_pokemon,aes(x=weight_kg))+geom_histogram(fill="red")
ggplot(data=grass_pokemon,aes(x=is_legendary))+geom_bar(fill="blue")
pokemon %>% filter(pokemon$primary_type=="fire")->fire_pokemon
View(fire_pokemon)
min(fire_pokemon$speed)#20
max(fire_pokemon$speed)#126
mean(fire_pokemon$sp_attack)#87.73
mean(fire_pokemon$sp_defense)#71.54
ggplot(data = fire_pokemon,aes(x=generation,fill = as.factor(generation)))+geom_bar()
ggplot(data = fire_pokemon,aes(x=secondary_type,fill = as.factor(secondary_type)))+geom_bar()
ggplot(data = fire_pokemon,aes(x=sp_attack,y=sp_defense))+geom_point()
ggplot(data = fire_pokemon,aes(x=height_m,y=weight_kg))+geom_point()
