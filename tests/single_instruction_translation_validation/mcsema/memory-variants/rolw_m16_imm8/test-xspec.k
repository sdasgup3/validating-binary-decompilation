module TEST-XSPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetchNoDBG => exit_0 </k>
      <functargets>  
        _start  |-> ptr ( symloc ( -1 , 0, 0 , 0 , 0) , mi(64, 0))
      </functargets> 
      <rotargets> .Map </rotargets> 
      <bsstargets> .Map </bsstargets> 
      <datatargets> .Map </datatargets> 
      <entrypoint> .K </entrypoint>
      <nextLocPc>  _:MInt  </nextLocPc>
      <lastseenlabel> .K </lastseenlabel>
      <currentsection> "text" </currentsection>
      <regstate>
        "RIP" |-> ( ptr (symloc(-1, 0, 0 , 0 , 0), mi(64, 0))  => mi(64, 18446744073709551615)) //@ensure
        "RSP" |-> ( ptr ( symloc ( 1 , 128 , 1040 , 8 , 0 ) , mi(64,1032) ) =>
                      ptr ( symloc ( 1 , 128 , 1040 , 8 , 0 ) , mi(64,1040) )) //@ensure
        "RBP" |-> ptr ( symloc ( 1 , 128 , 1040 , 8 , 0 ) , mi(64,1032) ) // @ensure

        "RAX" |-> (mi(64, VX_RAX:Int):MInt => mi(64, _:Int))
        "RBX" |-> (mi(64, VX_RBX:Int):MInt => mi(64, _:Int))
        "RCX" |-> (mi(64, VX_RCX:Int):MInt => mi(64, _:Int))
        "RDX" |-> (mi(64, VX_RDX:Int):MInt => mi(64, _:Int))
        "RSI" |-> (mi(64, VX_RSI:Int):MInt => mi(64, _:Int))
        "RDI" |-> (mi(64, VX_RDI:Int):MInt => mi(64, _:Int))
        // W/o the folowing the prover fails on solving query                              
        "AF" |->  (mi(1,  VX_AF:Int):MInt  => mi(1,  _:Int))
        "CF" |->  (mi(1,  VX_CF:Int):MInt  => mi(1,  _:Int))
        "OF" |->  (mi(1,  VX_OF:Int):MInt  => mi(1,  _:Int))
        "PF" |->  (mi(1,  VX_PF:Int):MInt  => mi(1,  _:Int))
        "SF" |->  (mi(1,  VX_SF:Int):MInt  => mi(1,  _:Int))
        "ZF" |->  (mi(1,  VX_ZF:Int):MInt  => mi(1,  _:Int))
        // Ymms
        "YMM1" |->  (mi(256,  VX_YMM1:Int):MInt  => mi(256,  _:Int))
        "YMM2" |->  (mi(256,  VX_YMM2:Int):MInt  => mi(256,  _:Int))
         // Main Claim
      </regstate>

      <memstate>
        <text> 
          code ( 
      ptr ( symloc ( -1 , 0 , 0 , 0 , 0) , mi(64,0) ) |-> storedInstr ( rolw $0xa, -32(%rbp), .Operands )
      ptr ( symloc ( -1 , 0 , 0 , 0 , 0) , mi(64,1) ) |-> storedInstr ( ret .Operands )
             )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
               mem( 
                    // allocated memory
symloc ( 1 , 128 , 1040 , 8 , 1000 ) |-> (byte ( 0 ,  mi(16, VX_MEM_16)) => _)
symloc ( 1 , 128 , 1040 , 8 , 1001 ) |-> (byte ( 1 ,  mi(16, VX_MEM_16)) => _)



                    // return address
                    symloc ( 1 , 128 , 1040 , 8 , 1032 ) |-> byte ( 0 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1033 ) |-> byte ( 1 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1034 ) |-> byte ( 2 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1035 ) |-> byte ( 3 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1036 ) |-> byte ( 4 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1037 ) |-> byte ( 5 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1038 ) |-> byte ( 6 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1039 ) |-> byte ( 7 , mi(64,-1) )
                  )
            </objects>
            <freed>
              .Set
            </freed>
          </memory>
          <stackbase>
            stackBaseInfo ( symloc ( 1 , 128 , 1040 , 8 , 0 ) , mi(64, 1032) )
          </stackbase>
          <robase>    roBaseInfo(.K , .K , .K  ) </robase>
          <database>  dataBaseInfo(.K , .K , .K ) </database>
          <bssbase>   bssBaseInfo(.K , .K , .K ) </bssbase>
        </stack>
      </memstate>

      <environment>
        <argc> .K  </argc>
        <argv> .K  </argv>
      </environment>
        requires  VX_RAX >=Int 0 andBool VX_RAX <Int 2 ^Int 64 
        andBool   VX_RBX >=Int 0 andBool VX_RBX <Int 2 ^Int 64 
        andBool   VX_RCX >=Int 0 andBool VX_RCX <Int 2 ^Int 64 
        andBool   VX_RDX >=Int 0 andBool VX_RDX <Int 2 ^Int 64 
        andBool   VX_RSI >=Int 0 andBool VX_RSI <Int 2 ^Int 64 
        andBool   VX_RDI >=Int 0 andBool VX_RDI <Int 2 ^Int 64 
        andBool   (VX_CF ==Int 0 orBool VX_CF ==Int 1)
        andBool   (VX_SF ==Int 0 orBool VX_SF ==Int 1)
        andBool   (VX_PF ==Int 0 orBool VX_PF ==Int 1)
        andBool   (VX_ZF ==Int 0 orBool VX_ZF ==Int 1)
        andBool   (VX_AF ==Int 0 orBool VX_AF ==Int 1)
        andBool   (VX_OF ==Int 0 orBool VX_OF ==Int 1)
        andBool   VX_MEM_16 >=Int 0 andBool VX_MEM_16 <Int 2 ^Int 16
endmodule
