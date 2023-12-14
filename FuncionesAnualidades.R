---
title: "proyectoIntegrador"
author: "Solanje Aide Salgado Mendez"
date: "`r Sys.Date()`"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

creacion de funciones para calcular de los 3 tipos de anualidades de clases 

#para valor futuro conocido 
#VF
```{r}
#funcion para calcular el valor futuro (VF)
VA=10         #valor actual
r=1           #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0           # valor inicial n de las iteraciones

while (DeltaVF>umbral) {
   n=n+1
  # calculo del valor futuro
  VF=VA*(1+(1/n))^n
  # actualizamos el incrmeento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones
  DeltaVF=VF-VF0
  VF0=VF
  
}
VF
DeltaVF
n
```                                                                                                                                                                                                                                                                                                                                                                                                        
#pagoVF 
```{r}
#calculo de pagoVF
r=1
n=0
VF=1
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.00001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
p=0
while (DeltaVF>umbral) {
  n=n+1
  #calculo de pagoVF
  p=(VF0/(1+r)^n)
  
  DeltaVF=VF-VF0
  
}
DeltaVF
p
n
 
```

#tasaVF
```{r}
#funcion para calcular la tasa necesaria , dada una anualidad A, para llegar a un valor futuro

VF=2
VA=1
n=0
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.00001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
r=0
while (DeltaVF>umbral) {
  #calculo de la tasa 
  r=((VF/VA)^1/n -1)
  DeltaVF=VF0-VF
}
 
n=n+1
DeltaVF=VF-VF0
i
```
#periodosVF

```{r}
#funcion para calcular periodosVF
VA=10         #valor actual
r=1           #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0           # valor inicial n de las iteraciones
VF=1
while (DeltaVF>umbral) {
  # calculo del valor periodo 
  n=log(VF/VA)/log(1+r)
  # actualizamos el incrmeento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones
  DeltaVF=VF-VF0
  VF0=VF
  
}
VF
DeltaVF
n
```

#funciones para valor actual conocido VA
```{r}
VF=1
n=0
r=1
paro=10000
umbral=0.00001
DeltaVF=Inf
while (DeltaVF>umbral) {
#calculo del VA
  VA=(VF/(1+n)*r)
  DeltaVF=VF-VF0
  VF0=VF
}
VF
DeltaVF
n  

```

#funcion para calcular la tasaVA
tasa de interes 
```{r}
VF=1
VA=1
n=0
paro=10000
umbral=0.00001
DeltaVF=Inf
while (DeltaVF>umbral) {
#calculo de la tasa de interes 
  r=((VF/VA-1)/n)
  DeltaVF=VF-VF0
  VF0=VF
}
VF
DeltaVF
n  

```


#funcion para calcular el pagoVA

```{r}
#calculo de pagoVA
VA=1
r=1
n=0
VF=1
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.00001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
p=0
while (DeltaVF>umbral) {
  n=n+1
  #calculo de pagoVF
  p=(VA*(1+r)^-n)
  
  DeltaVF=VF-VF0
  
}
DeltaVF
p
n
 
```

#periodosVA
```{r}
#funcion para calcular periodosVF
VA=10         #valor actual
r=1           #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0           # valor inicial n de las iteraciones
VF=1
while (DeltaVF>umbral) {
  # calculo del valor periodo 
  n=(VF/VA-1)/r  
  # actualizamos el incrmeento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones
  DeltaVF=VF-VF0
  VF0=VF
  
}
VF
DeltaVF
n
```
#Deberá hacer 18 funciones para los siguientes tipos de anualidades
#anualidades vencidasVF
```{r}
#funcion para calcular el valor futuro (VF)
A=1     #valor actual
r=0.1         #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0         # valor inicial n de las iteraciones
VF=1
while (DeltaVF>umbral) {
   n=n+1
  # calculo de anualidades VFvenc
   
  VFvenc=A*((1+r)^n-1/r)
 
  # actualizamos el incremento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones
  DeltaVF=VF-VF0
  VF0=VF
  
}
VF
DeltaVF
n
```  
#tasaVFvenc
```{r}
#funcion para calcular tasaVFvenc
A=1     #ahorro 
recibido =2        #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0         # valor inicial n de las iteraciones
VF=1
while (DeltaVF>umbral) {
   n=n+1
  # calculo de la tasaVFvenc
   
  tasaVFvenc=((1+r)^n-1/r)
 
  # actualizamos el incremento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones
  DeltaVF=VF-VF0
  VF0=VF
  
}
VF
DeltaVF
n
```  
#periodosVFvenc
```{r}
#funcion para calcular periodosVFvenc
A=1     #ahorro
r=2        #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0         # valor inicial n de las iteraciones
VF=1
while (DeltaVF>umbral) {
   n=n+1
  # calculo de la periodosVFvenc
   
  periodosVFvenc=log(VF*r/A+1)/log(1+r)
 
  # actualizamos el incremento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones
  DeltaVF=VF-VF0
  VF0=VF
  
}
VF
DeltaVF
n
```  

