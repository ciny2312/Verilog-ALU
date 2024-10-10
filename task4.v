/*
    Problem:
    https://acm.sjtu.edu.cn/OnlineJudge/problem?problem_id=1250

    任务：掌握组合逻辑，完成一个加法器。
*/

module Add(
    input       [31:0]          a,
    input       [31:0]          b,
    output reg  [31:0]          sum
);
    integer i;
    reg c=0;
    always @(*) begin
        for(i=0;i<32;i++)begin
            sum[i]=a[i]^b[i]^c;
            c=(a[i]&b[i])|(c&a[i])|(c&b[i]);
        end
    end
    // TODO
    
endmodule
