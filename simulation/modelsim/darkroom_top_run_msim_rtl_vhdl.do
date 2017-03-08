transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga {/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga/SpiControl.v}
vlog -vlog01compat -work work +incdir+/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga {/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga/pll.v}
vlog -vlog01compat -work work +incdir+/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga {/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga/fifo.v}
vlog -vlog01compat -work work +incdir+/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga {/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga/oneshot.v}
vlog -vlog01compat -work work +incdir+/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga/db {/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga/db/pll_altpll.v}
vcom -93 -work work {/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd}
vcom -93 -work work {/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga/counter.vhd}
vcom -93 -work work {/home/letrend/workspace/DarkRoom/src/DarkRoom_fpga/lighthouse.vhd}

