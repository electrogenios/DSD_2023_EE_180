module lab5_1 (
    input logic a,input logic b,input logic c,input logic d,               
    input logic [2:0] y,         
    output logic segments_a1,output logic segments_b1,output logic segments_c1,
    output logic segments_d1,output logic segments_e,output logic segments_f,output logic segments_g,
    output logic y_0,output logic y_1,output logic y_2,output logic y_3,output logic y_4
    ,output logic y_5,output logic y_6,output logic y_7
);
    assign segments_a1 = (~a & b & ~c & ~d)|(~a & ~b & ~c & d)|(a & b & ~c & d)|(a & ~b & c & d);
    assign segments_b1 = (~a & b & ~c & d)|(a & c & d)|(a & b & ~d)|(b & c & ~d);
    assign segments_c1 = (~a & ~b & c & ~d)|(a & b & c)|(a & b & ~c & ~d);
    assign segments_d1 = (~a & b & ~c & ~d)|(~a & ~b & ~c & d)|(a & ~b & c & ~d)|(b & c & d);
    assign segments_e = (~a & d)|(~a & b & ~c)|(~b & ~c & d);
    assign segments_f = (a & b & ~c & d)|(~a & c & d)|(~a & ~b & d)|(~a & ~b & c);
    assign segments_g = (a & b & ~c & ~d)|(~a & b & c & d)|(~a & ~b & ~c);
    always_comb begin
    case (y)
        3'b000: {y_7, y_6, y_5, y_4, y_3, y_2, y_1, y_0} = 8'b0111_1111;
        3'b001: {y_7, y_6, y_5, y_4, y_3, y_2, y_1, y_0} = 8'b1011_1111;
        3'b010: {y_7, y_6, y_5, y_4, y_3, y_2, y_1, y_0} = 8'b1101_1111;
        3'b011: {y_7, y_6, y_5, y_4, y_3, y_2, y_1, y_0} = 8'b1110_1111;
        3'b100: {y_7, y_6, y_5, y_4, y_3, y_2, y_1, y_0} = 8'b1111_0111;
        3'b101: {y_7, y_6, y_5, y_4, y_3, y_2, y_1, y_0} = 8'b1111_1011;
        3'b110: {y_7, y_6, y_5, y_4, y_3, y_2, y_1, y_0} = 8'b1111_1101;
        3'b111: {y_7, y_6, y_5, y_4, y_3, y_2, y_1, y_0} = 8'b1111_1110;
        default: {y_7, y_6, y_5, y_4, y_3, y_2, y_1, y_0} = 8'b1111_1111;  // Default OFF
    endcase
end

endmodule
