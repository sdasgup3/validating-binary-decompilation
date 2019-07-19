module TEST-SPEC
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
        "RSP" |-> ( ptr ( symloc ( 1 , 128 , 1024 , 8 , 0 ) , mi(64,1016) ) =>
                      ptr ( symloc ( 1 , 128 , 1024 , 8 , 0 ) , mi(64,1024) )) //@ensure
        "RBP" |-> ptr ( symloc ( 1 , 128 , 1024 , 8 , 0 ) , mi(64,1016) ) // @ensure
        "RAX" |-> (mi(64, V_RAX:Int):MInt => mi(64, _:Int))
        "RBX" |-> (mi(64, V_RBX:Int):MInt => mi(64, _:Int))
        "AF" |-> (_:MInt => _:MInt)
        "CF" |-> (_:MInt => _:MInt)
        "OF" |-> (_:MInt => _:MInt)
        "PF" |-> (_:MInt => _:MInt)
        "SF" |-> (_:MInt => _:MInt)
        "ZF" |-> (_:MInt => _:MInt)
         // Main Claim
      </regstate>

      <memstate>
        <text> 
          code ( 
      ptr ( symloc ( -1 , 0 , 0 , 0 , 0) , mi(64,0) ) |-> storedInstr ( addq	%rbx, %rax, .Operands )
      ptr ( symloc ( -1 , 0 , 0 , 0 , 0) , mi(64,1) ) |-> storedInstr ( ret .Operands )
             )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
               mem( 
                    // allocated memory
                    symloc ( 1 , 128 , 1024 , 8 , 1000 ) |-> (byte ( 0 , undefMInt) => _) // -16(%ebp)
                    symloc ( 1 , 128 , 1024 , 8 , 1001 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1002 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1003 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1004 ) |-> (byte ( 0 , undefMInt) => _) // -12(%ebp)
                    symloc ( 1 , 128 , 1024 , 8 , 1005 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1006 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1007 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1008 ) |-> (byte ( 0 , undefMInt) => _) // -8(%ebp)
                    symloc ( 1 , 128 , 1024 , 8 , 1009 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1010 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1011 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1012 ) |-> (byte ( 0 , undefMInt) => _) // -4(%ebp)
                    symloc ( 1 , 128 , 1024 , 8 , 1013 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1014 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1015 ) |-> (byte ( 0 , undefMInt) => _)

                    // return address
                    symloc ( 1 , 128 , 1024 , 8 , 1016 ) |-> byte ( 0 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1017 ) |-> byte ( 1 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1018 ) |-> byte ( 2 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1019 ) |-> byte ( 3 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1020 ) |-> byte ( 4 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1021 ) |-> byte ( 5 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1022 ) |-> byte ( 6 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1023 ) |-> byte ( 7 , mi(64,-1) )
                  )
            </objects>
            <freed>
              .Set
            </freed>
          </memory>
          <stackbase>
            stackBaseInfo ( symloc ( 1 , 128 , 1024 , 8 , 0 ) , mi(64, 1016) )
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
        requires  V_RAX >=Int 0 andBool V_RAX <Int 2 ^Int 64 
        andBool   V_RBX >=Int 0 andBool V_RBX <Int 2 ^Int 64 
endmodule

