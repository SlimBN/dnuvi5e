# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Category.create ([{ :name => 'Idees de cadeaux', :icon => 'gift', :slug => 'gifts', :description => "" },
				{ :name => 'Restauration', :icon => 'food', :slug => 'food', :description => "" },
				{ :name => 'Cinema', :icon => 'cinema', :slug => 'cinema', :description => "" },
				{ :name => 'Architecture', :icon => 'home', :slug => 'architecture', :description => "" },
				{ :name => 'Arts', :icon => 'art', :slug => 'arts', :description => "" },
				{ :name => 'Bricolage et Creativite', :icon => '', :slug => 'bricolage', :description => "" },
				{ :name => 'Musiques', :icon => 'music', :slug => 'music', :description => "" },
				{ :name => 'Citations', :icon => 'writings', :slug => 'citations', :description => "" },
				{ :name => 'Coiffure et Beaute', :icon => 'education', :slug => 'hairstyles', :description => "" },
				{ :name => 'Design', :icon => 'education', :slug => 'design', :description => "" },
				{ :name => 'Geek & Nerds', :icon => 'games', :slug => 'geek', :description => "" },
				{ :name => 'Memes', :icon => 'memes', :slug => 'memes', :description => "" },
				{ :name => 'Illustrations', :icon => 'games', :slug => 'illustrations', :description => "" },
				{ :name => 'Mariages', :icon => 'religion', :slug => 'mariages', :description => "" },
				{ :name => 'Mode masculine', :icon => 'education', :slug => 'men-fashion', :description => "" },
				{ :name => 'Mode feminine', :icon => 'education', :slug => 'women-fashion', :description => "" },
				{ :name => 'Fetes et Concerts', :icon => 'education', :slug => 'party', :description => "" },
				{ :name => 'Photographies', :icon => 'photography', :slug => 'photography', :description => "" },
				{ :name => 'Produits', :icon => 'avendre', :slug => 'produits', :description => "" },
				{ :name => 'Sante et Style de Vie', :icon => 'health', :slug => 'lifestyle', :description => "" },
				{ :name => 'Sciences', :icon => 'genetics', :slug => 'sciences', :description => "" },
				{ :name => 'Sports', :icon => 'sport', :slug => 'sports', :description => "" },
				{ :name => 'Technologies', :icon => 'phones', :slug => 'technologies', :description => "" },
				{ :name => 'Voitures et Moteurs', :icon => 'car', :slug => 'cars', :description => "" },
				{ :name => 'Bateaux', :icon => 'education', :slug => 'boats', :description => "" },
				{ :name => 'Voyages', :icon => 'travel', :slug => 'travels', :description => "" },
				{ :name => 'Spirituel', :icon => 'spiritual', :slug => 'health', :description => "" }])


State.create ([{ :name => "Ariana", :slug => "ariana", :country_id => 1},
				{ :name => "Beja", :slug => "beja", :country_id => 1},
				{ :name => "Ben Arous", :slug => "ben-arous", :country_id => 1},
				{ :name => "Bizerte", :slug => "bizerte", :country_id => 1},
				{ :name => "Gabes", :slug => "gabes", :country_id => 1},
				{ :name => "Gafsa", :slug => "gafsa", :country_id => 1},
				{ :name => "Jendouba", :slug => "jendouba", :country_id => 1},
				{ :name => "Kairouan", :slug => "kairouan", :country_id => 1},
				{ :name => "Kasserine", :slug => "kasserine", :country_id => 1},
				{ :name => "Kebili", :slug => "kebili", :country_id => 1},
				{ :name => "Kef", :slug => "kef", :country_id => 1},
				{ :name => "Mahdia", :slug => "mahdia", :country_id => 1},
				{ :name => "Manouba", :slug => "manouba", :country_id => 1},
				{ :name => "Medenine", :slug => "medenine", :country_id => 1},
				{ :name => "Monastir", :slug => "monastir", :country_id => 1},
				{ :name => "Nabeul", :slug => "nabeul", :country_id => 1},
				{ :name => "Sfax", :slug => "sfax", :country_id => 1},
				{ :name => "Sidi Bouzid", :slug => "sidi-bouzid", :country_id => 1},
				{ :name => "Siliana", :slug => "siliana", :country_id => 1},
				{ :name => "Sousse", :slug => "sousse", :country_id => 1},
				{ :name => "Tataouine", :slug => "tatouine", :country_id => 1},
				{ :name => "Tozeur", :slug => "tozeur", :country_id => 1},
				{ :name => "Tunis", :slug => "tunis", :country_id => 1},
				{ :name => "Zaghouan", :slug => "zaghouan", :country_id => 1}])


Country.create ([{ :name => "Tunisie", :slug => "tunisia"},
				{ :name => "France", :slug => "france"},
				{ :name => "USA", :slug => "usa"}])




Currency.create ([{ :name => "Dinar Tunisie", :symbol => "TND"},
				{ :name => "Euro", :symbol => "€"},
				{ :name => "USA", :symbol => "$"}])


