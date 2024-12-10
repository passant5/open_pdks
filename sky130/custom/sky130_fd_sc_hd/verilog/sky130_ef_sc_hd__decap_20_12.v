/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_EF_SC_HD__DECAP_20_12_V
`define SKY130_EF_SC_HD__DECAP_20_12_V

/**
 * decap: Decoupling capacitance filler.
 *
 * Verilog wrapper for decap with size of 12 units.
 * This cell has been modified from sky130_fd_sc_hd__decap_12
 * to remove excess LI, so that when used extensively in a
 * padded region of a digital layout, it does not cause the
 * LI layer to exceed critical density.  Additionally, this
 * cell was modified from sky130_ef_sc_hd__decap_12 to remove
 * excess poly, so that when used extensively in a padded
 * region of a digital layout, it does not cause the POLY
 * layer to exceed critical density.  A combination of
 * cells _20_12, _40_12, _60_12, and _80_12 (representing
 * 20, 40, 60, and 80 percent of the original amount of poly)
 * can be used to achieve a target poly density.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_ef_sc_hd__decap_20_12 (
    VPWR,
    VGND,
    VPB ,
    VNB
);

    // Module ports
    input VPWR;
    input VGND;
    input VPB ;
    input VNB ;
    // No contents.
endmodule
`endcelldefine

/*********************************************************/
`else // If not USE_POWER_PINS
/*********************************************************/

`ifdef FUNCTIONAL

`celldefine
module sky130_ef_sc_hd__decap_20_12 ();
    // No contents.
endmodule
`endcelldefine

`else // If not FUNCTIONAL

`celldefine
module sky130_ef_sc_hd__decap_20_12 ();

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;
    // No contents.
endmodule
`endcelldefine

`endif // If not FUNCTIONAL

/*********************************************************/
`endif // If not USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_EF_SC_HD__DECAP_20_12_V


