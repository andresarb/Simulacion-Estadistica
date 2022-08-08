# FUNCIÓN PARA GENERAR UN CONJUNTO DE DATOS CON DISTRIBUCIÓN UNIFORME DISCRETA
# Método de Transformación Inversa

# k: Número elementos en la variable aleatoria
# u: Número de datos que desea generar

unifdis <- function(u,k) {
  V<-runif(u)
  X<-numeric(u)
  for(i in 1:u){
    j=1
    while((X[i])==0){
      if(V[i]<(j*(1/k))){
        X[i]<-j
      }else {
        j<-j+1
      }
    }
  }
  return(X)
}
