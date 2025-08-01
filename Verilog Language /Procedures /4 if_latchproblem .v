module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1; 
        else 
            shut_off_computer=0;
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty; 
        else 
            keep_driving=0;
    end

endmodule 
//When you write combinational logic in Verilog using always @(*) blocks,
//the synthesis tool expects every output signal to be assigned a value for every possible input condition. If some outputs are left unassigned in certain branches of your code, the tool assumes you want to remember the previous value—and it infers a level-sensitive latch to do so
