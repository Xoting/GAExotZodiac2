import datetime
from google.appengine.ext import db
from google.appengine.api import users


class Guestbook(db.Model):
	zodiac = db.StringProperty(required=True)
	frase = db.StringProperty(required=True)
	fecha = db.StringProperty()
	naix = db.DateProperty()
