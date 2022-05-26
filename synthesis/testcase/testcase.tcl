if { [catch {set testDir [file normalize $env(testDir)]} retVar] != 0 } {
  set testDir [file dirname [info script]]
}
set env(testDir) $testDir
set dataDir ${testDir}/design
set libDir ${testDir}/libs
 
# Add your testcase commands after loading design compatible common ui
if { [is_common_ui_mode] } {
  read_db ${dataDir}/top.enc.dat
} else {
  source ${dataDir}/top.enc
}
 
 
# exit
