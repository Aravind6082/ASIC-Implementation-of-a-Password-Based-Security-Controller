`timescale 1ns/1ps

module digital_lock_tb;

    reg clk;
    reg reset;
    reg [3:0] digit;
    reg enter;

    wire unlock;
    wire error;
    wire locked;

    digital_lock uut (
        .clk(clk),
        .reset(reset),
        .digit(digit),
        .enter(enter),
        .unlock(unlock),
        .error(error),
        .locked(locked)
    );

    // 10 ns clock
    always #5 clk = ~clk;

    // Enter one digit
    task enter_digit;
        input [3:0] d;
        begin
            @(negedge clk);
            digit = d;
            enter = 1'b1;

            @(posedge clk);
            #1;

            enter = 1'b0;

            #1;
        end
    endtask

    // Enter password and check result immediately
    task test_password;
        input [3:0] d1;
        input [3:0] d2;
        input [3:0] d3;
        input [3:0] d4;
        input expected_unlock;
        input expected_error;

        begin

            enter_digit(d1);
            enter_digit(d2);
            enter_digit(d3);
            enter_digit(d4);

            #1;

            if ((unlock == expected_unlock) &&
                (error == expected_error)) begin

                $display("PASS: Password %0d%0d%0d%0d",
                         d1, d2, d3, d4);

            end
            else begin

                $display("FAIL: Password %0d%0d%0d%0d",
                         d1, d2, d3, d4);

                $display("      unlock=%b error=%b",
                         unlock, error);

            end

            // Wait for status outputs to clear
            @(negedge clk);
        end
    endtask

    initial begin

        $dumpfile("digital_lock.vcd");
        $dumpvars(0, digital_lock_tb);

        clk   = 1'b0;
        reset = 1'b1;
        digit = 4'd0;
        enter = 1'b0;

        // Reset
        #20;
        reset = 1'b0;

        // =====================================
        // TEST 1: Correct Password
        // =====================================

        $display("---------------------------------");
        $display("TEST 1: Correct Password 1234");
        $display("---------------------------------");

        test_password(
            4'd1,
            4'd2,
            4'd3,
            4'd4,
            1'b1,
            1'b0
        );

        // =====================================
        // TEST 2: Wrong Password
        // =====================================

        $display("---------------------------------");
        $display("TEST 2: Wrong Password 1256");
        $display("---------------------------------");

        test_password(
            4'd1,
            4'd2,
            4'd5,
            4'd6,
            1'b0,
            1'b1
        );

        // =====================================
        // TEST 3: Second Wrong Password
        // =====================================

        $display("---------------------------------");
        $display("TEST 3: Second Wrong Password 9999");
        $display("---------------------------------");

        test_password(
            4'd9,
            4'd9,
            4'd9,
            4'd9,
            1'b0,
            1'b1
        );

        // =====================================
        // TEST 4: Third Wrong Password
        // =====================================

        $display("---------------------------------");
        $display("TEST 4: Third Wrong Password 8888");
        $display("---------------------------------");

        test_password(
            4'd8,
            4'd8,
            4'd8,
            4'd8,
            1'b0,
            1'b1
        );

        #1;

        if (locked) begin
            $display("PASS: System LOCKED after 3 wrong attempts");
        end
        else begin
            $display("FAIL: System did not lock");
        end

        // =====================================
        // Final message
        // =====================================

        #20;

        $display("=================================");
        $display("Digital Lock Simulation Completed");
        $display("=================================");

        $finish;

    end

endmodule