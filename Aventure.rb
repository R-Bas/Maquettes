require "gtk3"

class Aventure < Gtk::Window

	def initialize()
		super("Mode Aventure")
		self.set_default_size(300, 300)

		image = Gtk::Image.new(:file => "Ressources/map.png")
		self.add(image)
	end
end

fenetre = Aventure.new()
fenetre.show_all()
Gtk.main()