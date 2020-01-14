require "gtk3"

class Jeu < Gtk::Window

	def initialize()
		super("Fenêtre de Jeu")
		#provider = Gtk::CssProvider.new()
		#provider.load_from_data(".frame{border:10px solid red;}");
		#Gtk::StyleContext.add_provider_for_screen(Gdk::Screen.default, provider, Gtk::StyleProvider::PRIORITY_APPLICATION)
		self.set_default_size(300, 300)

		#boxHorizontale = Gtk::Box.new(Gtk::Orientation.new(0), 0)
		#boxVerticale.margin = 15

		pan = Gtk::Paned.new(Gtk::Orientation.new(0))
		grille = Gtk::Label.new("Grille")
		grille.hexpand = true

		boxVerticale = Gtk::Box.new(Gtk::Orientation.new(1), 0)
		c = Gtk::Label.new("Timer")
		c.margin_top = 15
		boxVerticale.add(c)
		c = Gtk::Button.new(:label => "Annuler")
		c.margin_top = 15
		boxVerticale.add(c)
		c = Gtk::Button.new(:label => "Refaire")
		boxVerticale.add(c)
		c = Gtk::Button.new(:label => "Aide")
		boxVerticale.add(c)
		c = Gtk::Button.new(:label => "Hypothèse")
		boxVerticale.add(c)
		c = Gtk::Label.new("Aide")
		c.margin_top = 15
		c.vexpand = true
		boxVerticale.add(c)
		c = Gtk::Button.new(:label => "Règles")
		boxVerticale.add(c)

		pan.add1(grille)
		pan.add2(boxVerticale)
		self.add(pan)
	end
end

fenetre = Jeu.new()
fenetre.show_all()
Gtk.main()