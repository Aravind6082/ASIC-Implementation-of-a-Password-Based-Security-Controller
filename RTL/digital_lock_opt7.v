
module digital_lock (
    input wire clk,
    input wire reset,
    input wire [3:0] digit,
    input wire enter,
    output reg unlock,
    output reg error,
    output reg locked
);

    parameter [3:0] PASSWORD1 = 4'd1;
    parameter [3:0] PASSWORD2 = 4'd2;
    parameter [3:0] PASSWORD3 = 4'd3;
    parameter [3:0] PASSWORD4 = 4'd4;

    reg [1:0] digit_count;
    reg [2:0] attempts_state;
    reg first_three_match;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            digit_count       <= 2'd0;
            attempts_state    <= 3'b001;
            first_three_match <= 1'b0;
            unlock            <= 1'b0;
            error             <= 1'b0;
            locked            <= 1'b0;
        end else begin
            unlock <= 1'b0;
            error  <= 1'b0;

            if (locked) begin
                error <= 1'b1;
            end else if (enter) begin
                if (digit_count != 2'd3) begin
                    case (digit_count)
                        2'd0: first_three_match <= (digit == PASSWORD1);
                        2'd1: first_three_match <= first_three_match &&
                                                   (digit == PASSWORD2);
                        2'd2: first_three_match <= first_three_match &&
                                                   (digit == PASSWORD3);
                        default: first_three_match <= 1'b0;
                    endcase
                    digit_count <= digit_count + 1'b1;
                end else begin
                    digit_count       <= 2'd0;
                    first_three_match <= 1'b0;

                    if (first_three_match && (digit == PASSWORD4)) begin
                        unlock         <= 1'b1;
                        attempts_state <= 3'b001;
                    end else begin
                        error <= 1'b1;
                        case (attempts_state)
                            3'b001: attempts_state <= 3'b010;
                            3'b010: attempts_state <= 3'b100;
                            default: begin
                                attempts_state <= 3'b100;
                                locked <= 1'b1;
                            end
                        endcase
                    end
                end
            end
        end
    end

endmodule
