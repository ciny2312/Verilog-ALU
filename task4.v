module Add(
    input       [31:0]          a,
    input       [31:0]          b,
    output reg  [31:0]          sum
);
    integer i;
    wire [32:0] c;

    assign c[0]=1'b0;
    genvar j;
    generate
        for(j=0;j<32;j=j+1)begin
            assign c[j+1]=(a[j]&b[j])|(c[j]&a[j])|(c[j]&b[j]);
        end
    endgenerate

    always @(*) begin
        for(i=0;i<32;i=i+1)begin
            sum[i]=a[i]^b[i]^c[i];
        end
    end
    
endmodule
