lista <- as.numeric(readLines("Data/Semana1.txt"))
 
suma <- 0
num_a <- 0
num_b <- 0
parar <- F


## Parte 1

for (i in 1:length(lista)) {
  if(parar){break}
  num_a <- lista[i]
  for (j in 1:length(lista)) {
    num_b <- lista[j]
    suma <- num_a + num_b
    if(suma == 2020){
      if(num_a != num_b){
        parar <- T
        break
      }
    }
  }
}

print(num_a * num_b)


## Parte 2

num_c <- 0
parar <- F


for (i in 1:length(lista)) {
  if(parar){break}
  num_a <- lista[i]
  for (j in 1:length(lista)) {
    if(parar){break}
    num_b <- lista[j]
    for (k in 1:length(lista)) {
      num_c <- lista[k]
      suma <- num_a + num_b + num_c
      if(suma == 2020){
        if(num_a != num_b & num_b != num_c & num_a != num_c){
          parar <- T
          break
        }
        
      }
    }
  }
}

print(num_a * num_b * num_c)
