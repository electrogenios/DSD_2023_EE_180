`timescale 1ns / 1ps

module lab5_1behavi (
    input logic a, b, c, d,              
    input logic [2:0] y,         
    output logic segments_a1, segments_b1, segments_c1,
    output logic segments_d1, segments_e, segments_f, segments_g,
    output logic y_0, y_1, y_2, y_3, y_4, y_5, y_6, y_7
);

    // Behavioral description of the 7-segment decoder
    always_comb begin
        case ({a, b, c, d})
            4'b0000: {segments_a1, segments_b1, segments_c1, segments_d1, segments_e, segments_f, segments_g} = 7'b0000001; // 0
            4'b0001: {segments_a1, segments_b1, segments_c1, segments_d1, segments_e, segments_f, segments_g} = 7'b1001111; // 1
            4'b0010: {segments_a1, segments_b1, segments_c1, segments_d1, segments_e, segments_f, segments_g} = 7'b0010010; // 2
            4'b0011: {segments_a1, segments_b1, segments_c1, segments_d1, segments_e, segments_f, segments_g} = 7'b0000110; // 3
            4'b0100: {segments_a1, segments_b1, segments_c1, segments_d1, segments_e, segments_f, segments_g} = 7'b1001100; // 4
            4'b0101: {segments_a1, segments_b1, segments_c1, segments_d1, segments_e, segments_f, segments_g} = 7'b0100100; // 5
            4'b0110: {segments_a1, segments_b1, segments_c1, segments_d1, segments_e, segments_f, segments_g} = 7'b0100000; // 6
            4'b0111: {segments_a1, segments_b1, segments_c1, segments_d1, segments_e, segments_f, segments_g} = 7'b0001111; // 7
            4'b1000: {segments_a1, segments_b1, segments_c1, segments_d1, segments_e, segments_f, segments_g} = 7'b0000000; // 8
            4'b1001: {segments_a1, segments_b1, segments_c1, segments_d1, segments_e, segments_f, segments_g} = 7'b0000100; // 9
            default: {segments_a1, segments_b1, segments_c1, segments_d1, segments_e, segments_f, segments_g} = 7'b1111111; // OFF
        endcase
    end

    // Behavioral description of the 3-to-8 decoder
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
