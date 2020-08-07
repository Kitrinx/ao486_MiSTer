# TCL File Generated by Component Editor 17.0
# Fri Aug 07 13:29:56 CST 2020
# DO NOT MODIFY


# 
# ao486 "ao486" v1.0
#  2020.08.07.13:29:56
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module ao486
# 
set_module_property DESCRIPTION ""
set_module_property NAME ao486
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP ao486
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME ao486
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL ao486
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file ao486.v VERILOG PATH ao486.v TOP_LEVEL_FILE
add_fileset_file avalon_io.v VERILOG PATH avalon_io.v
add_fileset_file defines.v VERILOG PATH defines.v
add_fileset_file exception.v VERILOG PATH exception.v
add_fileset_file global_regs.v VERILOG PATH global_regs.v
add_fileset_file condition.v VERILOG PATH pipeline/condition.v
add_fileset_file decode.v VERILOG PATH pipeline/decode.v
add_fileset_file decode_commands.v VERILOG PATH pipeline/decode_commands.v
add_fileset_file decode_prefix.v VERILOG PATH pipeline/decode_prefix.v
add_fileset_file decode_ready.v VERILOG PATH pipeline/decode_ready.v
add_fileset_file decode_regs.v VERILOG PATH pipeline/decode_regs.v
add_fileset_file execute.v VERILOG PATH pipeline/execute.v
add_fileset_file execute_commands.v VERILOG PATH pipeline/execute_commands.v
add_fileset_file execute_divide.v VERILOG PATH pipeline/execute_divide.v
add_fileset_file execute_multiply.v VERILOG PATH pipeline/execute_multiply.v
add_fileset_file execute_offset.v VERILOG PATH pipeline/execute_offset.v
add_fileset_file execute_shift.v VERILOG PATH pipeline/execute_shift.v
add_fileset_file fetch.v VERILOG PATH pipeline/fetch.v
add_fileset_file microcode.v VERILOG PATH pipeline/microcode.v
add_fileset_file microcode_commands.v VERILOG PATH pipeline/microcode_commands.v
add_fileset_file pipeline.v VERILOG PATH pipeline/pipeline.v
add_fileset_file read.v VERILOG PATH pipeline/read.v
add_fileset_file read_commands.v VERILOG PATH pipeline/read_commands.v
add_fileset_file read_debug.v VERILOG PATH pipeline/read_debug.v
add_fileset_file read_effective_address.v VERILOG PATH pipeline/read_effective_address.v
add_fileset_file read_mutex.v VERILOG PATH pipeline/read_mutex.v
add_fileset_file read_segment.v VERILOG PATH pipeline/read_segment.v
add_fileset_file write.v VERILOG PATH pipeline/write.v
add_fileset_file write_commands.v VERILOG PATH pipeline/write_commands.v
add_fileset_file write_debug.v VERILOG PATH pipeline/write_debug.v
add_fileset_file write_register.v VERILOG PATH pipeline/write_register.v
add_fileset_file write_stack.v VERILOG PATH pipeline/write_stack.v
add_fileset_file write_string.v VERILOG PATH pipeline/write_string.v
add_fileset_file avalon_mem.v VERILOG PATH memory/avalon_mem.v
add_fileset_file icache.v VERILOG PATH memory/icache.v
add_fileset_file link_dcacheread.v VERILOG PATH memory/link_dcacheread.v
add_fileset_file link_dcachewrite.v VERILOG PATH memory/link_dcachewrite.v
add_fileset_file memory.v VERILOG PATH memory/memory.v
add_fileset_file memory_read.v VERILOG PATH memory/memory_read.v
add_fileset_file memory_write.v VERILOG PATH memory/memory_write.v
add_fileset_file prefetch.v VERILOG PATH memory/prefetch.v
add_fileset_file prefetch_control.v VERILOG PATH memory/prefetch_control.v
add_fileset_file prefetch_fifo.v VERILOG PATH memory/prefetch_fifo.v
add_fileset_file tlb.v VERILOG PATH memory/tlb.v
add_fileset_file tlb_memtype.v VERILOG PATH memory/tlb_memtype.v
add_fileset_file tlb_regs.v VERILOG PATH memory/tlb_regs.v
add_fileset_file simple_fifo.v VERILOG PATH ../common/simple_fifo.v
add_fileset_file simple_fifo_mlab.v VERILOG PATH ../common/simple_fifo_mlab.v
add_fileset_file simple_ram.v VERILOG PATH ../common/simple_ram.v
add_fileset_file simple_mult.v VERILOG PATH ../common/simple_mult.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink rst_n reset_n Input 1


