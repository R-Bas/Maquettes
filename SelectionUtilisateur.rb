class SelectionUtilisateur < Gtk::ScrolledWindow

	def initialize()
		super()
		self.set_policy(Gtk::PolicyType::NEVER, Gtk::PolicyType::AUTOMATIC)
		self.expand = true

		grid = Gtk::Grid.new()
		grid.row_spacing = 20
		grid.column_spacing = 20
		grid.margin = 5

		l = Gtk::Button.new(label: "Jacoboni")
		l.expand = true
		grid.attach(l, 0, 0, 1, 1)
		l = Gtk::Button.new(label: "ZiZeppelin")
		l.expand = true
		grid.attach(l, 1, 0, 1, 1)
		l = Gtk::Button.new(label: "Jacoboni")
		l.expand = true
		grid.attach(l, 0, 1, 1, 1)
		l = Gtk::Button.new(label: "ZiZeppelin")
		l.expand = true
		grid.attach(l, 1, 1, 1, 1)
		l = Gtk::Button.new(label: "Jacoboni")
		l.expand = true
		grid.attach(l, 0, 2, 1, 1)
		l = Gtk::Button.new(label: "Jacoboni")
		l.expand = true
		grid.attach(l, 1, 2, 1, 1)
		l = Gtk::Button.new(label: "ZiZeppelin")
		l.expand = true
		grid.attach(l, 0, 3, 1, 1)
		l = Gtk::Button.new(label: "ZiZeppelin")
		l.expand = true
		grid.attach(l, 1, 3, 1, 1)
		l = Gtk::Button.new(label: "ZiZeppelin")
		l.expand = true
		grid.attach(l, 0, 4, 1, 1)
		l = Gtk::Button.new(label: "ZiZeppelin")
		l.expand = true
		grid.attach(l, 1, 4, 1, 1)

		self.add(grid)
	end
end