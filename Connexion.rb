require "gtk3"
require_relative "SelectionUtilisateur"

class Connexion < Gtk::Window

	def initialize()
		super("Connexion")
		self.set_default_size(300, 300)

		boxVerticale = Gtk::Box.new(Gtk::Orientation.new(1), 0)
		boxVerticale.margin = 15
		self.add(boxVerticale)


		stack = Gtk::Stack.new()
		switcher = Gtk::StackSwitcher.new()
		switcher.stack = stack


		connexion = Gtk::Box.new(Gtk::Orientation.new(1), 0)
		connexion.add(SelectionUtilisateur.new())

		inscription = Gtk::Box.new(Gtk::Orientation.new(1), 0)
		c = Gtk::Label.new("Nom d'utilisateur :")
		c.margin_top = 20
		inscription.add(c)
		c = Gtk::Entry.new()
		c.margin_top = 20
		inscription.add(c)
		c = Gtk::Button.new(label: "Valider")
		c.margin_top = 20
		inscription.add(c)

		stack.add_titled(connexion, "Se connecter", "Se connecter")
		stack.add_titled(inscription, "Creer un compte", "Créer un compte")
		stack.margin_top = 15
		boxVerticale.add(switcher)
		boxVerticale.add(stack)
	end
end

fenetre = Connexion.new()
fenetre.show_all()
Gtk.main()