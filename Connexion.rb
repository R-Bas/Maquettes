require "gtk3"

class Connexion < Gtk::Window

	def initialize()
		super("Connexion")
		self.set_default_size(300, 300)

		boxVerticale = Gtk::Box.new(Gtk::Orientation.new(1), 0)
		boxVerticale.homogeneous = true
		boxVerticale.margin = 15
		self.add(boxVerticale)

		c = Gtk::Label.new()
		c.set_markup("<big><b>Hashi</b></big>")
		boxVerticale.add(c)
		c = Gtk::Label.new("Nom d'utilisateur :")
		c.margin_top = 5
		boxVerticale.add(c)
		c = Gtk::Entry.new()
		boxVerticale.add(c)
		c = Gtk::Label.new("Mot de passe :")
		boxVerticale.add(c)
		c = Gtk::Entry.new()
		boxVerticale.add(c)
		c = Gtk::Button.new(:label => "Connexion")
		c.margin_top = 20
		boxVerticale.add(c)
	end
end

fenetre = Connexion.new()
fenetre.show_all()
Gtk.main()