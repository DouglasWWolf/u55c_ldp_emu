

module aximm_stall # (parameter DW=512, parameter AW=64, parameter IW=2)
(
    input clk,

    input stall,

    //==================  This is an AXI4-slave interface  =====================

    // "Specify write address"              -- Master --    -- Slave --
    input     [AW-1:0]                      S_AXI_AWADDR,
    input                                   S_AXI_AWVALID,
    input     [7:0]                         S_AXI_AWLEN,
    input     [2:0]                         S_AXI_AWSIZE,
    input     [3:0]                         S_AXI_AWID,
    input     [1:0]                         S_AXI_AWBURST,
    input                                   S_AXI_AWLOCK,
    input     [3:0]                         S_AXI_AWCACHE,
    input     [3:0]                         S_AXI_AWQOS,
    input     [2:0]                         S_AXI_AWPROT,
    output                                                  S_AXI_AWREADY,

    // "Write Data"                         -- Master --    -- Slave --
    input     [DW-1:0]                      S_AXI_WDATA,
    input     [(DW/8)-1:0]                  S_AXI_WSTRB,
    input                                   S_AXI_WVALID,
    input                                   S_AXI_WLAST,
    output                                                  S_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    output[1:0]                                             S_AXI_BRESP,
    output[IW-1:0]                                          S_AXI_BID,
    output                                                  S_AXI_BVALID,
    input                                   S_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    input     [AW-1:0]                      S_AXI_ARADDR,
    input                                   S_AXI_ARVALID,
    input     [2:0]                         S_AXI_ARPROT,
    input                                   S_AXI_ARLOCK,
    input     [3:0]                         S_AXI_ARID,
    input     [2:0]                         S_AXI_ARSIZE,
    input     [7:0]                         S_AXI_ARLEN,
    input     [1:0]                         S_AXI_ARBURST,
    input     [3:0]                         S_AXI_ARCACHE,
    input     [3:0]                         S_AXI_ARQOS,
    output                                                  S_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    output[DW-1:0]                                          S_AXI_RDATA,
    output[IW-1:0]                                          S_AXI_RID,
    output                                                  S_AXI_RVALID,
    output[1:0]                                             S_AXI_RRESP,
    output                                                  S_AXI_RLAST,
    input                                   S_AXI_RREADY,
    //==========================================================================



    //==================  This is an AXI4-master interface  ===================

    // "Specify write address"              -- Master --    -- Slave --
    output     [AW-1:0]                     M_AXI_AWADDR,
    output                                  M_AXI_AWVALID,
    output     [7:0]                        M_AXI_AWLEN,
    output     [2:0]                        M_AXI_AWSIZE,
    output     [IW-1:0]                     M_AXI_AWID,
    output     [1:0]                        M_AXI_AWBURST,
    output                                  M_AXI_AWLOCK,
    output     [3:0]                        M_AXI_AWCACHE,
    output     [3:0]                        M_AXI_AWQOS,
    output     [2:0]                        M_AXI_AWPROT,
    input                                                   M_AXI_AWREADY,

    // "Write Data"                         -- Master --    -- Slave --
    output     [DW-1:0]                     M_AXI_WDATA,
    output     [(DW/8)-1:0]                 M_AXI_WSTRB,
    output                                  M_AXI_WVALID,
    output                                  M_AXI_WLAST,
    input                                                   M_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    input[1:0]                                              M_AXI_BRESP,
    input[IW-1:0]                                           M_AXI_BID,
    input                                                   M_AXI_BVALID,
    output                                  M_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    output reg [AW-1:0]                     M_AXI_ARADDR,
    output reg                              M_AXI_ARVALID,
    output     [2:0]                        M_AXI_ARPROT,
    output                                  M_AXI_ARLOCK,
    output     [IW-1:0]                     M_AXI_ARID,
    output     [2:0]                        M_AXI_ARSIZE,
    output     [7:0]                        M_AXI_ARLEN,
    output     [1:0]                        M_AXI_ARBURST,
    output     [3:0]                        M_AXI_ARCACHE,
    output     [3:0]                        M_AXI_ARQOS,
    input                                                   M_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    input[DW-1:0]                                           M_AXI_RDATA,
    input[IW-1:0]                                           M_AXI_RID,
    input                                                   M_AXI_RVALID,
    input[1:0]                                              M_AXI_RRESP,
    input                                                   M_AXI_RLAST,
    output                                  M_AXI_RREADY
    //==========================================================================
);

assign M_AXI_AWADDR  = S_AXI_AWADDR ;     
assign M_AXI_AWVALID = S_AXI_AWVALID & !stall;      
assign M_AXI_AWLEN   = S_AXI_AWLEN  ;    
assign M_AXI_AWSIZE  = S_AXI_AWSIZE ;     
assign M_AXI_AWID    = S_AXI_AWID   ;   
assign M_AXI_AWBURST = S_AXI_AWBURST;      
assign M_AXI_AWLOCK  = S_AXI_AWLOCK ;     
assign M_AXI_AWCACHE = S_AXI_AWCACHE;      
assign M_AXI_AWQOS   = S_AXI_AWQOS  ;    
assign M_AXI_AWPROT  = S_AXI_AWPROT ;     
assign M_AXI_WDATA   = S_AXI_WDATA  ;    
assign M_AXI_WSTRB   = S_AXI_WSTRB  ;    
assign M_AXI_WVALID  = S_AXI_WVALID & !stall;     
assign M_AXI_WLAST   = S_AXI_WLAST  ;    
assign M_AXI_BREADY  = S_AXI_BREADY ;     
assign M_AXI_ARADDR  = S_AXI_ARADDR ;     
assign M_AXI_ARVALID = S_AXI_ARVALID & !stall;      
assign M_AXI_ARPROT  = S_AXI_ARPROT ;     
assign M_AXI_ARLOCK  = S_AXI_ARLOCK ;     
assign M_AXI_ARID    = S_AXI_ARID   ;   
assign M_AXI_ARSIZE  = S_AXI_ARSIZE ;     
assign M_AXI_ARLEN   = S_AXI_ARLEN  ;    
assign M_AXI_ARBURST = S_AXI_ARBURST;      
assign M_AXI_ARCACHE = S_AXI_ARCACHE;      
assign M_AXI_ARQOS   = S_AXI_ARQOS  ;    
assign M_AXI_RREADY  = S_AXI_RREADY ;     

assign S_AXI_AWREADY = M_AXI_AWREADY & !stall;     
assign S_AXI_WREADY  = M_AXI_WREADY  & !stall;    
assign S_AXI_BRESP   = M_AXI_BRESP  ;   
assign S_AXI_BID     = M_AXI_BID    ; 
assign S_AXI_BVALID  = M_AXI_BVALID ;    
assign S_AXI_ARREADY = M_AXI_ARREADY & !stall;     
assign S_AXI_RDATA   = M_AXI_RDATA  ;   
assign S_AXI_RID     = M_AXI_RID    ; 
assign S_AXI_RVALID  = M_AXI_RVALID ;    
assign S_AXI_RRESP   = M_AXI_RRESP  ;   
assign S_AXI_RLAST   = M_AXI_RLAST  ;   

endmodule
