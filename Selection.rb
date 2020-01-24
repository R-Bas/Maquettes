require "gtk3"
require_relative "SelectionGrille"

class Selection < Gtk::Window

	def initialize()
		super("Hashi")
		self.set_default_size(300, 300)

		boxHorizontale = Gtk::Box.new(Gtk::Orientation.new(0), 0)
		self.add(boxHorizontale)

		stackDif = Gtk::Stack.new()
		sideDif = Gtk::StackSidebar.new()
		sideDif.stack = stackDif

		boxHorizontale.add(sideDif)
		boxHorizontale.add(stackDif)

		["Facile", "Moyen", "Difficile"].each() do |dif|
			stackDif.add_titled(SelectionGrille.new(), dif, dif)
		end
	end
end

fenetre = Selection.new()
fenetre.show_all()
Gtk.main()