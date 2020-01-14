require "gtk3"

class Menu < Gtk::Window

	def initialize()
		super("Menu Principal")
		self.set_default_size(300, 300)

		boxVerticale = Gtk::Box.new(Gtk::Orientation.new(1), 0)
		boxVerticale.homogeneous = true
		boxVerticale.margin = 15
		boxVerticale.spacing = 10
		self.add(boxVerticale)

		boxVerticale.add(Gtk::Button.new(label: "Didacticiel"))
		boxVerticale.add(Gtk::Button.new(label: "Entraînement"))
		boxVerticale.add(Gtk::Button.new(label: "Classé"))
		boxVerticale.add(Gtk::Button.new(label: "Aventure"))
		boxVerticale.add(Gtk::Button.new(label: "Classement"))

		boxHorizontale = Gtk::Box.new(Gtk::Orientation.new(0), 0)
		boxHorizontale.homogeneous = true
		c = Gtk::Button.new(label: "Deconnexion")
		boxHorizontale.add(c)
		c = Gtk::Label.new("")
		c.hexpand = true
		boxHorizontale.add(c)
		c = Gtk::Button.new(label: "Quitter")
		boxHorizontale.add(c)
		boxVerticale.add(boxHorizontale)
	end
end

fenetre = Menu.new()
fenetre.show_all()
Gtk.main()