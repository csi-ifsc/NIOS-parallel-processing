// image_parallel_processing.v

// Generated using ACDS version 16.1 196

`timescale 1 ps / 1 ps
module image_parallel_processing (
		input  wire        clk_clk,                     //                   clk.clk
		input  wire        reset_reset_n,               //                 reset.reset_n
		output wire [12:0] sdram_controller_wire_addr,  // sdram_controller_wire.addr
		output wire [1:0]  sdram_controller_wire_ba,    //                      .ba
		output wire        sdram_controller_wire_cas_n, //                      .cas_n
		output wire        sdram_controller_wire_cke,   //                      .cke
		output wire        sdram_controller_wire_cs_n,  //                      .cs_n
		inout  wire [15:0] sdram_controller_wire_dq,    //                      .dq
		output wire [1:0]  sdram_controller_wire_dqm,   //                      .dqm
		output wire        sdram_controller_wire_ras_n, //                      .ras_n
		output wire        sdram_controller_wire_we_n   //                      .we_n
	);

	wire         pll_0_outclk0_clk;                                   // pll_0:outclk_0 -> [mm_interconnect_0:pll_0_outclk0_clk, mutex_0:clk, proc_0_0:clk_clk, proc_1_0:clk_clk, rst_controller:clk]
	wire         pll_0_outclk1_clk;                                   // pll_0:outclk_1 -> [mm_interconnect_0:pll_0_outclk1_clk, rst_controller_001:clk, sdram_controller:clk]
	wire         proc_0_0_out_bridge_master_waitrequest;              // mm_interconnect_0:proc_0_0_out_bridge_master_waitrequest -> proc_0_0:out_bridge_master_waitrequest
	wire  [31:0] proc_0_0_out_bridge_master_readdata;                 // mm_interconnect_0:proc_0_0_out_bridge_master_readdata -> proc_0_0:out_bridge_master_readdata
	wire         proc_0_0_out_bridge_master_debugaccess;              // proc_0_0:out_bridge_master_debugaccess -> mm_interconnect_0:proc_0_0_out_bridge_master_debugaccess
	wire  [26:0] proc_0_0_out_bridge_master_address;                  // proc_0_0:out_bridge_master_address -> mm_interconnect_0:proc_0_0_out_bridge_master_address
	wire         proc_0_0_out_bridge_master_read;                     // proc_0_0:out_bridge_master_read -> mm_interconnect_0:proc_0_0_out_bridge_master_read
	wire   [3:0] proc_0_0_out_bridge_master_byteenable;               // proc_0_0:out_bridge_master_byteenable -> mm_interconnect_0:proc_0_0_out_bridge_master_byteenable
	wire         proc_0_0_out_bridge_master_readdatavalid;            // mm_interconnect_0:proc_0_0_out_bridge_master_readdatavalid -> proc_0_0:out_bridge_master_readdatavalid
	wire  [31:0] proc_0_0_out_bridge_master_writedata;                // proc_0_0:out_bridge_master_writedata -> mm_interconnect_0:proc_0_0_out_bridge_master_writedata
	wire         proc_0_0_out_bridge_master_write;                    // proc_0_0:out_bridge_master_write -> mm_interconnect_0:proc_0_0_out_bridge_master_write
	wire   [0:0] proc_0_0_out_bridge_master_burstcount;               // proc_0_0:out_bridge_master_burstcount -> mm_interconnect_0:proc_0_0_out_bridge_master_burstcount
	wire         proc_1_0_out_bridge_master_waitrequest;              // mm_interconnect_0:proc_1_0_out_bridge_master_waitrequest -> proc_1_0:out_bridge_master_waitrequest
	wire  [31:0] proc_1_0_out_bridge_master_readdata;                 // mm_interconnect_0:proc_1_0_out_bridge_master_readdata -> proc_1_0:out_bridge_master_readdata
	wire         proc_1_0_out_bridge_master_debugaccess;              // proc_1_0:out_bridge_master_debugaccess -> mm_interconnect_0:proc_1_0_out_bridge_master_debugaccess
	wire  [26:0] proc_1_0_out_bridge_master_address;                  // proc_1_0:out_bridge_master_address -> mm_interconnect_0:proc_1_0_out_bridge_master_address
	wire         proc_1_0_out_bridge_master_read;                     // proc_1_0:out_bridge_master_read -> mm_interconnect_0:proc_1_0_out_bridge_master_read
	wire   [3:0] proc_1_0_out_bridge_master_byteenable;               // proc_1_0:out_bridge_master_byteenable -> mm_interconnect_0:proc_1_0_out_bridge_master_byteenable
	wire         proc_1_0_out_bridge_master_readdatavalid;            // mm_interconnect_0:proc_1_0_out_bridge_master_readdatavalid -> proc_1_0:out_bridge_master_readdatavalid
	wire  [31:0] proc_1_0_out_bridge_master_writedata;                // proc_1_0:out_bridge_master_writedata -> mm_interconnect_0:proc_1_0_out_bridge_master_writedata
	wire         proc_1_0_out_bridge_master_write;                    // proc_1_0:out_bridge_master_write -> mm_interconnect_0:proc_1_0_out_bridge_master_write
	wire   [0:0] proc_1_0_out_bridge_master_burstcount;               // proc_1_0:out_bridge_master_burstcount -> mm_interconnect_0:proc_1_0_out_bridge_master_burstcount
	wire         mm_interconnect_0_mutex_0_s1_chipselect;             // mm_interconnect_0:mutex_0_s1_chipselect -> mutex_0:chipselect
	wire  [31:0] mm_interconnect_0_mutex_0_s1_readdata;               // mutex_0:data_to_cpu -> mm_interconnect_0:mutex_0_s1_readdata
	wire   [0:0] mm_interconnect_0_mutex_0_s1_address;                // mm_interconnect_0:mutex_0_s1_address -> mutex_0:address
	wire         mm_interconnect_0_mutex_0_s1_read;                   // mm_interconnect_0:mutex_0_s1_read -> mutex_0:read
	wire         mm_interconnect_0_mutex_0_s1_write;                  // mm_interconnect_0:mutex_0_s1_write -> mutex_0:write
	wire  [31:0] mm_interconnect_0_mutex_0_s1_writedata;              // mm_interconnect_0:mutex_0_s1_writedata -> mutex_0:data_from_cpu
	wire         mm_interconnect_0_sdram_controller_s1_chipselect;    // mm_interconnect_0:sdram_controller_s1_chipselect -> sdram_controller:az_cs
	wire  [15:0] mm_interconnect_0_sdram_controller_s1_readdata;      // sdram_controller:za_data -> mm_interconnect_0:sdram_controller_s1_readdata
	wire         mm_interconnect_0_sdram_controller_s1_waitrequest;   // sdram_controller:za_waitrequest -> mm_interconnect_0:sdram_controller_s1_waitrequest
	wire  [24:0] mm_interconnect_0_sdram_controller_s1_address;       // mm_interconnect_0:sdram_controller_s1_address -> sdram_controller:az_addr
	wire         mm_interconnect_0_sdram_controller_s1_read;          // mm_interconnect_0:sdram_controller_s1_read -> sdram_controller:az_rd_n
	wire   [1:0] mm_interconnect_0_sdram_controller_s1_byteenable;    // mm_interconnect_0:sdram_controller_s1_byteenable -> sdram_controller:az_be_n
	wire         mm_interconnect_0_sdram_controller_s1_readdatavalid; // sdram_controller:za_valid -> mm_interconnect_0:sdram_controller_s1_readdatavalid
	wire         mm_interconnect_0_sdram_controller_s1_write;         // mm_interconnect_0:sdram_controller_s1_write -> sdram_controller:az_wr_n
	wire  [15:0] mm_interconnect_0_sdram_controller_s1_writedata;     // mm_interconnect_0:sdram_controller_s1_writedata -> sdram_controller:az_data
	wire         rst_controller_reset_out_reset;                      // rst_controller:reset_out -> [mm_interconnect_0:mutex_0_reset_reset_bridge_in_reset_reset, mm_interconnect_0:proc_0_0_reset_reset_bridge_in_reset_reset, mutex_0:reset_n]
	wire         rst_controller_001_reset_out_reset;                  // rst_controller_001:reset_out -> [mm_interconnect_0:sdram_controller_reset_reset_bridge_in_reset_reset, sdram_controller:reset_n]

	image_parallel_processing_mutex_0 mutex_0 (
		.reset_n       (~rst_controller_reset_out_reset),         // reset.reset_n
		.clk           (pll_0_outclk0_clk),                       //   clk.clk
		.chipselect    (mm_interconnect_0_mutex_0_s1_chipselect), //    s1.chipselect
		.data_from_cpu (mm_interconnect_0_mutex_0_s1_writedata),  //      .writedata
		.read          (mm_interconnect_0_mutex_0_s1_read),       //      .read
		.write         (mm_interconnect_0_mutex_0_s1_write),      //      .write
		.data_to_cpu   (mm_interconnect_0_mutex_0_s1_readdata),   //      .readdata
		.address       (mm_interconnect_0_mutex_0_s1_address)     //      .address
	);

	image_parallel_processing_pll_0 pll_0 (
		.refclk   (clk_clk),           //  refclk.clk
		.rst      (~reset_reset_n),    //   reset.reset
		.outclk_0 (pll_0_outclk0_clk), // outclk0.clk
		.outclk_1 (pll_0_outclk1_clk), // outclk1.clk
		.locked   ()                   // (terminated)
	);

	image_parallel_processing_proc_0_0 proc_0_0 (
		.clk_clk                         (pll_0_outclk0_clk),                        //               clk.clk
		.out_bridge_master_waitrequest   (proc_0_0_out_bridge_master_waitrequest),   // out_bridge_master.waitrequest
		.out_bridge_master_readdata      (proc_0_0_out_bridge_master_readdata),      //                  .readdata
		.out_bridge_master_readdatavalid (proc_0_0_out_bridge_master_readdatavalid), //                  .readdatavalid
		.out_bridge_master_burstcount    (proc_0_0_out_bridge_master_burstcount),    //                  .burstcount
		.out_bridge_master_writedata     (proc_0_0_out_bridge_master_writedata),     //                  .writedata
		.out_bridge_master_address       (proc_0_0_out_bridge_master_address),       //                  .address
		.out_bridge_master_write         (proc_0_0_out_bridge_master_write),         //                  .write
		.out_bridge_master_read          (proc_0_0_out_bridge_master_read),          //                  .read
		.out_bridge_master_byteenable    (proc_0_0_out_bridge_master_byteenable),    //                  .byteenable
		.out_bridge_master_debugaccess   (proc_0_0_out_bridge_master_debugaccess),   //                  .debugaccess
		.reset_reset_n                   (reset_reset_n)                             //             reset.reset_n
	);

	image_parallel_processing_proc_1_0 proc_1_0 (
		.clk_clk                         (pll_0_outclk0_clk),                        //               clk.clk
		.out_bridge_master_waitrequest   (proc_1_0_out_bridge_master_waitrequest),   // out_bridge_master.waitrequest
		.out_bridge_master_readdata      (proc_1_0_out_bridge_master_readdata),      //                  .readdata
		.out_bridge_master_readdatavalid (proc_1_0_out_bridge_master_readdatavalid), //                  .readdatavalid
		.out_bridge_master_burstcount    (proc_1_0_out_bridge_master_burstcount),    //                  .burstcount
		.out_bridge_master_writedata     (proc_1_0_out_bridge_master_writedata),     //                  .writedata
		.out_bridge_master_address       (proc_1_0_out_bridge_master_address),       //                  .address
		.out_bridge_master_write         (proc_1_0_out_bridge_master_write),         //                  .write
		.out_bridge_master_read          (proc_1_0_out_bridge_master_read),          //                  .read
		.out_bridge_master_byteenable    (proc_1_0_out_bridge_master_byteenable),    //                  .byteenable
		.out_bridge_master_debugaccess   (proc_1_0_out_bridge_master_debugaccess),   //                  .debugaccess
		.reset_reset_n                   (reset_reset_n)                             //             reset.reset_n
	);

	image_parallel_processing_sdram_controller sdram_controller (
		.clk            (pll_0_outclk1_clk),                                   //   clk.clk
		.reset_n        (~rst_controller_001_reset_out_reset),                 // reset.reset_n
		.az_addr        (mm_interconnect_0_sdram_controller_s1_address),       //    s1.address
		.az_be_n        (~mm_interconnect_0_sdram_controller_s1_byteenable),   //      .byteenable_n
		.az_cs          (mm_interconnect_0_sdram_controller_s1_chipselect),    //      .chipselect
		.az_data        (mm_interconnect_0_sdram_controller_s1_writedata),     //      .writedata
		.az_rd_n        (~mm_interconnect_0_sdram_controller_s1_read),         //      .read_n
		.az_wr_n        (~mm_interconnect_0_sdram_controller_s1_write),        //      .write_n
		.za_data        (mm_interconnect_0_sdram_controller_s1_readdata),      //      .readdata
		.za_valid       (mm_interconnect_0_sdram_controller_s1_readdatavalid), //      .readdatavalid
		.za_waitrequest (mm_interconnect_0_sdram_controller_s1_waitrequest),   //      .waitrequest
		.zs_addr        (sdram_controller_wire_addr),                          //  wire.export
		.zs_ba          (sdram_controller_wire_ba),                            //      .export
		.zs_cas_n       (sdram_controller_wire_cas_n),                         //      .export
		.zs_cke         (sdram_controller_wire_cke),                           //      .export
		.zs_cs_n        (sdram_controller_wire_cs_n),                          //      .export
		.zs_dq          (sdram_controller_wire_dq),                            //      .export
		.zs_dqm         (sdram_controller_wire_dqm),                           //      .export
		.zs_ras_n       (sdram_controller_wire_ras_n),                         //      .export
		.zs_we_n        (sdram_controller_wire_we_n)                           //      .export
	);

	image_parallel_processing_mm_interconnect_0 mm_interconnect_0 (
		.pll_0_outclk0_clk                                  (pll_0_outclk0_clk),                                   //                                pll_0_outclk0.clk
		.pll_0_outclk1_clk                                  (pll_0_outclk1_clk),                                   //                                pll_0_outclk1.clk
		.mutex_0_reset_reset_bridge_in_reset_reset          (rst_controller_reset_out_reset),                      //          mutex_0_reset_reset_bridge_in_reset.reset
		.proc_0_0_reset_reset_bridge_in_reset_reset         (rst_controller_reset_out_reset),                      //         proc_0_0_reset_reset_bridge_in_reset.reset
		.sdram_controller_reset_reset_bridge_in_reset_reset (rst_controller_001_reset_out_reset),                  // sdram_controller_reset_reset_bridge_in_reset.reset
		.proc_0_0_out_bridge_master_address                 (proc_0_0_out_bridge_master_address),                  //                   proc_0_0_out_bridge_master.address
		.proc_0_0_out_bridge_master_waitrequest             (proc_0_0_out_bridge_master_waitrequest),              //                                             .waitrequest
		.proc_0_0_out_bridge_master_burstcount              (proc_0_0_out_bridge_master_burstcount),               //                                             .burstcount
		.proc_0_0_out_bridge_master_byteenable              (proc_0_0_out_bridge_master_byteenable),               //                                             .byteenable
		.proc_0_0_out_bridge_master_read                    (proc_0_0_out_bridge_master_read),                     //                                             .read
		.proc_0_0_out_bridge_master_readdata                (proc_0_0_out_bridge_master_readdata),                 //                                             .readdata
		.proc_0_0_out_bridge_master_readdatavalid           (proc_0_0_out_bridge_master_readdatavalid),            //                                             .readdatavalid
		.proc_0_0_out_bridge_master_write                   (proc_0_0_out_bridge_master_write),                    //                                             .write
		.proc_0_0_out_bridge_master_writedata               (proc_0_0_out_bridge_master_writedata),                //                                             .writedata
		.proc_0_0_out_bridge_master_debugaccess             (proc_0_0_out_bridge_master_debugaccess),              //                                             .debugaccess
		.proc_1_0_out_bridge_master_address                 (proc_1_0_out_bridge_master_address),                  //                   proc_1_0_out_bridge_master.address
		.proc_1_0_out_bridge_master_waitrequest             (proc_1_0_out_bridge_master_waitrequest),              //                                             .waitrequest
		.proc_1_0_out_bridge_master_burstcount              (proc_1_0_out_bridge_master_burstcount),               //                                             .burstcount
		.proc_1_0_out_bridge_master_byteenable              (proc_1_0_out_bridge_master_byteenable),               //                                             .byteenable
		.proc_1_0_out_bridge_master_read                    (proc_1_0_out_bridge_master_read),                     //                                             .read
		.proc_1_0_out_bridge_master_readdata                (proc_1_0_out_bridge_master_readdata),                 //                                             .readdata
		.proc_1_0_out_bridge_master_readdatavalid           (proc_1_0_out_bridge_master_readdatavalid),            //                                             .readdatavalid
		.proc_1_0_out_bridge_master_write                   (proc_1_0_out_bridge_master_write),                    //                                             .write
		.proc_1_0_out_bridge_master_writedata               (proc_1_0_out_bridge_master_writedata),                //                                             .writedata
		.proc_1_0_out_bridge_master_debugaccess             (proc_1_0_out_bridge_master_debugaccess),              //                                             .debugaccess
		.mutex_0_s1_address                                 (mm_interconnect_0_mutex_0_s1_address),                //                                   mutex_0_s1.address
		.mutex_0_s1_write                                   (mm_interconnect_0_mutex_0_s1_write),                  //                                             .write
		.mutex_0_s1_read                                    (mm_interconnect_0_mutex_0_s1_read),                   //                                             .read
		.mutex_0_s1_readdata                                (mm_interconnect_0_mutex_0_s1_readdata),               //                                             .readdata
		.mutex_0_s1_writedata                               (mm_interconnect_0_mutex_0_s1_writedata),              //                                             .writedata
		.mutex_0_s1_chipselect                              (mm_interconnect_0_mutex_0_s1_chipselect),             //                                             .chipselect
		.sdram_controller_s1_address                        (mm_interconnect_0_sdram_controller_s1_address),       //                          sdram_controller_s1.address
		.sdram_controller_s1_write                          (mm_interconnect_0_sdram_controller_s1_write),         //                                             .write
		.sdram_controller_s1_read                           (mm_interconnect_0_sdram_controller_s1_read),          //                                             .read
		.sdram_controller_s1_readdata                       (mm_interconnect_0_sdram_controller_s1_readdata),      //                                             .readdata
		.sdram_controller_s1_writedata                      (mm_interconnect_0_sdram_controller_s1_writedata),     //                                             .writedata
		.sdram_controller_s1_byteenable                     (mm_interconnect_0_sdram_controller_s1_byteenable),    //                                             .byteenable
		.sdram_controller_s1_readdatavalid                  (mm_interconnect_0_sdram_controller_s1_readdatavalid), //                                             .readdatavalid
		.sdram_controller_s1_waitrequest                    (mm_interconnect_0_sdram_controller_s1_waitrequest),   //                                             .waitrequest
		.sdram_controller_s1_chipselect                     (mm_interconnect_0_sdram_controller_s1_chipselect)     //                                             .chipselect
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (pll_0_outclk0_clk),              //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (pll_0_outclk1_clk),                  //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
