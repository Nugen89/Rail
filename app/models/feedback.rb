class Feedback < ActiveRecord::Base

	include EmailManager

	TYPES = [
			 'Complaint',
			 'Suggestion',
			 'Feedback',
			 'Compliment'
			]

	TOPICS = [
			'Train service',
			'Train timetable',
			'Tickets & Fares',
			'Trackwork',
			'Cleanliness',
			'Passenger Information'
			]

	STATIONS = %w[
							Aberdeen
							Adamstown
							Airport\ -\ Domestic\
							Airport\ -\ International\
							Albion\ Park\
							Allawah
							Arncliffe
							Artarmon
							Ashfield
							Asquith
							Auburn
							Austinmer
							Awaba
							Balmoral
							Banksia
							Bankstown
							Bardwell\ Park\
							Bargo
							Bathurst
							Beecroft
							Bell
							Bellambi
							Belmore
							Berala
							Beresfield
							Berowra
							Berry
							Beverly\ Hills\
							Bexley\ North\
							Birrong
							Blackalls\ Park\
							Blackheath
							Blacktown
							Blaxland
							Bomaderry\ (Nowra)\
							Bombo
							Bondi\ Junction\
							Booragul
							Bowral
							Branxton
							Broadmeadow
							Bullaburra
							Bulli
							Bundanoon
							Burradoo
							Burrawang
							Burwood
							Buxton
							Cabramatta
							Camellia
							Campbelltown
							Campsie
							Canley\ Vale\
							Canterbury
							Cardiff
							Caringbah
							Carlingford
							Carlton
							Carramar
							Casula
							Central
							Chatswood
							Cheltenham
							Chester\ Hill\
							Circular\ Quay\
							Civic
							Clarendon
							Clyde
							Coalcliff
							Cockle\ Creek\
							Coledale
							Colo\ Vale\
							Como
							Concord\ West\
							Coniston
							Corrimal
							Couridjah
							Cowan
							Cringila
							Cronulla
							Croydon
							Dapto
							Denistone
							Domestic\ Airport\
							Doonside
							Dora Creek
							Douglas Park
							Dulwich Hill
							Dundas
							Dungog
							Dunmore\ (Shellharbour)\
							East\ Hills\
							East\ Maitland\
							East\ Richmond\
							Eastwood
							Edgecliff
							Emu\ Plains\
							Engadine
							Epping
							Erskineville
							Exeter
							Fairfield
							Fairy\ Meadow\
							Fassifern
							Faulconbridge
							Flemington
							Gerringong
							Glenbrook
							Glenfield
							Gordon
							Gosford
							Goulburn
							Granville
							Green\ Square\
							Greta
							Guildford
							Gymea
							Hamilton
							Harris\ Park\
							Hawkesbury\ River\
							Hazelbrook
							Heathcote
							Helensburgh
							Hexham
							High\ Street\
							Hill\ Top\
							Hilldale
							Holsworthy
							Homebush
							Hornsby
							Hurlstone\ Park\
							Hurstville
							Ingleburn
							International\ Airport\
							Jannali
							Katoomba
							Kelso
							Kembla\ Grange\
							Kiama
							Killara
							Kings\ Cross\
							Kingsgrove
							Kingswood
							Kirrawee
							Kogarah
							Koolewong
							Kotara
							Lakemba
							Lapstone
							Lawson
							Leightonfield
							Leumeah
							Leura
							Lewisham
							Lidcombe
							Linden
							Lindfield
							Lisarow
							Lithgow
							Liverpool
							Lochinvar
							Loftus
							Lysaghts
							Macarthur
							Macdonaldtown
							Macquarie\ Fields\
							Macquarie\ Park\
							Macquarie\ University\
							Maitland
							Marayong
							Marrickville
							Martin\ Place\
							Martins\ Creek\
							Marulan
							Mascot
							Meadow\ Flat\
							Meadowbank
							Medlow\ Bath\
							Menangle
							Menangle\ Park\
							Merrylands
							Metford
							Milsons\ Point\
							Mindaribba
							Minnamurra
							Minto
							Miranda
							Mittagong
							Morisset
							Mortdale
							Moss\ Vale
							Mount\ Colah
							Mount\ Druitt\
							Mount\ Kuring-gai\
							Mount\ Lambie\
							Mount\ Victoria\
							Mulgrave
							Museum
							Muswellbrook
							Narara
							Narwee
							Newcastle
							Newtown
							Niagara\ Park\
							Normanhurst
							North\ Ryde\
							North\ Strathfield\
							North\ Sydney\
							North\ Wollongong\
							Oak\ Flats\
							Oatley
							Olympic\ Park\
							Otford
							Ourimbah
							Padstow
							Panania
							Parramatta
							Paterson
							Pendle\ Hill\
							Pennant\ Hills\
							Penrith
							Penrose
							Penshurst
							Petersham
							Picton
							Point\ Clare\
							Port\ Kembla\
							Port\ Kembla\ North\
							Punchbowl
							Pymble
							Quakers\ Hill\
							Raglan
							Redfern
							Regents\ Park\
							Revesby
							Rhodes
							Richmond
							Riverstone
							Riverwood
							Robertson
							Rockdale
							Rooty\ Hill\
							Rosehill
							Roseville
							Rydalmere
							Sandgate
							Scarborough
							Schofields
							Scone
							Sefton
							Seven\ Hills\
							Singleton
							Springwood
							St\ James\
							St\ Leonards\
							St\ Marys\
							St\ Peters\
							Stanmore
							Stanwell\ Park\
							Strathfield
							Summer\ Hill\
							Sutherland
							Sydenham
							Tahmoor
							Tallong
							Tarro
							Tascott
							Telarah
							Telopea
							Tempe
							Teralba
							Thirlmere
							Thirroul
							Thornleigh
							Thornton
							Toongabbie
							Toronto
							Town\ Hall\
							Towradgi
							Tuggerah
							Turramurra
							Turrella
							Unanderra
							Valley\ Heights\
							Victoria\ Street\
							Villawood
							Vineyard
							Wahroonga
							Waitara
							Wallerawang
							Wallarobba
							Warabrook\ (University)\
							Waratah
							Warnervale
							Warrawee
							Warrimoo
							Warwick\ Farm\
							Waterfall
							Waverton
							Wentworth\ Falls\
							Wentworthville
							Werrington
							West\ Ryde\
							Westmead
							Wickham
							Wiley\ Park\
							Windsor
							Wingello
							Wirragulla
							Wolli\ Creek\
							Wollongong
							Wollstonecraft
							Wombarra
							Wondabyne
							Woodford
							Woolooware
							Woonona
							Woy\ Woy\
							Wyee
							Wynyard
							Wyong
							Yagoona
							Yennora
							Yerrinbool
							Yetholme
							Zig\ Zag\
						]

	LINES = [
			'Eastern Suburbs & Illawarra Line',
			'Bankstown Line',
			'Inner West Line',
			'Airport & East Hills Line',
			'South Line',
			'Cumberland Line',
			'North Shore Line',
			'Western Line',
			'Carlingford Line',
			'Olympic Park Line',
			'Northern Line',
			'South coast Line',
			'Southern Highlands Line',
			'Blue Mountains Line',
			'Newcastle & Central Coast Line',
			'Hunter Line'
			]

	COMMON_COMPLAINTS = [
						'Major delays',
						'Dirty trains',
						'Train too packed',
						'Not enough services',
						'Other'
						]

  validates_presence_of :comment, :line, :station


  scope :latest, -> { order("created_at DESC") }


end


