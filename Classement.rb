require "gtk3"
require_relative "ListeClassement"

class Classement < Gtk::Window

	def initialize()
		super("Classement")
		self.set_default_size(300, 300)

		boxVerticale = Gtk::Box.new(Gtk::Orientation.new(1), 0)
		boxVerticale.margin = 15
		self.add(boxVerticale)


		stack = Gtk::Stack.new()
		switcher = Gtk::StackSwitcher.new()
		switcher.stack = stack
		stack.add_titled(ListeClassement.new(), "Facile", "Facile")
		stack.add_titled(ListeClassement.new(), "Moyen", "Moyen")
		stack.add_titled(ListeClassement.new(), "Difficile", "Difficile")
		stack.margin_top = 15
		boxVerticale.add(switcher)
		boxVerticale.add(stack)
	end
end

fenetre = Classement.new()
fenetre.show_all()
Gtk.main()