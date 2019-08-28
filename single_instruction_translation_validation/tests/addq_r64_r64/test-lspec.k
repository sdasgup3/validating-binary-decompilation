module TEST-LSPEC
imports LLVM-SEMANTICS

rule
<k>
  //callMain => exitCode(0)

  callProc(
      ccc,
      tFunc(tInt(32), tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) )  tInt ( 64 )  tInt ( 64 )  .FirstClassTypes , false ),
      typedVal(tPtr(tFunc(tInt(32), tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) )  tInt ( 64 )  tInt ( 64 )  .FirstClassTypes , false ) ) , fptr ( globalID ( @sub_530_main ) , 0 ) ),

      (
       argumentVal(
         tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) ),
         typedVal(tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) ),
           ptr(symloc(4, 64, 544, 8, 0), 0))
         )
       argumentVal(tInt(64), typedVal(tInt(64), 0))
       argumentVal(tInt(64), typedVal(tInt(64), 0))
       .ArgumentVals
       ):ArgumentVals)
       =>
      typedVal(tInt(32), 0)

</k>
<memory>
<nextLoc> 5 </nextLoc>
<objects>
mem (
      // Flags
      symloc ( 4 , 64 , 544 , 8 , 1 ) |->  ( byte ( 0 , 1 , V_CF:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 3 ) |->  ( byte ( 0 , 1 , V_PF:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 5 ) |->  ( byte ( 0 , 1 , V_AF:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 7 ) |->  ( byte ( 0 , 1 , V_ZF:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 9 ) |->  ( byte ( 0 , 1 , V_SF:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 11 ) |->  ( byte ( 0 , 1 , V_DF:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 13 ) |-> ( byte ( 0 , 1 , V_OF:Int ) => _)
      // GPRs
      symloc ( 4 , 64 , 544 , 8 , 280 ) |-> ( byte ( 0 , 8 , V_RAX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 281 ) |-> ( byte ( 1 , 8 , V_RAX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 282 ) |-> ( byte ( 2 , 8 , V_RAX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 283 ) |-> ( byte ( 3 , 8 , V_RAX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 284 ) |-> ( byte ( 4 , 8 , V_RAX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 285 ) |-> ( byte ( 5 , 8 , V_RAX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 286 ) |-> ( byte ( 6 , 8 , V_RAX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 287 ) |-> ( byte ( 7 , 8 , V_RAX:Int ) => _)

      symloc ( 4 , 64 , 544 , 8 , 296 ) |-> ( byte ( 0 , 8 , V_RBX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 297 ) |-> ( byte ( 1 , 8 , V_RBX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 298 ) |-> ( byte ( 2 , 8 , V_RBX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 299 ) |-> ( byte ( 3 , 8 , V_RBX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 300 ) |-> ( byte ( 4 , 8 , V_RBX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 301 ) |-> ( byte ( 5 , 8 , V_RBX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 302 ) |-> ( byte ( 6 , 8 , V_RBX:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 303 ) |-> ( byte ( 7 , 8 , V_RBX:Int ) => _) 
      
      symloc ( 4 , 64 , 544 , 8 , 536 ) |-> ( byte ( 0 , 8 , V_PC:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 537 ) |-> ( byte ( 1 , 8 , V_PC:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 538 ) |-> ( byte ( 2 , 8 , V_PC:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 539 ) |-> ( byte ( 3 , 8 , V_PC:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 540 ) |-> ( byte ( 4 , 8 , V_PC:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 541 ) |-> ( byte ( 5 , 8 , V_PC:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 542 ) |-> ( byte ( 6 , 8 , V_PC:Int ) => _)
      symloc ( 4 , 64 , 544 , 8 , 543 ) |-> ( byte ( 7 , 8 , V_PC:Int ) => _)
  )
</objects>
<freed> .MemorySet </freed>
</memory>
<globals>
    builtinID ( @errno ) |-> typedVal ( tPtr ( tInt ( 32 ) ) , ptr ( symloc ( 1 , 32 , 4 , 8 , 0 ) , 0 ) )
    globalID (  @my.ctpop.i32 )   |-> typedVal ( tPtr ( tFunc ( tInt ( 32 ) , tInt ( 32 )  .FirstClassTypes , false ) ) , fptr ( globalID ( @my.ctpop.i32 ) , 0 ) )
    globalID ( @sub_530_main ) |-> typedVal ( tPtr ( tFunc ( tInt ( 32 ) , tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) )  tInt ( 64 )  tInt ( 64 )  .FirstClassTypes , false ) ) , fptr ( globalID ( @sub_530_main ) , 0 ) )
  </globals>
<functions>
<function>
      <functionName>
        globalID ( @my.ctpop.i32 )
      </functionName>
      <callingConvention>
        ccc
      </callingConvention>
      <formalParameters>
        parameter ( tInt ( 32 ) , localID ( %x ) )  .Parameters
      </formalParameters>
      <localRegisters>
        localID ( %and )  localID ( %shr123 )  localID ( %and1 )  localID ( %shr2124 )  localID ( %and3 )  localID ( %shr5125 )  localID ( %and6 )  localID ( %shr8126 )  localID ( %and9 )  localID ( %shr11127 )  localID ( %and12 )  localID ( %shr14128 )  localID ( %and15 )  localID ( %shr17129 )  localID ( %and18 )  localID ( %shr20130 )  localID ( %and21 )  localID ( %shr23131 )  localID ( %and24 )  localID ( %shr26132 )  localID ( %and27 )  localID ( %shr29133 )  localID ( %and30 )  localID ( %shr32134 )  localID ( %and33 )  localID ( %shr35135 )  localID ( %and36 )  localID ( %shr38136 )  localID ( %and39 )  localID ( %shr41137 )  localID ( %and42 )  localID ( %shr44138 )  localID ( %and45 )  localID ( %shr47139 )  localID ( %and48 )  localID ( %shr50140 )  localID ( %and51 )  localID ( %shr53141 )  localID ( %and54 )  localID ( %shr56142 )  localID ( %and57 )  localID ( %shr59143 )  localID ( %and60 )  localID ( %shr62144 )  localID ( %and63 )  localID ( %shr65145 )  localID ( %and66 )  localID ( %shr68146 )  localID ( %and69 )  localID ( %shr71147 )  localID ( %and72 )  localID ( %shr74148 )  localID ( %and75 )  localID ( %shr77149 )  localID ( %and78 )  localID ( %shr80150 )  localID ( %and81 )  localID ( %shr83151 )  localID ( %and84 )  localID ( %shr86152 )  localID ( %and87 )  localID ( %shr89153 )  localID ( %add )  localID ( %add4 )  localID ( %add7 )  localID ( %add10 )  localID ( %add13 )  localID ( %add16 )  localID ( %add19 )  localID ( %add22 )  localID ( %add25 )  localID ( %add28 )  localID ( %add31 )  localID ( %add34 )  localID ( %add37 )  localID ( %add40 )  localID ( %add43 )  localID ( %add46 )  localID ( %add49 )  localID ( %add52 )  localID ( %add55 )  localID ( %add58 )  localID ( %add61 )  localID ( %add64 )  localID ( %add67 )  localID ( %add70 )  localID ( %add73 )  localID ( %add76 )  localID ( %add79 )  localID ( %add82 )  localID ( %add85 )  localID ( %add88 )  localID ( %add91 )  .LocalIDs
      </localRegisters>
      <basicBlocks>
        localID ( %entry ) |-> bb ( localID ( %entry ) , and ( localID ( %and ) , tInt ( 32 ) , localID ( %x ) , 1 )  lshr ( localID ( %shr123 ) , rounded , tInt ( 32 ) , localID ( %x ) , 1 )  and ( localID ( %and1 ) , tInt ( 32 ) , localID ( %shr123 ) , 1 )  lshr ( localID ( %shr2124 ) , rounded , tInt ( 32 ) , localID ( %x ) , 2 )  and ( localID ( %and3 ) , tInt ( 32 ) , localID ( %shr2124 ) , 1 )  lshr ( localID ( %shr5125 ) , rounded , tInt ( 32 ) , localID ( %x ) , 3 )  and ( localID ( %and6 ) , tInt ( 32 ) , localID ( %shr5125 ) , 1 )  lshr ( localID ( %shr8126 ) , rounded , tInt ( 32 ) , localID ( %x ) , 4 )  and ( localID ( %and9 ) , tInt ( 32 ) , localID ( %shr8126 ) , 1 )  lshr ( localID ( %shr11127 ) , rounded , tInt ( 32 ) , localID ( %x ) , 5 )  and ( localID ( %and12 ) , tInt ( 32 ) , localID ( %shr11127 ) , 1 )  lshr ( localID ( %shr14128 ) , rounded , tInt ( 32 ) , localID ( %x ) , 6 )  and ( localID ( %and15 ) , tInt ( 32 ) , localID ( %shr14128 ) , 1 )  lshr ( localID ( %shr17129 ) , rounded , tInt ( 32 ) , localID ( %x ) , 7 )  and ( localID ( %and18 ) , tInt ( 32 ) , localID ( %shr17129 ) , 1 )  lshr ( localID ( %shr20130 ) , rounded , tInt ( 32 ) , localID ( %x ) , 8 )  and ( localID ( %and21 ) , tInt ( 32 ) , localID ( %shr20130 ) , 1 )  lshr ( localID ( %shr23131 ) , rounded , tInt ( 32 ) , localID ( %x ) , 9 )  and ( localID ( %and24 ) , tInt ( 32 ) , localID ( %shr23131 ) , 1 )  lshr ( localID ( %shr26132 ) , rounded , tInt ( 32 ) , localID ( %x ) , 10 )  and ( localID ( %and27 ) , tInt ( 32 ) , localID ( %shr26132 ) , 1 )  lshr ( localID ( %shr29133 ) , rounded , tInt ( 32 ) , localID ( %x ) , 11 )  and ( localID ( %and30 ) , tInt ( 32 ) , localID ( %shr29133 ) , 1 )  lshr ( localID ( %shr32134 ) , rounded , tInt ( 32 ) , localID ( %x ) , 12 )  and ( localID ( %and33 ) , tInt ( 32 ) , localID ( %shr32134 ) , 1 )  lshr ( localID ( %shr35135 ) , rounded , tInt ( 32 ) , localID ( %x ) , 13 )  and ( localID ( %and36 ) , tInt ( 32 ) , localID ( %shr35135 ) , 1 )  lshr ( localID ( %shr38136 ) , rounded , tInt ( 32 ) , localID ( %x ) , 14 )  and ( localID ( %and39 ) , tInt ( 32 ) , localID ( %shr38136 ) , 1 )  lshr ( localID ( %shr41137 ) , rounded , tInt ( 32 ) , localID ( %x ) , 15 )  and ( localID ( %and42 ) , tInt ( 32 ) , localID ( %shr41137 ) , 1 )  lshr ( localID ( %shr44138 ) , rounded , tInt ( 32 ) , localID ( %x ) , 16 )  and ( localID ( %and45 ) , tInt ( 32 ) , localID ( %shr44138 ) , 1 )  lshr ( localID ( %shr47139 ) , rounded , tInt ( 32 ) , localID ( %x ) , 17 )  and ( localID ( %and48 ) , tInt ( 32 ) , localID ( %shr47139 ) , 1 )  lshr ( localID ( %shr50140 ) , rounded , tInt ( 32 ) , localID ( %x ) , 18 )  and ( localID ( %and51 ) , tInt ( 32 ) , localID ( %shr50140 ) , 1 )  lshr ( localID ( %shr53141 ) , rounded , tInt ( 32 ) , localID ( %x ) , 19 )  and ( localID ( %and54 ) , tInt ( 32 ) , localID ( %shr53141 ) , 1 )  lshr ( localID ( %shr56142 ) , rounded , tInt ( 32 ) , localID ( %x ) , 20 )  and ( localID ( %and57 ) , tInt ( 32 ) , localID ( %shr56142 ) , 1 )  lshr ( localID ( %shr59143 ) , rounded , tInt ( 32 ) , localID ( %x ) , 21 )  and ( localID ( %and60 ) , tInt ( 32 ) , localID ( %shr59143 ) , 1 )  lshr ( localID ( %shr62144 ) , rounded , tInt ( 32 ) , localID ( %x ) , 22 )  and ( localID ( %and63 ) , tInt ( 32 ) , localID ( %shr62144 ) , 1 )  lshr ( localID ( %shr65145 ) , rounded , tInt ( 32 ) , localID ( %x ) , 23 )  and ( localID ( %and66 ) , tInt ( 32 ) , localID ( %shr65145 ) , 1 )  lshr ( localID ( %shr68146 ) , rounded , tInt ( 32 ) , localID ( %x ) , 24 )  and ( localID ( %and69 ) , tInt ( 32 ) , localID ( %shr68146 ) , 1 )  lshr ( localID ( %shr71147 ) , rounded , tInt ( 32 ) , localID ( %x ) , 25 )  and ( localID ( %and72 ) , tInt ( 32 ) , localID ( %shr71147 ) , 1 )  lshr ( localID ( %shr74148 ) , rounded , tInt ( 32 ) , localID ( %x ) , 26 )  and ( localID ( %and75 ) , tInt ( 32 ) , localID ( %shr74148 ) , 1 )  lshr ( localID ( %shr77149 ) , rounded , tInt ( 32 ) , localID ( %x ) , 27 )  and ( localID ( %and78 ) , tInt ( 32 ) , localID ( %shr77149 ) , 1 )  lshr ( localID ( %shr80150 ) , rounded , tInt ( 32 ) , localID ( %x ) , 28 )  and ( localID ( %and81 ) , tInt ( 32 ) , localID ( %shr80150 ) , 1 )  lshr ( localID ( %shr83151 ) , rounded , tInt ( 32 ) , localID ( %x ) , 29 )  and ( localID ( %and84 ) , tInt ( 32 ) , localID ( %shr83151 ) , 1 )  lshr ( localID ( %shr86152 ) , rounded , tInt ( 32 ) , localID ( %x ) , 30 )  and ( localID ( %and87 ) , tInt ( 32 ) , localID ( %shr86152 ) , 1 )  lshr ( localID ( %shr89153 ) , rounded , tInt ( 32 ) , localID ( %x ) , 31 )  add ( localID ( %add ) , uw , tInt ( 32 ) , localID ( %shr89153 ) , localID ( %and ) )  add ( localID ( %add4 ) , uw , tInt ( 32 ) , localID ( %add ) , localID ( %and1 ) )  add ( localID ( %add7 ) , uw , tInt ( 32 ) , localID ( %add4 ) , localID ( %and3 ) )  add ( localID ( %add10 ) , uw , tInt ( 32 ) , localID ( %add7 ) , localID ( %and6 ) )  add ( localID ( %add13 ) , uw , tInt ( 32 ) , localID ( %add10 ) , localID ( %and9 ) )  add ( localID ( %add16 ) , uw , tInt ( 32 ) , localID ( %add13 ) , localID ( %and12 ) )  add ( localID ( %add19 ) , uw , tInt ( 32 ) , localID ( %add16 ) , localID ( %and15 ) )  add ( localID ( %add22 ) , uw , tInt ( 32 ) , localID ( %add19 ) , localID ( %and18 ) )  add ( localID ( %add25 ) , uw , tInt ( 32 ) , localID ( %add22 ) , localID ( %and21 ) )  add ( localID ( %add28 ) , uw , tInt ( 32 ) , localID ( %add25 ) , localID ( %and24 ) )  add ( localID ( %add31 ) , uw , tInt ( 32 ) , localID ( %add28 ) , localID ( %and27 ) )  add ( localID ( %add34 ) , uw , tInt ( 32 ) , localID ( %add31 ) , localID ( %and30 ) )  add ( localID ( %add37 ) , uw , tInt ( 32 ) , localID ( %add34 ) , localID ( %and33 ) )  add ( localID ( %add40 ) , uw , tInt ( 32 ) , localID ( %add37 ) , localID ( %and36 ) )  add ( localID ( %add43 ) , uw , tInt ( 32 ) , localID ( %add40 ) , localID ( %and39 ) )  add ( localID ( %add46 ) , uw , tInt ( 32 ) , localID ( %add43 ) , localID ( %and42 ) )  add ( localID ( %add49 ) , uw , tInt ( 32 ) , localID ( %add46 ) , localID ( %and45 ) )  add ( localID ( %add52 ) , uw , tInt ( 32 ) , localID ( %add49 ) , localID ( %and48 ) )  add ( localID ( %add55 ) , uw , tInt ( 32 ) , localID ( %add52 ) , localID ( %and51 ) )  add ( localID ( %add58 ) , uw , tInt ( 32 ) , localID ( %add55 ) , localID ( %and54 ) )  add ( localID ( %add61 ) , uw , tInt ( 32 ) , localID ( %add58 ) , localID ( %and57 ) )  add ( localID ( %add64 ) , uw , tInt ( 32 ) , localID ( %add61 ) , localID ( %and60 ) )  add ( localID ( %add67 ) , uw , tInt ( 32 ) , localID ( %add64 ) , localID ( %and63 ) )  add ( localID ( %add70 ) , uw , tInt ( 32 ) , localID ( %add67 ) , localID ( %and66 ) )  add ( localID ( %add73 ) , uw , tInt ( 32 ) , localID ( %add70 ) , localID ( %and69 ) )  add ( localID ( %add76 ) , uw , tInt ( 32 ) , localID ( %add73 ) , localID ( %and72 ) )  add ( localID ( %add79 ) , uw , tInt ( 32 ) , localID ( %add76 ) , localID ( %and75 ) )  add ( localID ( %add82 ) , uw , tInt ( 32 ) , localID ( %add79 ) , localID ( %and78 ) )  add ( localID ( %add85 ) , uw , tInt ( 32 ) , localID ( %add82 ) , localID ( %and81 ) )  add ( localID ( %add88 ) , uw , tInt ( 32 ) , localID ( %add85 ) , localID ( %and84 ) )  add ( localID ( %add91 ) , uw , tInt ( 32 ) , localID ( %add88 ) , localID ( %and87 ) )  .Instructions , ret ( tInt ( 32 ) , localID ( %add91 ) ) )
      </basicBlocks>
      <entryBlock>
        localID ( %entry )
      </entryBlock>
    </function>

<function>
  <functionName>
    globalID ( @sub_530_main )
  </functionName>
  <callingConvention>
    ccc
  </callingConvention>
  <formalParameters>
    parameter ( tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) ) , localID ( %0 ) )  parameter ( tInt ( 64 ) , localID ( %1 ) )  parameter ( tInt ( 64 ) , localID ( %2 ) )  .Parameters
  </formalParameters>
  <localRegisters>
  localID ( %3 )  localID ( %4 )  localID ( %5 )  localID ( %PC )  localID ( %6 )  localID ( %7 )  localID ( %8 )  localID ( %RAX )  localID ( %9 )  localID ( %10 )  localID ( %11 )  localID ( %RBX )  localID ( %12 )  localID ( %13 )  localID ( %14 )  localID ( %15 )  localID ( %16 )  localID ( %17 )  localID ( %18 )  localID ( %19 )  localID ( %20 )  localID ( %21 )  localID ( %22 )  localID ( %23 )  localID ( %24 )  localID ( %25 )  localID ( %26 )  localID ( %27 )  localID ( %28 )  localID ( %29 )  localID ( %30 )  localID ( %31 )  localID ( %32 )  localID ( %33 )  localID ( %34 )  localID ( %35 )  localID ( %36 )  localID ( %37 )  localID ( %38 )  localID ( %39 )  localID ( %40 )  localID ( %41 )  localID ( %42 )  localID ( %43 )  localID ( %44 )  localID ( %45 )  localID ( %46 )  localID ( %47 )  localID ( %48 )  localID ( %49 )  localID ( %50 )  .LocalIDs
  </localRegisters>
  <entryBlock>
    localID ( %block_530 )
  </entryBlock>
  <basicBlocks>
        localID ( %block_530 ) |-> bb ( localID ( %block_530 ) , getelementptr ( localID ( %3 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %0 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %4 ) , inbounds , tIdentifiedStruct ( localID ( %struct.GPR ) ) , localID ( %3 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 33 )  .GEPIndices )  getelementptr ( localID ( %5 ) , inbounds , tIdentifiedStruct ( localID ( %struct.Reg ) ) , localID ( %4 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  bitcast ( localID ( %PC ) , tPtr ( tIdentifiedStruct ( localID ( %union.anon ) ) ) , localID ( %5 ) , tPtr ( tInt ( 64 ) ) )  store ( tInt ( 64 ) , localID ( %1 ) , localID ( %PC ) , align ( 8 ) )  getelementptr ( localID ( %6 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %0 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %7 ) , inbounds , tIdentifiedStruct ( localID ( %struct.GPR ) ) , localID ( %6 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %8 ) , inbounds , tIdentifiedStruct ( localID ( %struct.Reg ) ) , localID ( %7 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  bitcast ( localID ( %RAX ) , tPtr ( tIdentifiedStruct ( localID ( %union.anon ) ) ) , localID ( %8 ) , tPtr ( tInt ( 64 ) ) )  getelementptr ( localID ( %9 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %0 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %10 ) , inbounds , tIdentifiedStruct ( localID ( %struct.GPR ) ) , localID ( %9 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 3 )  .GEPIndices )  getelementptr ( localID ( %11 ) , inbounds , tIdentifiedStruct ( localID ( %struct.Reg ) ) , localID ( %10 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  bitcast ( localID ( %RBX ) , tPtr ( tIdentifiedStruct ( localID ( %union.anon ) ) ) , localID ( %11 ) , tPtr ( tInt ( 64 ) ) )  load ( localID ( %12 ) , tInt ( 64 ) , localID ( %RAX ) , align ( 0 ) )  load ( localID ( %13 ) , tInt ( 64 ) , localID ( %RBX ) , align ( 0 ) )  load ( localID ( %14 ) , tInt ( 64 ) , localID ( %PC ) , align ( 0 ) )  add ( localID ( %15 ) , uw , tInt ( 64 ) , localID ( %14 ) , 3 )  store ( tInt ( 64 ) , localID ( %15 ) , localID ( %PC ) , align ( 0 ) )  add ( localID ( %16 ) , uw , tInt ( 64 ) , localID ( %13 ) , localID ( %12 ) )  store ( tInt ( 64 ) , localID ( %16 ) , localID ( %RAX ) , align ( 8 ) )  icmp ( localID ( %17 ) , ult , tInt ( 64 ) , localID ( %16 ) , localID ( %12 ) )  icmp ( localID ( %18 ) , ult , tInt ( 64 ) , localID ( %16 ) , localID ( %13 ) )  or ( localID ( %19 ) , tInt ( 1 ) , localID ( %17 ) , localID ( %18 ) )  zext ( localID ( %20 ) , tInt ( 1 ) , localID ( %19 ) , tInt ( 8 ) )  getelementptr ( localID ( %21 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %0 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  store ( tInt ( 8 ) , localID ( %20 ) , localID ( %21 ) , align ( 1 ) )  trunc ( localID ( %22 ) , tInt ( 64 ) , localID ( %16 ) , tInt ( 32 ) )  and ( localID ( %23 ) , tInt ( 32 ) , localID ( %22 ) , 255 )  callFunc ( localID ( %24 ) , ccc , tFunc ( tInt ( 32 ) , tInt ( 32 )  .FirstClassTypes , false ) , globalID ( @my.ctpop.i32 ) , argument ( tInt ( 32 ) , localID ( %23 ) )  .Arguments )  trunc ( localID ( %25 ) , tInt ( 32 ) , localID ( %24 ) , tInt ( 8 ) )  and ( localID ( %26 ) , tInt ( 8 ) , localID ( %25 ) , 1 )  xor ( localID ( %27 ) , tInt ( 8 ) , localID ( %26 ) , 1 )  getelementptr ( localID ( %28 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %0 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 3 )  .GEPIndices )  store ( tInt ( 8 ) , localID ( %27 ) , localID ( %28 ) , align ( 1 ) )  xor ( localID ( %29 ) , tInt ( 64 ) , localID ( %13 ) , localID ( %12 ) )  xor ( localID ( %30 ) , tInt ( 64 ) , localID ( %29 ) , localID ( %16 ) )  lshr ( localID ( %31 ) , rounded , tInt ( 64 ) , localID ( %30 ) , 4 )  trunc ( localID ( %32 ) , tInt ( 64 ) , localID ( %31 ) , tInt ( 8 ) )  and ( localID ( %33 ) , tInt ( 8 ) , localID ( %32 ) , 1 )  getelementptr ( localID ( %34 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %0 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 5 )  .GEPIndices )  store ( tInt ( 8 ) , localID ( %33 ) , localID ( %34 ) , align ( 1 ) )  icmp ( localID ( %35 ) , eq , tInt ( 64 ) , localID ( %16 ) , 0 )  zext ( localID ( %36 ) , tInt ( 1 ) , localID ( %35 ) , tInt ( 8 ) )  getelementptr ( localID ( %37 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %0 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 7 )  .GEPIndices )  store ( tInt ( 8 ) , localID ( %36 ) , localID ( %37 ) , align ( 1 ) )  lshr ( localID ( %38 ) , rounded , tInt ( 64 ) , localID ( %16 ) , 63 )  trunc ( localID ( %39 ) , tInt ( 64 ) , localID ( %38 ) , tInt ( 8 ) )  getelementptr ( localID ( %40 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %0 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 9 )  .GEPIndices )  store ( tInt ( 8 ) , localID ( %39 ) , localID ( %40 ) , align ( 1 ) )  lshr ( localID ( %41 ) , rounded , tInt ( 64 ) , localID ( %12 ) , 63 )  lshr ( localID ( %42 ) , rounded , tInt ( 64 ) , localID ( %13 ) , 63 )  xor ( localID ( %43 ) , tInt ( 64 ) , localID ( %38 ) , localID ( %41 ) )  xor ( localID ( %44 ) , tInt ( 64 ) , localID ( %38 ) , localID ( %42 ) )  add ( localID ( %45 ) , uw , tInt ( 64 ) , localID ( %43 ) , localID ( %44 ) )  icmp ( localID ( %46 ) , eq , tInt ( 64 ) , localID ( %45 ) , 2 )  zext ( localID ( %47 ) , tInt ( 1 ) , localID ( %46 ) , tInt ( 8 ) )  getelementptr ( localID ( %48 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %0 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 13 )  .GEPIndices )  store ( tInt ( 8 ) , localID ( %47 ) , localID ( %48 ) , align ( 1 ) )  load ( localID ( %49 ) , tInt ( 64 ) , localID ( %PC ) , align ( 0 ) )  add ( localID ( %50 ) , uw , tInt ( 64 ) , localID ( %49 ) , 1 )  store ( tInt ( 64 ) , localID ( %50 ) , localID ( %PC ) , align ( 0 ) )  .Instructions , ret ( tInt ( 32 ) , 0 ) )
  
  </basicBlocks>
</function>
</functions>
<structures>
    <types>
      localID ( %struct.ArithFlags ) |-> tStruct ( tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  .ComposableTypes )
      localID ( %struct.GPR ) |-> tStruct ( tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  .ComposableTypes )
      localID ( %struct.Reg ) |-> tStruct ( tIdentifiedStruct ( localID ( %union.anon ) )  .ComposableTypes )
      localID ( %struct.State ) |-> tStruct ( tIdentifiedStruct ( localID ( %struct.ArithFlags ) )  tIdentifiedStruct ( localID ( %struct.GPR ) )  .ComposableTypes )
      localID ( %struct._kllvm_fpos_t ) |-> tStruct ( tInt ( 64 )  tPtr ( tInt ( 8 ) )  .ComposableTypes )
      localID ( %union.anon ) |-> tStruct ( tInt ( 64 )  .ComposableTypes )
    </types>
    <layoutInfo>
      tIdentifiedStruct ( localID ( %struct.ArithFlags ) ) |-> structLayout ( 16 , 128 , 8 , false , 0 |-> ( tInt ( 8 ) , 8 , 0 )
      1 |-> ( tInt ( 8 ) , 8 , 8 )
      2 |-> ( tInt ( 8 ) , 8 , 16 )
      3 |-> ( tInt ( 8 ) , 8 , 24 )
      4 |-> ( tInt ( 8 ) , 8 , 32 )
      5 |-> ( tInt ( 8 ) , 8 , 40 )
      6 |-> ( tInt ( 8 ) , 8 , 48 )
      7 |-> ( tInt ( 8 ) , 8 , 56 )
      8 |-> ( tInt ( 8 ) , 8 , 64 )
      9 |-> ( tInt ( 8 ) , 8 , 72 )
      10 |-> ( tInt ( 8 ) , 8 , 80 )
      11 |-> ( tInt ( 8 ) , 8 , 88 )
      12 |-> ( tInt ( 8 ) , 8 , 96 )
      13 |-> ( tInt ( 8 ) , 8 , 104 )
      14 |-> ( tInt ( 8 ) , 8 , 112 )
      15 |-> ( tInt ( 8 ) , 8 , 120 ) )
      tIdentifiedStruct ( localID ( %struct.GPR ) ) |-> structLayout ( 34 , 2176 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 64 )
      2 |-> ( tInt ( 64 ) , 64 , 128 )
      3 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 192 )
      4 |-> ( tInt ( 64 ) , 64 , 256 )
      5 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 320 )
      6 |-> ( tInt ( 64 ) , 64 , 384 )
      7 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 448 )
      8 |-> ( tInt ( 64 ) , 64 , 512 )
      9 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 576 )
      10 |-> ( tInt ( 64 ) , 64 , 640 )
      11 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 704 )
      12 |-> ( tInt ( 64 ) , 64 , 768 )
      13 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 832 )
      14 |-> ( tInt ( 64 ) , 64 , 896 )
      15 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 960 )
      16 |-> ( tInt ( 64 ) , 64 , 1024 )
      17 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1088 )
      18 |-> ( tInt ( 64 ) , 64 , 1152 )
      19 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1216 )
      20 |-> ( tInt ( 64 ) , 64 , 1280 )
      21 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1344 )
      22 |-> ( tInt ( 64 ) , 64 , 1408 )
      23 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1472 )
      24 |-> ( tInt ( 64 ) , 64 , 1536 )
      25 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1600 )
      26 |-> ( tInt ( 64 ) , 64 , 1664 )
      27 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1728 )
      28 |-> ( tInt ( 64 ) , 64 , 1792 )
      29 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1856 )
      30 |-> ( tInt ( 64 ) , 64 , 1920 )
      31 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1984 )
      32 |-> ( tInt ( 64 ) , 64 , 2048 )
      33 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 2112 ) )

      tIdentifiedStruct ( localID ( %struct.Reg ) ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 64 , 0 ) )
      tIdentifiedStruct ( localID ( %struct.State ) ) |-> structLayout ( 2 , 4352 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.ArithFlags ) ) , 2176 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %struct.GPR ) ) , 2176 , 2176 ) )
      tIdentifiedStruct ( localID ( %struct._kllvm_fpos_t ) ) |-> structLayout ( 2 , 128 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
      1 |-> ( tPtr ( tInt ( 8 ) ) , 64 , 64 ) )
      tIdentifiedStruct ( localID ( %union.anon ) ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 ) )
      tStruct ( tIdentifiedStruct ( localID ( %struct.ArithFlags ) )  tIdentifiedStruct ( localID ( %struct.GPR ) )  .ComposableTypes ) |-> structLayout ( 2 , 4352 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.ArithFlags ) ) , 2176 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %struct.GPR ) ) , 2176 , 2176 ) )
      tStruct ( tIdentifiedStruct ( localID ( %union.anon ) )  .ComposableTypes ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 64 , 0 ) )

      tStruct ( tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  .ComposableTypes ) |-> structLayout ( 16 , 128 , 8 , false , 0 |-> ( tInt ( 8 ) , 8 , 0 )
      1 |-> ( tInt ( 8 ) , 8 , 8 )
      2 |-> ( tInt ( 8 ) , 8 , 16 )
      3 |-> ( tInt ( 8 ) , 8 , 24 )
      4 |-> ( tInt ( 8 ) , 8 , 32 )
      5 |-> ( tInt ( 8 ) , 8 , 40 )
      6 |-> ( tInt ( 8 ) , 8 , 48 )
      7 |-> ( tInt ( 8 ) , 8 , 56 )
      8 |-> ( tInt ( 8 ) , 8 , 64 )
      9 |-> ( tInt ( 8 ) , 8 , 72 )
      10 |-> ( tInt ( 8 ) , 8 , 80 )
      11 |-> ( tInt ( 8 ) , 8 , 88 )
      12 |-> ( tInt ( 8 ) , 8 , 96 )
      13 |-> ( tInt ( 8 ) , 8 , 104 )
      14 |-> ( tInt ( 8 ) , 8 , 112 )
      15 |-> ( tInt ( 8 ) , 8 , 120 ) )

      tStruct ( tInt ( 64 )  .ComposableTypes ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 ) )

      tStruct ( tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  .ComposableTypes ) |-> structLayout ( 34 , 2176 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 64 )
      2 |-> ( tInt ( 64 ) , 64 , 128 )
      3 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 192 )
      4 |-> ( tInt ( 64 ) , 64 , 256 )
      5 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 320 )
      6 |-> ( tInt ( 64 ) , 64 , 384 )
      7 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 448 )
      8 |-> ( tInt ( 64 ) , 64 , 512 )
      9 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 576 )
      10 |-> ( tInt ( 64 ) , 64 , 640 )
      11 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 704 )
      12 |-> ( tInt ( 64 ) , 64 , 768 )
      13 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 832 )
      14 |-> ( tInt ( 64 ) , 64 , 896 )
      15 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 960 )
      16 |-> ( tInt ( 64 ) , 64 , 1024 )
      17 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1088 )
      18 |-> ( tInt ( 64 ) , 64 , 1152 )
      19 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1216 )
      20 |-> ( tInt ( 64 ) , 64 , 1280 )
      21 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1344 )
      22 |-> ( tInt ( 64 ) , 64 , 1408 )
      23 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1472 )
      24 |-> ( tInt ( 64 ) , 64 , 1536 )
      25 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1600 )
      26 |-> ( tInt ( 64 ) , 64 , 1664 )
      27 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1728 )
      28 |-> ( tInt ( 64 ) , 64 , 1792 )
      29 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1856 )
      30 |-> ( tInt ( 64 ) , 64 , 1920 )
      31 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 1984 )
      32 |-> ( tInt ( 64 ) , 64 , 2048 )
      33 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 2112 ) )

      tStruct ( tInt ( 64 )  tPtr ( tInt ( 8 ) )  .ComposableTypes ) |-> structLayout ( 2 , 128 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
      1 |-> ( tPtr ( tInt ( 8 ) ) , 64 , 64 ) )
    </layoutInfo>
</structures>
requires          (V_RAX >=Int -9223372036854775808) andBool (V_RAX <=Int 9223372036854775807)
        andBool   (V_RBX >=Int -9223372036854775808) andBool (V_RBX <=Int 9223372036854775807)
        andBool   (V_CF  >=Int 0) andBool (V_CF  <=Int 1)
        andBool   (V_PF  >=Int 0) andBool (V_PF  <=Int 1)
        andBool   (V_AF  >=Int 0) andBool (V_AF  <=Int 1)
        andBool   (V_ZF  >=Int 0) andBool (V_ZF  <=Int 1)
        andBool   (V_SF  >=Int 0) andBool (V_SF  <=Int 1)
        andBool   (V_DF  >=Int 0) andBool (V_DF  <=Int 1)
        andBool   (V_OF  >=Int 0) andBool (V_OF  <=Int 1)


endmodule