# 
# connection point avalon_memory
# 
add_interface avalon_memory avalon start
set_interface_property avalon_memory addressUnits WORDS
set_interface_property avalon_memory associatedClock clock
set_interface_property avalon_memory associatedReset reset_sink
set_interface_property avalon_memory bitsPerSymbol 8
set_interface_property avalon_memory burstOnBurstBoundariesOnly false
set_interface_property avalon_memory burstcountUnits WORDS
set_interface_property avalon_memory doStreamReads false
set_interface_property avalon_memory doStreamWrites false
set_interface_property avalon_memory holdTime 0
set_interface_property avalon_memory linewrapBursts false
set_interface_property avalon_memory maximumPendingReadTransactions 0
set_interface_property avalon_memory maximumPendingWriteTransactions 0
set_interface_property avalon_memory readLatency 0
set_interface_property avalon_memory readWaitTime 1
set_interface_property avalon_memory setupTime 0
set_interface_property avalon_memory timingUnits Cycles
set_interface_property avalon_memory writeWaitTime 0
set_interface_property avalon_memory ENABLED true
set_interface_property avalon_memory EXPORT_OF ""
set_interface_property avalon_memory PORT_NAME_MAP ""
set_interface_property avalon_memory CMSIS_SVD_VARIABLES ""
set_interface_property avalon_memory SVD_ADDRESS_GROUP ""

add_interface_port avalon_memory avm_address address Output 30
add_interface_port avalon_memory avm_writedata writedata Output 32
add_interface_port avalon_memory avm_byteenable byteenable Output 4
add_interface_port avalon_memory avm_burstcount burstcount Output 4
add_interface_port avalon_memory avm_write write Output 1
add_interface_port avalon_memory avm_read read Output 1
add_interface_port avalon_memory avm_waitrequest waitrequest Input 1
add_interface_port avalon_memory avm_readdatavalid readdatavalid Input 1
add_interface_port avalon_memory avm_readdata readdata Input 32


# 
# connection point interrupt
# 
add_interface interrupt conduit end
set_interface_property interrupt associatedClock clock
set_interface_property interrupt associatedReset ""
set_interface_property interrupt ENABLED true
set_interface_property interrupt EXPORT_OF ""
set_interface_property interrupt PORT_NAME_MAP ""
set_interface_property interrupt CMSIS_SVD_VARIABLES ""
set_interface_property interrupt SVD_ADDRESS_GROUP ""

add_interface_port interrupt interrupt_do interrupt_do Input 1
add_interface_port interrupt interrupt_vector interrupt_vector Input 8
add_interface_port interrupt interrupt_done interrupt_done Output 1


# 
# connection point avalon_io
# 
add_interface avalon_io avalon start
set_interface_property avalon_io addressUnits SYMBOLS
set_interface_property avalon_io associatedClock clock
set_interface_property avalon_io associatedReset reset_sink
set_interface_property avalon_io bitsPerSymbol 8
set_interface_property avalon_io burstOnBurstBoundariesOnly false
set_interface_property avalon_io burstcountUnits WORDS
set_interface_property avalon_io doStreamReads false
set_interface_property avalon_io doStreamWrites false
set_interface_property avalon_io holdTime 0
set_interface_property avalon_io linewrapBursts false
set_interface_property avalon_io maximumPendingReadTransactions 0
set_interface_property avalon_io maximumPendingWriteTransactions 0
set_interface_property avalon_io readLatency 0
set_interface_property avalon_io readWaitTime 1
set_interface_property avalon_io setupTime 0
set_interface_property avalon_io timingUnits Cycles
set_interface_property avalon_io writeWaitTime 0
set_interface_property avalon_io ENABLED true
set_interface_property avalon_io EXPORT_OF ""
set_interface_property avalon_io PORT_NAME_MAP ""
set_interface_property avalon_io CMSIS_SVD_VARIABLES ""
set_interface_property avalon_io SVD_ADDRESS_GROUP ""

add_interface_port avalon_io avalon_io_address address Output 16
add_interface_port avalon_io avalon_io_byteenable byteenable Output 4
add_interface_port avalon_io avalon_io_read read Output 1
add_interface_port avalon_io avalon_io_readdatavalid readdatavalid Input 1
add_interface_port avalon_io avalon_io_readdata readdata Input 32
add_interface_port avalon_io avalon_io_write write Output 1
add_interface_port avalon_io avalon_io_writedata writedata Output 32
add_interface_port avalon_io avalon_io_waitrequest waitrequest Input 1


# 
# connection point conduit_a20
# 
add_interface conduit_a20 conduit end
set_interface_property conduit_a20 associatedClock clock
set_interface_property conduit_a20 associatedReset ""
set_interface_property conduit_a20 ENABLED true
set_interface_property conduit_a20 EXPORT_OF ""
set_interface_property conduit_a20 PORT_NAME_MAP ""
set_interface_property conduit_a20 CMSIS_SVD_VARIABLES ""
set_interface_property conduit_a20 SVD_ADDRESS_GROUP ""

add_interface_port conduit_a20 a20_enable a20_enable Input 1


# 
# connection point dma
# 
add_interface dma conduit end
set_interface_property dma associatedClock clock
set_interface_property dma associatedReset ""
set_interface_property dma ENABLED true
set_interface_property dma EXPORT_OF ""
set_interface_property dma PORT_NAME_MAP ""
set_interface_property dma CMSIS_SVD_VARIABLES ""
set_interface_property dma SVD_ADDRESS_GROUP ""

add_interface_port dma dma_address address Input 24
add_interface_port dma dma_read read Input 1
add_interface_port dma dma_readdata readdata Output 8
add_interface_port dma dma_readdatavalid readdatavalid Output 1
add_interface_port dma dma_waitrequest waitrequest Output 1
add_interface_port dma dma_write write Input 1
add_interface_port dma dma_writedata writedata Input 8

