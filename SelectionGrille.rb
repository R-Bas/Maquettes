require "gtk3"
require_relative "Grille"

class SelectionGrille < Gtk::ScrolledWindow

	def initialize()
		super()
		self.set_policy(Gtk::PolicyType::NEVER, Gtk::PolicyType::AUTOMATIC)
		self.expand = true

		grid = Gtk::Grid.new()
		grid.row_spacing = 40
		grid.column_spacing = 40
		grid.margin = 30

		4.times() do |x|
			8.times do |y|
				l = Grille.new()
				l.expand = true
				grid.attach(l, x, y, 1, 1)
			end
		end

		self.add(grid)
	end
end
