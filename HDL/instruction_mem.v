//abdo
module instruction_mem ( data_out , addr ,data_in , we , clk);
parameter N = 8;
parameter M = 60;
output reg [M-1:0] data_out;
input [N-1:0] addr;
input [M-1:0] data_in;
input we, clk;
reg [M-1:0] mem [0:2**N-1] ;
always @(posedge clk) 
if (we) 
mem[addr] = data_in;
else
 data_out = mem[addr] ;
endmodule