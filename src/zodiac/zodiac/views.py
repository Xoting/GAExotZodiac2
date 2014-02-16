def root_view( request ):
	from models import *
	import datetime, random
	from datetime import date
	from time import gmtime, strftime
	

		
	visites= Guestbook.all()
	
	a = datetime.date.today().year
	
	dia = request.POST.get("dia");
	if not dia:
		return {"project":"Zodiac","dia":"","mes":"","imatges":"","frase":"","visites":visites}
	
	mes = request.POST.get("mes");
	naix = date(2010,int(mes),int(dia))

	""""Taules de Zodiac"""
	zod=[date(2010,1,21),date(2010,2,20),date(2010,3,21),date(2010,4,21),date(2010,5,22),date(2010,6,22),date(2010,7,23),date(2010,8,24),date(2010,9,24),date(2010,10,24),date(2010,11,23),date(2010,12,22)]
	zodimg=["/static/aquarius.jpg","static/piscis.jpg","/static/aries.jpg","static/tauro.jpg","static/gemini.jpg","static/cancer.jpg","static/leo.jpg","static/virgo.jpg","static/libra.jpg","static/escorpio.jpg","static/sagitari.jpg","static/capricorn.jpg"]
	zodname=["aquarius","piscis","aries","tauro","gemini","cancer","leo","virgo","libra","escorpio","sagitari","capricorn"]
	frases=["Trobaras feina !!","Tindras sort amb l'amor","Guanyaras molts diners","Faras nous amics","Viuras una increible aventura","Tindras molta mala sort :O"]
	
	i=0
	while zod[i] <= naix:
		i=i+1
	i=i-1
	j= random.randint(0, 5)
	
	naix = date(a,int(mes),int(dia))
	
	""""Base de Dades GAE"""
	g = Guestbook(zodiac=zodname[i],
             frase=frases[j])
	g.fecha = strftime("%Y-%m-%d %H:%M:%S", gmtime())
	g.naix = naix
	g.put()	
	
	visites= Guestbook.all()
	
	for guest in visites:
		gzod = guest.zodiac
		gfra = guest.frase
		gfech = guest.fecha
		gnaix = guest.naix
		
	return {"project":"Zodiac","dia":dia,"mes":mes,"imatges":zodimg[i],"frase":frases[j],"visites":visites}
