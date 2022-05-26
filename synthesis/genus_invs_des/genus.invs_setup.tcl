################################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 05/25/2022 20:10:28
#
#
################################################################################
set allowMultiplePortPinWithoutMustjoin 1


# Design Import
################################################################################
setLibraryUnit -cap 1pf -time 1ns
## Reading FlowKit settings file
source genus_invs_des/genus.flowkit_settings.tcl

source genus_invs_des/genus.globals
init_design

# Reading metrics file
################################################################################
um::read_metric -id current genus_invs_des/genus.metrics.json 



# Mode Setup
################################################################################
source genus_invs_des/genus.mode

# Reading write_name_mapping file
################################################################################
if {[is_attribute -obj_type port original_name] && [is_attribute -obj_type pin original_name] && [is_attribute -obj_type pin is_phase_inverted]} {
  source genus_invs_des/genus.wnm_attrs.tcl
}

set edi_pe::pegConsiderMacroLayersUnblocked 1 
set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1 


# The following is partial list of suggested prototyping commands.
# These commands are provided for reference only.
# Please consult the Innovus documentation for more information.
#   Placement...
#     ecoPlace                     ;# legalizes placement including placing any cells that may not be placed
#     - or -
#     placeDesign -incremental     ;# adjusts existing placement
#     - or -
#     placeDesign                  ;# performs detailed placement discarding any existing placement
#   Optimization & Timing...
#     optDesign -preCTS            ;# performs trial route and optimization
#     timeDesign -preCTS           ;# performs timing analysis

