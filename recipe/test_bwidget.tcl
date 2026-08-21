# Load BWidget and fail loudly if it is missing.
set version [lindex $argv 0]
if {[catch {package require -exact BWidget $version} err]} {
    puts stderr "failed to load BWidget $version: $err"
    puts stderr "auto_path: $auto_path"
    exit 1
}
puts "loaded BWidget [package present BWidget] with Tcl [info patchlevel]"
exit 0
