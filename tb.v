module TB_FA_1_Bit_BH;

    // Declare inputs as reg and outputs as wire
    reg A, B, Cin;
    wire Sum, Cout;

    // Instantiate the DUT
    FA_1_Bit_BH uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Apply test vectors
    initial begin
        $display("A B Cin | Sum Cout");
        $monitor("%b %b  %b  |  %b   %b", A, B, Cin, Sum, Cout);

        A = 0; B = 0; Cin = 0; #10;
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;

        $finish;
    end

endmodule
