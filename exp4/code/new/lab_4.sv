module lab_4 (
    input logic [1:0] a,  
    input logic [1:0] b,  
    output logic r, g, b_led
);

logic blue_logic;
assign r = (~b[1]&~b[0])|(a[0]&~b[1])|(a[1]&~b[1])|(a[1]&a[0])|(a[1]&~b[0]);
assign blue_logic= (~a[1]&b[1])|(a[1]&~b[1])|(~a[0]&b[0])|(a[1]&a[0])|(a[1]&~b[0]);
assign g =(~a[0]&~a[1])|(~a[1]&b[0])|(b[1]&b[0])|(~a[1]&b[1])|(b[1]&~a[0]) ;

assign b_led = blue_logic;

endmodule
