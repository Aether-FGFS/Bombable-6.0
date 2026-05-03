#
# Bombable addon
#
# Started by Brent Hugh
# Started in 2009
#
# Converted to a FlightGear addon by
# Brendan Black, Feb 2021
#
# Corrected errors in bombable.nas and bombableinclude.xml
# Helijah, Apr 2025
#
# MP system changed to MPbroadcast 
# Aether, Apr 2026
#
# Added AI faction and button to allow friendly AI fire 
# Aether, May 2026

var main = func( addon ) {
  var root               = addon.basePath;
  var myAddonId          = addon.id;
  var mySettingsRootPath = "/addons/by-id/" ~ myAddonId;

  # setting root path to addon
  setprop("/sim/bombable/root_path", root);

  # load scripts
  foreach(var f; ['bombable.nas'] ) {
    io.load_nasal( root ~ "/Nasal/" ~ f, "bombable" );
  }
}