#anualidades VAvenc

```{r}
#funcion para calcular VAvenc
A=1         #ahorro 
r=2        #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0         # valor inicial n de las iteraciones
VF=1
while (DeltaVF>umbral) {
   n=n+1
  # calculo de la tasaVFvenc
   
  VAvenc=A*(1-(1+r)^-n/r)
 
  # actualizamos el incremento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones
  DeltaVF=VF-VF0
  VF0=VF
  
}
VF
DeltaVF
n
```  

#periodosVAvenc
```{r}
#funcion para calcular periodosVFvenc
A=1     #ahorro
r=2        #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0         # valor inicial n de las iteraciones
VF=1
while (DeltaVF>umbral) {
   n=n+1
  # calculo de la periodosVFvenc
   
  periodosVFvenc=(-log(1-(VA*r/A))/log(1+r))
 
  # actualizamos el incremento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones
  DeltaVF=VF-VF0
  VF0=VF
  
}
VF
DeltaVF
n
```  


#tasaVAvenc
```{r}
#funcion para calcular tasaVFvenc
A=1     #ahorro 
r=2        #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0         # valor inicial n de las iteraciones
VF=1

while (DeltaVF>umbral) {
   n=n+1
  # calculo de la tasaVFvenc
   
  tasaVAvenc=(1-(1+r)^-n/r)
 
  # actualizamos el incremento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones
  DeltaVF=VF-VF0
  VF0=VF
  
}
VF
DeltaVF
n
```  

#anualidades anticipadas conociendo VF

```{r}
#funcion para calcular VFant
A=1     #ahorro 
r=2        #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0         # valor inicial n de las iteraciones
VF=1

while (DeltaVF>umbral) {
   n=n+1
  # calculo de la tasaVFvenc
   
  VFant=(((1+r)-1/r)*(1+r))
 
  # actualizamos el incremento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones
  DeltaVF=VF-VF0
  VF0=VF
  
}
VF
DeltaVF
n
``` 
#tasaVAant
```{r}
#funcion para calcular tasaVAant
A=1     #ahorro 
r=2        #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0         # valor inicial n de las iteraciones
VF=1

while (DeltaVF>umbral) {
   n=n+1
  # calculo de la tasaVFvenc
   
  tasaVAant=(((1+r)^n-1)/r)
 
  # actualizamos el incremento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones
  DeltaVF=VF-VF0
  VF0=VF
  
}
VF
DeltaVF
n
```  
#periodosVAant
```{r}
#funcion para calcular periodosVAant
A=1     #ahorro 
r=2        #tasa de interes 
paro=10 
VF0=1# numero de iteraciones que deseamos realizar 
umbral=0.0001 # asigno un valor al umbral 
DeltaVF=Inf   # asigno un valor inicial del incremento del valor futuro en cada iteracion 
n=0         # valor inicial n de las iteraciones
VF=1

while (DeltaVF>umbral) {
   n=n+1
   
  #calculo del VAant
   
   VAant=(((A*(1-(1+r)^-n)/r)*(1+r))
#actualizamos el incremento del VF de esta iteracion como el VF de la iteracion anterior para futuras iteraciones

  DeltaVF=VF-VF0
  VF0=VF
}
VF
DeltaVF
n
```
