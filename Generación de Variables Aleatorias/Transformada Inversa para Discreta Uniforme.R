# FUNCIÓN PARA GENERAR UN CONJUNTO DE DATOS CON DISTRIBUCIÓN UNIFORME DISCRETA
# Método de Transformación Inversa

# m: Número elementos en la variable aleatoria
# n: Número de datos que desea generar

unifdis<-function(n,m){
  V<-runif(n)
  X<-numeric(n)
  for (i in 1:n){
    X[i]=floor(m*V[i])+1
  }
  return(X)
}
