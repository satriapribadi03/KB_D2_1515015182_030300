domains
 product,usia = integer
 menjual,color = symbol
  age = byte
  price, mileage = ulong

predicates

  usia(usia,usia,usia) - procedure (i,i,o)
  nondeterm baju(menjual,mileage,age,color,price)

clauses
	
    usia(X,Y,Usia):-
	Usia=X+Y.
	baju(kaos,130000,3,red,12000).
  baju(hame,90000,4,gray,25000).

  

goal

  usia(9,10,Usia);
    baju(Menjual,_,_,_,Harga),Harga<30000. 