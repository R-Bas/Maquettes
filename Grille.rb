require "gtk3"

class Grille < Gtk::Box

	def initialize()
		super(Gtk::Orientation.new(1), 0)

		image = Gtk::Image.new(:file => "test.png")
		self.add(image)
		label = Gtk::Label.new("Grille n°x")
		label.margin_top = 20
		self.add(label)
	end
end