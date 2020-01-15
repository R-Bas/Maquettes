require "gtk3"
require_relative "SelectionGrille"

class Selection < Gtk::Window

	def initialize()
		super("Selection difficulté")
		self.set_default_size(300, 300)

		boxHorizontale = Gtk::Box.new(Gtk::Orientation.new(0), 0)
		self.add(boxHorizontale)

		stackDif = Gtk::Stack.new()
		sideDif = Gtk::StackSidebar.new()
		sideDif.stack = stackDif

		boxHorizontale.add(sideDif)
		boxHorizontale.add(stackDif)

		["Facile", "Moyen", "Difficile"].each() do |dif|
			boxH = Gtk::Box.new(Gtk::Orientation.new(0), 0)
			stackTaille = Gtk::Stack.new()
			sideTaille = Gtk::StackSidebar.new()
			sideTaille.stack = stackTaille
			["Taille 1", "Taille 2", "Taille 3"].each() do |taille|
				grilles = SelectionGrille.new()
				grilles.expand = true
				stackTaille.add_titled(grilles, taille, taille)
			end
			boxH.add(sideTaille)
			boxH.add(stackTaille)
			stackDif.add_titled(boxH, dif, dif)
		end
	end
end

fenetre = Selection.new()
fenetre.show_all()
Gtk.main()