local trasnparent_apps = {
	"Thunar",
	"Code",
	"Discord",
	"Spotify",
	"Steam",
	"gedit",
	"Terminal",
	"gnome",
	"GNOME",
	"Archive Manager",
	"dconf",
}

local current_app = get_application_name()
print(current_app)
for _, app in ipairs(trasnparent_apps) do
	if string.find(current_app, app) then
		set_window_opacity(0.90)
		break
	end
end
