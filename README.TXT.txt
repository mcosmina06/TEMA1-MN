***Mandru Cosmina***
********313CB*******
		
					-Tema 1 MN-

	Task1: Inaintea inceperii lucrului cu fisiere le-am deschis cu functia fopen. 
	Numarul de clustere l-am citit cu functia load iar matricea points cu functia
	dlmread, avand ca parametrii fisierul destinat citirii, separatorul dintre 
	elemente de pe fiecare linie, linia de la care se incepe citirea, 5 - pentru 
	a evita comentariile din fisierul de input, si coloana de start din fisier, in 
	acest caz 1. Functia "format long g" permite citirea din fisier a unor numere 
	de tipul long int, fara aceasta se citeau numerele doar cu 4 zecimale dupa 
	virgula. La sfarsitul functii se inchid fisierele cu functi fclose.
	Task2: Incep prin a salva dimensiunile matricei points. In functie de numarul
	centroizilor dati, NC, initiez fiecare linie, a matricei de centroizi, random
	folosind functiile specifice matlab - ului in acest sens. Numarul de iteratii
	ales este de 500, aceasta fiind si ultima conditie de oprire a programului. In
	matricea centroid_group, avand NC linii, in functie de indicele clusterului 
	stochez suma elementelor iar in centroid_nb_el se stocheaza numarul de elemente
	pe care le contin clusterele. Parcurg fiecare linie a matricei si initialize 
	min cu cel mai mare numar real dat de functia realmax. Calculez distanta
	euclidiana dintre punct si fiecare centroid si se alege grupul de centroid din
	care va face parte dupa distana, acolo unde este minima. In cazul in care un 
	centroid nu are nicun elemnet se reinitializea random, atribuindu - i - se si 
	un elemnt random din matricea points. In matricea aux_centroid sunt stocate 
	valorile centrilor clusterelor. Urmatorul pas este de a verifica daca diferenta
t	dintre pozitia centroidului curent si cel anterior este destul de mica pentru
	ca algoritmul sa inceteze.
	Task3: Stochez dimensiunile matricilor points si centroids. Matricele x, y, z, si
	c vor reprezenta parametrii functiei scatter3 ce va realiza graficul 3D. Numarul
	de linii al acestor matrici este egal numarul de linii al matricei points. In x, 
	y, z sunt stocate valorile de pe fiecare linie din matricea points de pe coloana 1,
	2, respectiv 3. Pentru fiecare punct din points se calculeaza distanta euclidiana
	cu fiecare centroid, afland astfel de ce centroid apartine, salvand indicele 
	acestuia. In c, la inceputul functiei, creez o matrice de culori random in functie
	de numarul de centroizi. Astfel, in functie de indicele centroidului determinat la
	fiecare linie, stiu ce culoare sa atribui. In final apelez functia scatter3 cu 
	parametrii specificati anterior.
	Task4: Salvez dimineasiunile matricelor points si centroids date ca parametru
	functie compute_cost. In matricea centroid_group voi stoca suma distantelor 
	euclidene dintre punctul si dinatanta pana la centroidul grupului din care face
	parte. Pentru fiecare punct din matricea points aflu de ce centroid apartine si ii
	salvez indicele pentru a sti in ce linie a matricei centroid_group adaug distanta
	calculata. In final calculez costul prin functia sum aplicata matricei centroid_group.
	Task5: Citesc matricea points din fisier la fel ca in functia de read_input_data.
	In matricea x voi retinele numarul de clustere ce va fi intre 1 si 10, iar in 
	matricea y valoarea costului calculat in functie de NC dat, apeland functia creata
	la pasul anterior de calcul a costului. In final apelez functia plot ce va crea un 
	grafic 2D cu datele din x si y.
	Problema referitoare la diferenta dintre vmchecker si checker-ul local: Pe vmchecker
	la fucntia dlmread treuia ca si coloana de start 0 iar pe cel local 1.