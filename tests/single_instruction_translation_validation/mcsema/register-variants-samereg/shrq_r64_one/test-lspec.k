module TEST-LSPEC
imports LLVM-SEMANTICS

rule
<k>
  callProc(
      ccc,
      tFunc(
        tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ),
        tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) )  tInt ( 64 )  tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) )  .FirstClassTypes , false ),

      typedVal(
        tPtr(
          tFunc(
            tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ),
            tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) )  tInt ( 64 )  tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) .FirstClassTypes , false ) ) ,
        fptr ( globalID ( @routine_shrq_r64_one ) , 0 )
        ),

      (
       argumentVal(
         tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) ),
         typedVal(tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) ),
           ptr(symloc(4, 64, 6144, 8, 0), 0))
         )

       argumentVal(tInt(64), typedVal(tInt(64), 0))

       argumentVal(
         tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ),
         typedVal(tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ),
           ptr(symloc(5, 64, 8, 8, 0), 0))
         )
       .ArgumentVals
       ):ArgumentVals)

       =>

         typedVal(tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ),
           ptr(symloc(5, 64, 8, 8, 0), 0))

</k>
<memory>
<nextLoc> 5 </nextLoc>
<objects>
mem (
      
      // Flags
      symloc ( 4 , 64 , 6144 , 8 , 4097 ) |->  ( byte ( 0 , 1 , VL_CF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4099 ) |->  ( byte ( 0 , 1 , VL_PF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4101 ) |->  ( byte ( 0 , 1 , VL_AF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4103 ) |->  ( byte ( 0 , 1 , VL_ZF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4105 ) |->  ( byte ( 0 , 1 , VL_SF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4107 ) |->  ( byte ( 0 , 1 , VL_DF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4109 ) |-> ( byte ( 0 , 1 , VL_OF:Int ) => _)
      // GPRs
      symloc ( 4 , 64 , 6144 , 8 , 4360 ) |-> ( byte ( 0 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4361 ) |-> ( byte ( 1 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4362 ) |-> ( byte ( 2 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4363 ) |-> ( byte ( 3 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4364 ) |-> ( byte ( 4 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4365 ) |-> ( byte ( 5 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4366 ) |-> ( byte ( 6 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4367 ) |-> ( byte ( 7 , 8 , VL_RAX:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 4376 ) |-> ( byte ( 0 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4377 ) |-> ( byte ( 1 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4378 ) |-> ( byte ( 2 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4379 ) |-> ( byte ( 3 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4380 ) |-> ( byte ( 4 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4381 ) |-> ( byte ( 5 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4382 ) |-> ( byte ( 6 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4383 ) |-> ( byte ( 7 , 8 , VL_RBX:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 4392 ) |-> ( byte ( 0 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4393 ) |-> ( byte ( 1 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4394 ) |-> ( byte ( 2 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4395 ) |-> ( byte ( 3 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4396 ) |-> ( byte ( 4 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4397 ) |-> ( byte ( 5 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4398 ) |-> ( byte ( 6 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4399 ) |-> ( byte ( 7 , 8 , VL_RCX:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 4408 ) |-> ( byte ( 0 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4409 ) |-> ( byte ( 1 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4410 ) |-> ( byte ( 2 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4411 ) |-> ( byte ( 3 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4412 ) |-> ( byte ( 4 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4413 ) |-> ( byte ( 5 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4414 ) |-> ( byte ( 6 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4415 ) |-> ( byte ( 7 , 8 , VL_RDX:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 4424 ) |-> ( byte ( 0 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4425 ) |-> ( byte ( 1 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4426 ) |-> ( byte ( 2 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4427 ) |-> ( byte ( 3 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4428 ) |-> ( byte ( 4 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4429 ) |-> ( byte ( 5 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4430 ) |-> ( byte ( 6 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4431 ) |-> ( byte ( 7 , 8 , VL_RSI:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 4440 ) |-> ( byte ( 0 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4441 ) |-> ( byte ( 1 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4442 ) |-> ( byte ( 2 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4443 ) |-> ( byte ( 3 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4444 ) |-> ( byte ( 4 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4445 ) |-> ( byte ( 5 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4446 ) |-> ( byte ( 6 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4447 ) |-> ( byte ( 7 , 8 , VL_RDI:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 4456 ) |-> ( byte ( 0 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4457 ) |-> ( byte ( 1 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4458 ) |-> ( byte ( 2 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4459 ) |-> ( byte ( 3 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4460 ) |-> ( byte ( 4 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4461 ) |-> ( byte ( 5 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4462 ) |-> ( byte ( 6 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4463 ) |-> ( byte ( 7 , 8 , VL_RSP:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 4472 ) |-> ( byte ( 0 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4473 ) |-> ( byte ( 1 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4474 ) |-> ( byte ( 2 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4475 ) |-> ( byte ( 3 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4476 ) |-> ( byte ( 4 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4477 ) |-> ( byte ( 5 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4478 ) |-> ( byte ( 6 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4479 ) |-> ( byte ( 7 , 8 , VL_RBP:Int ) => _)
      

      symloc ( 4 , 64 , 6144 , 8 , 4616 ) |-> ( byte ( 0 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4617 ) |-> ( byte ( 1 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4618 ) |-> ( byte ( 2 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4619 ) |-> ( byte ( 3 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4620 ) |-> ( byte ( 4 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4621 ) |-> ( byte ( 5 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4622 ) |-> ( byte ( 6 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4623 ) |-> ( byte ( 7 , 8 , 0 ) => _)


  )
</objects>
<freed> .MemorySet </freed>
</memory>
  <globals>
    builtinID ( @errno ) |-> typedVal ( tPtr ( tInt ( 32 ) ) , ptr ( symloc ( 1 , 32 , 4 , 8 , 0 ) , 0 ) )
    globalID ( @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_ ) |-> typedVal ( tPtr ( tFunc ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) )  tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) )  tPtr ( tInt ( 64 ) )  tInt ( 64 )  tInt ( 64 )  .FirstClassTypes , false ) ) , fptr ( globalID ( @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_ ) , 0 ) )
    globalID ( @__remill_atomic_begin ) |-> typedVal ( tPtr ( tFunc ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) )  .FirstClassTypes , false ) ) , fptr ( globalID ( @__remill_atomic_begin ) , 0 ) )
    globalID ( @__remill_atomic_end ) |-> typedVal ( tPtr ( tFunc ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) )  .FirstClassTypes , false ) ) , fptr ( globalID ( @__remill_atomic_end ) , 0 ) )
    globalID ( @main ) |-> typedVal ( tPtr ( tFunc ( tInt ( 32 ) , .FirstClassTypes , false ) ) , fptr ( globalID ( @main ) , 0 ) )
    globalID ( @my.ctpop.i32 ) |-> typedVal ( tPtr ( tFunc ( tInt ( 32 ) , tInt ( 32 )  .FirstClassTypes , false ) ) , fptr ( globalID ( @my.ctpop.i32 ) , 0 ) )
    globalID ( @routine_shrq_r64_one ) |-> typedVal ( tPtr ( tFunc ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) )  tInt ( 64 )  tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) )  .FirstClassTypes , false ) ) , fptr ( globalID ( @routine_shrq_r64_one ) , 0 ) )
  </globals>

  <functions>
    <function>
      <functionName>
        globalID ( @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_ )
      </functionName>
      <callingConvention>
        ccc
      </callingConvention>
      <formalParameters>
        parameter ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , localID ( %0 ) )  parameter ( tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) ) , localID ( %1 ) )  parameter ( tPtr ( tInt ( 64 ) ) , localID ( %2 ) )  parameter ( tInt ( 64 ) , localID ( %3 ) )  parameter ( tInt ( 64 ) , localID ( %4 ) )  .Parameters
      </formalParameters>
      <localRegisters>
        localID ( %6 )  localID ( %8 )  localID ( %9 )  localID ( %11 )  localID ( %12 )  localID ( %13 )  localID ( %14 )  localID ( %15 )  localID ( %17 )  localID ( %18 )  localID ( %19 )  localID ( %20 )  localID ( %21 )  localID ( %22 )  localID ( %23 )  localID ( %24 )  localID ( %25 )  localID ( %26 )  localID ( %27 )  localID ( %28 )  localID ( %29 )  localID ( %30 )  localID ( %31 )  localID ( %32 )  localID ( %33 )  localID ( %34 )  localID ( %35 )  localID ( %36 )  .LocalIDs
      </localRegisters>
      <basicBlocks>
        localID ( %5 ) |-> bb ( localID ( %5 ) , trunc ( localID ( %6 ) , tInt ( 64 ) , localID ( %4 ) , tInt ( 6 ) )  .Instructions , switch ( tInt ( 6 ) , localID ( %6 ) , localID ( %10 ) , switchCase ( 0 , localID ( %37 ) )  switchCase ( 1 , localID ( %7 ) )  .SwitchCases ) )
        localID ( %7 ) |-> bb ( localID ( %7 ) , lshr ( localID ( %8 ) , rounded , tInt ( 64 ) , localID ( %3 ) , 63 )  trunc ( localID ( %9 ) , tInt ( 64 ) , localID ( %8 ) , tInt ( 8 ) )  .Instructions , brUncond ( localID ( %16 ) ) )
        localID ( %10 ) |-> bb ( localID ( %10 ) , and ( localID ( %11 ) , tInt ( 64 ) , localID ( %4 ) , 63 )  add ( localID ( %12 ) , uw , tInt ( 64 ) , localID ( %11 ) , -1 )  lshr ( localID ( %13 ) , rounded , tInt ( 64 ) , localID ( %3 ) , localID ( %12 ) )  icmp ( localID ( %14 ) , ne , tInt ( 8 ) , 0 , 0 )  zext ( localID ( %15 ) , tInt ( 1 ) , localID ( %14 ) , tInt ( 8 ) )  .Instructions , brUncond ( localID ( %16 ) ) )
        localID ( %16 ) |-> bb ( localID ( %16 ) , phi ( localID ( %17 ) , tInt ( 8 ) , phiValue ( 0 , localID ( %10 ) )  phiValue ( 0 , localID ( %7 ) )  .PHIValues )  phi ( localID ( %18 ) , tInt ( 64 ) , phiValue ( localID ( %13 ) , localID ( %10 ) )  phiValue ( localID ( %3 ) , localID ( %7 ) )  .PHIValues )  phi ( localID ( %19 ) , tInt ( 8 ) , phiValue ( localID ( %15 ) , localID ( %10 ) )  phiValue ( localID ( %9 ) , localID ( %7 ) )  .PHIValues )  trunc ( localID ( %20 ) , tInt ( 64 ) , localID ( %18 ) , tInt ( 8 ) )  and ( localID ( %21 ) , tInt ( 8 ) , localID ( %20 ) , 1 )  lshr ( localID ( %22 ) , rounded , tInt ( 64 ) , localID ( %18 ) , 1 )  store ( tInt ( 64 ) , localID ( %22 ) , localID ( %2 ) , align ( 8 ) )  getelementptr ( localID ( %23 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %1 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  store ( tInt ( 8 ) , localID ( %21 ) , localID ( %23 ) , align ( 1 ) )  getelementptr ( localID ( %24 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %1 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 3 )  .GEPIndices )  trunc ( localID ( %25 ) , tInt ( 64 ) , localID ( %22 ) , tInt ( 32 ) )  and ( localID ( %26 ) , tInt ( 32 ) , localID ( %25 ) , 255 )  callFunc ( localID ( %27 ) , ccc , tFunc ( tInt ( 32 ) , tInt ( 32 )  .FirstClassTypes , false ) , globalID ( @my.ctpop.i32 ) , argument ( tInt ( 32 ) , localID ( %26 ) )  .Arguments )  trunc ( localID ( %28 ) , tInt ( 32 ) , localID ( %27 ) , tInt ( 8 ) )  and ( localID ( %29 ) , tInt ( 8 ) , localID ( %28 ) , 1 )  xor ( localID ( %30 ) , tInt ( 8 ) , localID ( %29 ) , 1 )  store ( tInt ( 8 ) , localID ( %30 ) , localID ( %24 ) , align ( 1 ) )  getelementptr ( localID ( %31 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %1 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 5 )  .GEPIndices )  store ( tInt ( 8 ) , localID ( %17 ) , localID ( %31 ) , align ( 1 ) )  getelementptr ( localID ( %32 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %1 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 7 )  .GEPIndices )  icmp ( localID ( %33 ) , eq , tInt ( 64 ) , localID ( %22 ) , 0 )  zext ( localID ( %34 ) , tInt ( 1 ) , localID ( %33 ) , tInt ( 8 ) )  store ( tInt ( 8 ) , localID ( %34 ) , localID ( %32 ) , align ( 1 ) )  getelementptr ( localID ( %35 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %1 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 9 )  .GEPIndices )  store ( tInt ( 8 ) , 0 , localID ( %35 ) , align ( 1 ) )  getelementptr ( localID ( %36 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %1 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 13 )  .GEPIndices )  store ( tInt ( 8 ) , localID ( %19 ) , localID ( %36 ) , align ( 1 ) )  .Instructions , brUncond ( localID ( %37 ) ) )
        localID ( %37 ) |-> bb ( localID ( %37 ) , .Instructions , ret ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , localID ( %0 ) ) )
      </basicBlocks>
      <entryBlock>
        localID ( %5 )
      </entryBlock>
    </function> <function>
      <functionName>
        globalID ( @__remill_atomic_begin )
      </functionName>
      <callingConvention>
        ccc
      </callingConvention>
      <formalParameters>
        parameter ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , localID ( %0 ) )  .Parameters
      </formalParameters>
      <localRegisters>
        .LocalIDs
      </localRegisters>
      <basicBlocks>
        localID ( %1 ) |-> bb ( localID ( %1 ) , .Instructions , ret ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , localID ( %0 ) ) )
      </basicBlocks>
      <entryBlock>
        localID ( %1 )
      </entryBlock>
    </function> <function>
      <functionName>
        globalID ( @__remill_atomic_end )
      </functionName>
      <callingConvention>
        ccc
      </callingConvention>
      <formalParameters>
        parameter ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , localID ( %0 ) )  .Parameters
      </formalParameters>
      <localRegisters>
        .LocalIDs
      </localRegisters>
      <basicBlocks>
        localID ( %1 ) |-> bb ( localID ( %1 ) , .Instructions , ret ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , localID ( %0 ) ) )
      </basicBlocks>
      <entryBlock>
        localID ( %1 )
      </entryBlock>
    </function> <function>
      <functionName>
        globalID ( @main )
      </functionName>
      <callingConvention>
        ccc
      </callingConvention>
      <formalParameters>
        .Parameters
      </formalParameters>
      <localRegisters>
        localID ( %state )  localID ( %mem )  localID ( %memf0 )  localID ( %addr1 )  localID ( %addr2 )  localID ( %addr3 )  localID ( %addr4 )  localID ( %addr5 )  localID ( %addr6 )  localID ( %addr7 )  localID ( %addr8 )  localID ( %addr9 )  localID ( %cf )  localID ( %pf )  localID ( %af )  localID ( %zf )  localID ( %sf )  localID ( %df )  localID ( %of )  localID ( %vecr )  localID ( %arrayidx )  localID ( %vec512 )  localID ( %uint64v8 )  localID ( %int64_arr )  localID ( %arrayidx1 )  localID ( %vecr2 )  localID ( %arrayidx3 )  localID ( %vec5124 )  localID ( %uint64v85 )  localID ( %int64_arr6 )  localID ( %arrayidx7 )  localID ( %vecr8 )  localID ( %arrayidx9 )  localID ( %vec51210 )  localID ( %uint64v811 )  localID ( %int64_arr12 )  localID ( %arrayidx13 )  localID ( %vecr14 )  localID ( %arrayidx15 )  localID ( %vec51216 )  localID ( %uint64v817 )  localID ( %int64_arr18 )  localID ( %arrayidx19 )  localID ( %vecr20 )  localID ( %arrayidx21 )  localID ( %vec51222 )  localID ( %uint64v823 )  localID ( %int64_arr24 )  localID ( %arrayidx25 )  localID ( %vecr26 )  localID ( %arrayidx27 )  localID ( %vec51228 )  localID ( %uint64v829 )  localID ( %int64_arr30 )  localID ( %arrayidx31 )  localID ( %vecr32 )  localID ( %arrayidx33 )  localID ( %vec51234 )  localID ( %uint64v835 )  localID ( %int64_arr36 )  localID ( %arrayidx37 )  localID ( %vecr38 )  localID ( %arrayidx39 )  localID ( %vec51240 )  localID ( %uint64v841 )  localID ( %int64_arr42 )  localID ( %arrayidx43 )  localID ( %vecr44 )  localID ( %arrayidx45 )  localID ( %vec51246 )  localID ( %uint64v847 )  localID ( %int64_arr48 )  localID ( %arrayidx49 )  localID ( %vecr50 )  localID ( %arrayidx51 )  localID ( %vec51252 )  localID ( %uint64v853 )  localID ( %int64_arr54 )  localID ( %arrayidx55 )  localID ( %vecr56 )  localID ( %arrayidx57 )  localID ( %vec51258 )  localID ( %uint64v859 )  localID ( %int64_arr60 )  localID ( %arrayidx61 )  localID ( %vecr62 )  localID ( %arrayidx63 )  localID ( %vec51264 )  localID ( %uint64v865 )  localID ( %int64_arr66 )  localID ( %arrayidx67 )  localID ( %vecr68 )  localID ( %arrayidx69 )  localID ( %vec51270 )  localID ( %uint64v871 )  localID ( %int64_arr72 )  localID ( %arrayidx73 )  localID ( %vecr74 )  localID ( %arrayidx75 )  localID ( %vec51276 )  localID ( %uint64v877 )  localID ( %int64_arr78 )  localID ( %arrayidx79 )  localID ( %vecr80 )  localID ( %arrayidx81 )  localID ( %vec51282 )  localID ( %uint64v883 )  localID ( %int64_arr84 )  localID ( %arrayidx85 )  localID ( %vecr86 )  localID ( %arrayidx87 )  localID ( %vec51288 )  localID ( %uint64v889 )  localID ( %int64_arr90 )  localID ( %arrayidx91 )  localID ( %call )  .LocalIDs
      </localRegisters>
      <basicBlocks>
        localID ( %entry ) |-> bb ( localID ( %entry ) , alloca ( localID ( %state ) , tIdentifiedStruct ( localID ( %struct.State ) ) , tInt ( 32 ) , 1 , align ( 0 ) )  alloca ( localID ( %mem ) , tIdentifiedStruct ( localID ( %struct.Memory ) ) , tInt ( 32 ) , 1 , align ( 0 ) )  getelementptr ( localID ( %memf0 ) , inbounds , tIdentifiedStruct ( localID ( %struct.Memory ) ) , localID ( %mem ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  store ( tInt ( 64 ) , 51 , localID ( %memf0 ) , align ( 8 ) )  getelementptr ( localID ( %addr1 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 6 )  gepIndex ( tInt ( 32 ) , 1 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %addr2 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 6 )  gepIndex ( tInt ( 32 ) , 3 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %addr3 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 6 )  gepIndex ( tInt ( 32 ) , 5 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %addr4 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 6 )  gepIndex ( tInt ( 32 ) , 7 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %addr5 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 6 )  gepIndex ( tInt ( 32 ) , 9 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %addr6 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 6 )  gepIndex ( tInt ( 32 ) , 11 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %addr7 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 6 )  gepIndex ( tInt ( 32 ) , 13 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %addr8 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 6 )  gepIndex ( tInt ( 32 ) , 15 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %addr9 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 6 )  gepIndex ( tInt ( 32 ) , 33 )  gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %cf ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %pf ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 3 )  .GEPIndices )  getelementptr ( localID ( %af ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 5 )  .GEPIndices )  getelementptr ( localID ( %zf ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 7 )  .GEPIndices )  getelementptr ( localID ( %sf ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 9 )  .GEPIndices )  getelementptr ( localID ( %df ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 11 )  .GEPIndices )  getelementptr ( localID ( %of ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 32 ) , 2 )  gepIndex ( tInt ( 32 ) , 13 )  .GEPIndices )  store ( tInt ( 64 ) , 100 , localID ( %addr1 ) , align ( 8 ) )  store ( tInt ( 64 ) , 200 , localID ( %addr2 ) , align ( 8 ) )  store ( tInt ( 64 ) , 300 , localID ( %addr3 ) , align ( 8 ) )  store ( tInt ( 64 ) , 400 , localID ( %addr4 ) , align ( 8 ) )  store ( tInt ( 64 ) , 500 , localID ( %addr5 ) , align ( 8 ) )  store ( tInt ( 64 ) , 600 , localID ( %addr6 ) , align ( 8 ) )  store ( tInt ( 64 ) , 700 , localID ( %addr7 ) , align ( 8 ) )  store ( tInt ( 64 ) , 800 , localID ( %addr8 ) , align ( 8 ) )  store ( tInt ( 64 ) , 900 , localID ( %addr9 ) , align ( 8 ) )  store ( tInt ( 8 ) , 10 , localID ( %cf ) , align ( 1 ) )  store ( tInt ( 8 ) , 20 , localID ( %pf ) , align ( 1 ) )  store ( tInt ( 8 ) , 30 , localID ( %af ) , align ( 1 ) )  store ( tInt ( 8 ) , 40 , localID ( %zf ) , align ( 1 ) )  store ( tInt ( 8 ) , 50 , localID ( %sf ) , align ( 1 ) )  store ( tInt ( 8 ) , 60 , localID ( %df ) , align ( 1 ) )  store ( tInt ( 8 ) , 70 , localID ( %of ) , align ( 1 ) )  getelementptr ( localID ( %vecr ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %vec512 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v8 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec512 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v8 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx1 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 0 )  .GEPIndices )  store ( tInt ( 64 ) , 8810 , localID ( %arrayidx1 ) , align ( 8 ) )  getelementptr ( localID ( %vecr2 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx3 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr2 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %vec5124 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx3 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v85 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec5124 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr6 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v85 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx7 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr6 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 1 )  .GEPIndices )  store ( tInt ( 64 ) , 8820 , localID ( %arrayidx7 ) , align ( 8 ) )  getelementptr ( localID ( %vecr8 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx9 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr8 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %vec51210 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx9 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v811 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51210 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr12 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v811 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx13 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr12 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 2 )  .GEPIndices )  store ( tInt ( 64 ) , 8830 , localID ( %arrayidx13 ) , align ( 8 ) )  getelementptr ( localID ( %vecr14 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx15 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr14 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %vec51216 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx15 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v817 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51216 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr18 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v817 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx19 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr18 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 3 )  .GEPIndices )  store ( tInt ( 64 ) , 8840 , localID ( %arrayidx19 ) , align ( 8 ) )  getelementptr ( localID ( %vecr20 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx21 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr20 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %vec51222 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx21 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v823 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51222 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr24 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v823 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx25 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr24 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 4 )  .GEPIndices )  store ( tInt ( 64 ) , 8850 , localID ( %arrayidx25 ) , align ( 8 ) )  getelementptr ( localID ( %vecr26 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx27 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr26 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %vec51228 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx27 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v829 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51228 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr30 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v829 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx31 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr30 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 5 )  .GEPIndices )  store ( tInt ( 64 ) , 8860 , localID ( %arrayidx31 ) , align ( 8 ) )  getelementptr ( localID ( %vecr32 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx33 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr32 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %vec51234 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx33 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v835 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51234 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr36 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v835 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx37 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr36 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 6 )  .GEPIndices )  store ( tInt ( 64 ) , 8870 , localID ( %arrayidx37 ) , align ( 8 ) )  getelementptr ( localID ( %vecr38 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx39 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr38 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %vec51240 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx39 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v841 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51240 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr42 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v841 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx43 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr42 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 7 )  .GEPIndices )  store ( tInt ( 64 ) , 8880 , localID ( %arrayidx43 ) , align ( 8 ) )  getelementptr ( localID ( %vecr44 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx45 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr44 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 2 )  .GEPIndices )  getelementptr ( localID ( %vec51246 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx45 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v847 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51246 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr48 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v847 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx49 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr48 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 0 )  .GEPIndices )  store ( tInt ( 64 ) , 9910 , localID ( %arrayidx49 ) , align ( 8 ) )  getelementptr ( localID ( %vecr50 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx51 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr50 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 2 )  .GEPIndices )  getelementptr ( localID ( %vec51252 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx51 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v853 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51252 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr54 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v853 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx55 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr54 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 1 )  .GEPIndices )  store ( tInt ( 64 ) , 9920 , localID ( %arrayidx55 ) , align ( 8 ) )  getelementptr ( localID ( %vecr56 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx57 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr56 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 2 )  .GEPIndices )  getelementptr ( localID ( %vec51258 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx57 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v859 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51258 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr60 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v859 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx61 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr60 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 2 )  .GEPIndices )  store ( tInt ( 64 ) , 9930 , localID ( %arrayidx61 ) , align ( 8 ) )  getelementptr ( localID ( %vecr62 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx63 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr62 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 2 )  .GEPIndices )  getelementptr ( localID ( %vec51264 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx63 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v865 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51264 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr66 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v865 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx67 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr66 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 3 )  .GEPIndices )  store ( tInt ( 64 ) , 9940 , localID ( %arrayidx67 ) , align ( 8 ) )  getelementptr ( localID ( %vecr68 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx69 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr68 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 2 )  .GEPIndices )  getelementptr ( localID ( %vec51270 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx69 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v871 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51270 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr72 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v871 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx73 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr72 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 4 )  .GEPIndices )  store ( tInt ( 64 ) , 9950 , localID ( %arrayidx73 ) , align ( 8 ) )  getelementptr ( localID ( %vecr74 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx75 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr74 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 2 )  .GEPIndices )  getelementptr ( localID ( %vec51276 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx75 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v877 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51276 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr78 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v877 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx79 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr78 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 5 )  .GEPIndices )  store ( tInt ( 64 ) , 9960 , localID ( %arrayidx79 ) , align ( 8 ) )  getelementptr ( localID ( %vecr80 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx81 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr80 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 2 )  .GEPIndices )  getelementptr ( localID ( %vec51282 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx81 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v883 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51282 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr84 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v883 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx85 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr84 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 6 )  .GEPIndices )  store ( tInt ( 64 ) , 9970 , localID ( %arrayidx85 ) , align ( 8 ) )  getelementptr ( localID ( %vecr86 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %state ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %arrayidx87 ) , inbounds , tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , localID ( %vecr86 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 2 )  .GEPIndices )  getelementptr ( localID ( %vec51288 ) , inbounds , tIdentifiedStruct ( localID ( %union.VectorReg ) ) , localID ( %arrayidx87 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %uint64v889 ) , inbounds , tIdentifiedStruct ( localID ( %union.vec512_t ) ) , localID ( %vec51288 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %int64_arr90 ) , inbounds , tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , localID ( %uint64v889 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  getelementptr ( localID ( %arrayidx91 ) , inbounds , tArray ( 8 , tInt ( 64 ) ) , localID ( %int64_arr90 ) , gepIndex ( tInt ( 64 ) , 0 )  gepIndex ( tInt ( 64 ) , 7 )  .GEPIndices )  store ( tInt ( 64 ) , 9980 , localID ( %arrayidx91 ) , align ( 8 ) )  callFunc ( localID ( %call ) , ccc , tFunc ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) )  tInt ( 64 )  tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) )  .FirstClassTypes , false ) , globalID ( @routine_shrq_r64_one ) , argument ( tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) ) , localID ( %state ) )  argument ( tInt ( 64 ) , 0 )  argument ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , localID ( %mem ) )  .Arguments )  .Instructions , ret ( tInt ( 32 ) , 0 ) )
      </basicBlocks>
      <entryBlock>
        localID ( %entry )
      </entryBlock>
    </function> <function>
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
    </function> <function>
      <functionName>
        globalID ( @routine_shrq_r64_one )
      </functionName>
      <callingConvention>
        ccc
      </callingConvention>
      <formalParameters>
        parameter ( tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) ) , localID ( %0 ) )  parameter ( tInt ( 64 ) , localID ( %1 ) )  parameter ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , localID ( %2 ) )  .Parameters
      </formalParameters>
      <localRegisters>
        localID ( %3 )  localID ( %4 )  localID ( %5 )  localID ( %PC )  localID ( %6 )  localID ( %7 )  localID ( %8 )  localID ( %RAX )  localID ( %9 )  localID ( %10 )  localID ( %11 )  localID ( %12 )  .LocalIDs
      </localRegisters>
      <basicBlocks>
        localID ( %block_530 ) |-> bb ( localID ( %block_530 ) , getelementptr ( localID ( %3 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %0 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 6 )  .GEPIndices )  getelementptr ( localID ( %4 ) , inbounds , tIdentifiedStruct ( localID ( %struct.GPR ) ) , localID ( %3 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 33 )  .GEPIndices )  getelementptr ( localID ( %5 ) , inbounds , tIdentifiedStruct ( localID ( %struct.Reg ) ) , localID ( %4 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  bitcast ( localID ( %PC ) , tPtr ( tIdentifiedStruct ( localID ( %union.anon ) ) ) , localID ( %5 ) , tPtr ( tInt ( 64 ) ) )  getelementptr ( localID ( %6 ) , inbounds , tIdentifiedStruct ( localID ( %struct.State ) ) , localID ( %0 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 6 )  .GEPIndices )  getelementptr ( localID ( %7 ) , inbounds , tIdentifiedStruct ( localID ( %struct.GPR ) ) , localID ( %6 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 1 )  .GEPIndices )  getelementptr ( localID ( %8 ) , inbounds , tIdentifiedStruct ( localID ( %struct.Reg ) ) , localID ( %7 ) , gepIndex ( tInt ( 32 ) , 0 )  gepIndex ( tInt ( 32 ) , 0 )  .GEPIndices )  bitcast ( localID ( %RAX ) , tPtr ( tIdentifiedStruct ( localID ( %union.anon ) ) ) , localID ( %8 ) , tPtr ( tInt ( 64 ) ) )  load ( localID ( %9 ) , tInt ( 64 ) , localID ( %RAX ) , align ( 0 ) )  load ( localID ( %10 ) , tInt ( 64 ) , localID ( %PC ) , align ( 0 ) )  add ( localID ( %11 ) , uw , tInt ( 64 ) , localID ( %10 ) , 3 )  store ( tInt ( 64 ) , localID ( %11 ) , localID ( %PC ) , align ( 0 ) )  callFunc ( localID ( %12 ) , ccc , tFunc ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) )  tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) )  tPtr ( tInt ( 64 ) )  tInt ( 64 )  tInt ( 64 )  .FirstClassTypes , false ) , globalID ( @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_ ) , argument ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , localID ( %2 ) )  argument ( tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) ) , localID ( %0 ) )  argument ( tPtr ( tInt ( 64 ) ) , localID ( %RAX ) )  argument ( tInt ( 64 ) , localID ( %9 ) )  argument ( tInt ( 64 ) , 1 )  .Arguments )  .Instructions , ret ( tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) , localID ( %12 ) ) )
      </basicBlocks>
      <entryBlock>
        localID ( %block_530 )
      </entryBlock>
    </function>
  </functions>

  <structures>
    <types>
      localID ( %struct.AddressSpace ) |-> tStruct ( tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  .ComposableTypes )
      localID ( %struct.ArchState ) |-> tStruct ( tInt ( 32 )  tInt ( 32 )  tIdentifiedStruct ( localID ( %union.anon ) )  .ComposableTypes )
      localID ( %struct.ArithFlags ) |-> tStruct ( tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  .ComposableTypes )
      localID ( %struct.FPUStackElem ) |-> tStruct ( tIdentifiedStruct ( localID ( %union.anon.11 ) )  tArray ( 6 , tInt ( 8 ) )  .ComposableTypes )
      localID ( %struct.FPUStatusFlags ) |-> tStruct ( tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tArray ( 4 , tInt ( 8 ) )  .ComposableTypes )
      localID ( %struct.FpuFXSAVE ) |-> tStruct ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tIdentifiedStruct ( localID ( %union.FPUAbridgedTagWord ) )  tInt ( 8 )  tInt ( 16 )  tInt ( 32 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tInt ( 32 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.FPUControlStatus ) )  tIdentifiedStruct ( localID ( %union.FPUControlStatus ) )  tArray ( 8 , tIdentifiedStruct ( localID ( %struct.FPUStackElem ) ) )  tArray ( 16 , tIdentifiedStruct ( localID ( %union.vec128_t ) ) )  .ComposableTypes )
      localID ( %struct.GPR ) |-> tStruct ( tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  .ComposableTypes )
      localID ( %struct.MMX ) |-> tStruct ( tArray ( 8 , tIdentifiedStruct ( localID ( %struct.anon.4 ) ) )  .ComposableTypes )
      localID ( %struct.Memory ) |-> tStruct ( tInt ( 64 )  .ComposableTypes )
      localID ( %struct.Reg ) |-> tStruct ( tIdentifiedStruct ( localID ( %union.anon ) )  .ComposableTypes )
      localID ( %struct.SegmentCaches ) |-> tStruct ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  .ComposableTypes )
      localID ( %struct.SegmentShadow ) |-> tStruct ( tIdentifiedStruct ( localID ( %union.anon ) )  tInt ( 32 )  tInt ( 32 )  .ComposableTypes )
      localID ( %struct.Segments ) |-> tStruct ( tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  .ComposableTypes )
      localID ( %struct.State ) |-> tStruct ( tIdentifiedStruct ( localID ( %struct.ArchState ) )  tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) )  tIdentifiedStruct ( localID ( %struct.ArithFlags ) )  tIdentifiedStruct ( localID ( %union.anon ) )  tIdentifiedStruct ( localID ( %struct.Segments ) )  tIdentifiedStruct ( localID ( %struct.AddressSpace ) )  tIdentifiedStruct ( localID ( %struct.GPR ) )  tIdentifiedStruct ( localID ( %struct.X87Stack ) )  tIdentifiedStruct ( localID ( %struct.MMX ) )  tIdentifiedStruct ( localID ( %struct.FPUStatusFlags ) )  tIdentifiedStruct ( localID ( %union.anon ) )  tIdentifiedStruct ( localID ( %union.FPU ) )  tIdentifiedStruct ( localID ( %struct.SegmentCaches ) )  .ComposableTypes )
      localID ( %struct.X87Stack ) |-> tStruct ( tArray ( 8 , tIdentifiedStruct ( localID ( %struct.anon.3 ) ) )  .ComposableTypes )
      localID ( %struct._kllvm_fpos_t ) |-> tStruct ( tInt ( 64 )  tPtr ( tInt ( 8 ) )  .ComposableTypes )
      localID ( %struct.anon.3 ) |-> tStruct ( tInt ( 64 )  tDouble  .ComposableTypes )
      localID ( %struct.anon.4 ) |-> tStruct ( tInt ( 64 )  tIdentifiedStruct ( localID ( %union.vec64_t ) )  .ComposableTypes )
      localID ( %struct.anon.13 ) |-> tStruct ( tIdentifiedStruct ( localID ( %struct.FpuFXSAVE ) )  tArray ( 96 , tInt ( 8 ) )  .ComposableTypes )
      localID ( %struct.float80_t ) |-> tStruct ( tArray ( 10 , tInt ( 8 ) )  .ComposableTypes )
      localID ( %struct.uint64v1_t ) |-> tStruct ( tArray ( 1 , tInt ( 64 ) )  .ComposableTypes )
      localID ( %struct.uint64v8_t ) |-> tStruct ( tArray ( 8 , tInt ( 64 ) )  .ComposableTypes )
      localID ( %struct.uint128v1_t ) |-> tStruct ( tArray ( 1 , tInt ( 128 ) )  .ComposableTypes )
      localID ( %union.FPU ) |-> tStruct ( tIdentifiedStruct ( localID ( %struct.anon.13 ) )  .ComposableTypes )
      localID ( %union.FPUAbridgedTagWord ) |-> tStruct ( tInt ( 8 )  .ComposableTypes )
      localID ( %union.FPUControlStatus ) |-> tStruct ( tInt ( 32 )  .ComposableTypes )
      localID ( %union.SegmentSelector ) |-> tStruct ( tInt ( 16 )  .ComposableTypes )
      localID ( %union.VectorReg ) |-> tStruct ( tIdentifiedStruct ( localID ( %union.vec512_t ) )  .ComposableTypes )
      localID ( %union.anon ) |-> tStruct ( tInt ( 64 )  .ComposableTypes )
      localID ( %union.anon.11 ) |-> tStruct ( tIdentifiedStruct ( localID ( %struct.float80_t ) )  .ComposableTypes )
      localID ( %union.vec64_t ) |-> tStruct ( tIdentifiedStruct ( localID ( %struct.uint64v1_t ) )  .ComposableTypes )
      localID ( %union.vec128_t ) |-> tStruct ( tIdentifiedStruct ( localID ( %struct.uint128v1_t ) )  .ComposableTypes )
      localID ( %union.vec512_t ) |-> tStruct ( tIdentifiedStruct ( localID ( %struct.uint64v8_t ) )  .ComposableTypes )
    </types>
    <layoutInfo>
      tIdentifiedStruct ( localID ( %struct.AddressSpace ) ) |-> structLayout ( 12 , 768 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
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
      11 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 704 ) )
      tIdentifiedStruct ( localID ( %struct.ArchState ) ) |-> structLayout ( 3 , 128 , 64 , false , 0 |-> ( tInt ( 32 ) , 32 , 0 )
      1 |-> ( tInt ( 32 ) , 32 , 32 )
      2 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 64 , 64 ) )
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
      tIdentifiedStruct ( localID ( %struct.FPUStackElem ) ) |-> structLayout ( 2 , 144 , 8 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.anon.11 ) ) , 96 , 0 )
      1 |-> ( tArray ( 6 , tInt ( 8 ) ) , 48 , 96 ) )
      tIdentifiedStruct ( localID ( %struct.FPUStatusFlags ) ) |-> structLayout ( 21 , 192 , 8 , false , 0 |-> ( tInt ( 8 ) , 8 , 0 )
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
      15 |-> ( tInt ( 8 ) , 8 , 120 )
      16 |-> ( tInt ( 8 ) , 8 , 128 )
      17 |-> ( tInt ( 8 ) , 8 , 136 )
      18 |-> ( tInt ( 8 ) , 8 , 144 )
      19 |-> ( tInt ( 8 ) , 8 , 152 )
      20 |-> ( tArray ( 4 , tInt ( 8 ) ) , 32 , 160 ) )
      tIdentifiedStruct ( localID ( %struct.FpuFXSAVE ) ) |-> structLayout ( 15 , 6144 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 16 )
      2 |-> ( tIdentifiedStruct ( localID ( %union.FPUAbridgedTagWord ) ) , 8 , 32 )
      3 |-> ( tInt ( 8 ) , 8 , 40 )
      4 |-> ( tInt ( 16 ) , 16 , 48 )
      5 |-> ( tInt ( 32 ) , 32 , 64 )
      6 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 96 )
      7 |-> ( tInt ( 16 ) , 16 , 112 )
      8 |-> ( tInt ( 32 ) , 32 , 128 )
      9 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 160 )
      10 |-> ( tInt ( 16 ) , 16 , 176 )
      11 |-> ( tIdentifiedStruct ( localID ( %union.FPUControlStatus ) ) , 32 , 192 )
      12 |-> ( tIdentifiedStruct ( localID ( %union.FPUControlStatus ) ) , 928 , 224 )
      13 |-> ( tArray ( 8 , tIdentifiedStruct ( localID ( %struct.FPUStackElem ) ) ) , 2944 , 1152 )
      14 |-> ( tArray ( 16 , tIdentifiedStruct ( localID ( %union.vec128_t ) ) ) , 2048 , 4096 ) )
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
      tIdentifiedStruct ( localID ( %struct.MMX ) ) |-> structLayout ( 1 , 1024 , 64 , false , 0 |-> ( tArray ( 8 , tIdentifiedStruct ( localID ( %struct.anon.4 ) ) ) , 1024 , 0 ) )
      tIdentifiedStruct ( localID ( %struct.Memory ) ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 ) )
      tIdentifiedStruct ( localID ( %struct.Reg ) ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 64 , 0 ) )
      tIdentifiedStruct ( localID ( %struct.SegmentCaches ) ) |-> structLayout ( 6 , 768 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 128 )
      2 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 256 )
      3 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 384 )
      4 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 512 )
      5 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 640 ) )
      tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) |-> structLayout ( 3 , 128 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 64 , 0 )
      1 |-> ( tInt ( 32 ) , 32 , 64 )
      2 |-> ( tInt ( 32 ) , 32 , 96 ) )
      tIdentifiedStruct ( localID ( %struct.Segments ) ) |-> structLayout ( 12 , 192 , 16 , false , 0 |-> ( tInt ( 16 ) , 16 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 16 )
      2 |-> ( tInt ( 16 ) , 16 , 32 )
      3 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 48 )
      4 |-> ( tInt ( 16 ) , 16 , 64 )
      5 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 80 )
      6 |-> ( tInt ( 16 ) , 16 , 96 )
      7 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 112 )
      8 |-> ( tInt ( 16 ) , 16 , 128 )
      9 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 144 )
      10 |-> ( tInt ( 16 ) , 16 , 160 )
      11 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 176 ) )
      tIdentifiedStruct ( localID ( %struct.State ) ) |-> structLayout ( 13 , 49152 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.ArchState ) ) , 16384 , 0 )
      1 |-> ( tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , 16384 , 16384 )
      2 |-> ( tIdentifiedStruct ( localID ( %struct.ArithFlags ) ) , 128 , 32768 )
      3 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 128 , 32896 )
      4 |-> ( tIdentifiedStruct ( localID ( %struct.Segments ) ) , 768 , 33024 )
      5 |-> ( tIdentifiedStruct ( localID ( %struct.AddressSpace ) ) , 1024 , 33792 )
      6 |-> ( tIdentifiedStruct ( localID ( %struct.GPR ) ) , 3072 , 34816 )
      7 |-> ( tIdentifiedStruct ( localID ( %struct.X87Stack ) ) , 1024 , 37888 )
      8 |-> ( tIdentifiedStruct ( localID ( %struct.MMX ) ) , 1024 , 38912 )
      9 |-> ( tIdentifiedStruct ( localID ( %struct.FPUStatusFlags ) ) , 192 , 39936 )
      10 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 1344 , 40128 )
      11 |-> ( tIdentifiedStruct ( localID ( %union.FPU ) ) , 6912 , 41472 )
      12 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentCaches ) ) , 768 , 48384 ) )
      tIdentifiedStruct ( localID ( %struct.X87Stack ) ) |-> structLayout ( 1 , 1024 , 64 , false , 0 |-> ( tArray ( 8 , tIdentifiedStruct ( localID ( %struct.anon.3 ) ) ) , 1024 , 0 ) )
      tIdentifiedStruct ( localID ( %struct._kllvm_fpos_t ) ) |-> structLayout ( 2 , 128 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
      1 |-> ( tPtr ( tInt ( 8 ) ) , 64 , 64 ) )
      tIdentifiedStruct ( localID ( %struct.anon.3 ) ) |-> structLayout ( 2 , 128 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
      1 |-> ( tDouble , 64 , 64 ) )
      tIdentifiedStruct ( localID ( %struct.anon.4 ) ) |-> structLayout ( 2 , 128 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %union.vec64_t ) ) , 64 , 64 ) )
      tIdentifiedStruct ( localID ( %struct.anon.13 ) ) |-> structLayout ( 2 , 6912 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.FpuFXSAVE ) ) , 6144 , 0 )
      1 |-> ( tArray ( 96 , tInt ( 8 ) ) , 768 , 6144 ) )
      tIdentifiedStruct ( localID ( %struct.float80_t ) ) |-> structLayout ( 1 , 80 , 8 , false , 0 |-> ( tArray ( 10 , tInt ( 8 ) ) , 80 , 0 ) )
      tIdentifiedStruct ( localID ( %struct.uint64v1_t ) ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tArray ( 1 , tInt ( 64 ) ) , 64 , 0 ) )
      tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) |-> structLayout ( 1 , 512 , 64 , false , 0 |-> ( tArray ( 8 , tInt ( 64 ) ) , 512 , 0 ) )
      tIdentifiedStruct ( localID ( %struct.uint128v1_t ) ) |-> structLayout ( 1 , 128 , 64 , false , 0 |-> ( tArray ( 1 , tInt ( 128 ) ) , 128 , 0 ) )
      tIdentifiedStruct ( localID ( %union.FPU ) ) |-> structLayout ( 1 , 6912 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.anon.13 ) ) , 6912 , 0 ) )
      tIdentifiedStruct ( localID ( %union.FPUAbridgedTagWord ) ) |-> structLayout ( 1 , 8 , 8 , false , 0 |-> ( tInt ( 8 ) , 8 , 0 ) )
      tIdentifiedStruct ( localID ( %union.FPUControlStatus ) ) |-> structLayout ( 1 , 32 , 32 , false , 0 |-> ( tInt ( 32 ) , 32 , 0 ) )
      tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) |-> structLayout ( 1 , 16 , 16 , false , 0 |-> ( tInt ( 16 ) , 16 , 0 ) )
      tIdentifiedStruct ( localID ( %union.VectorReg ) ) |-> structLayout ( 1 , 512 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.vec512_t ) ) , 512 , 0 ) )
      tIdentifiedStruct ( localID ( %union.anon ) ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 ) )
      tIdentifiedStruct ( localID ( %union.anon.11 ) ) |-> structLayout ( 1 , 80 , 8 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.float80_t ) ) , 80 , 0 ) )
      tIdentifiedStruct ( localID ( %union.vec64_t ) ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.uint64v1_t ) ) , 64 , 0 ) )
      tIdentifiedStruct ( localID ( %union.vec128_t ) ) |-> structLayout ( 1 , 128 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.uint128v1_t ) ) , 128 , 0 ) )
      tIdentifiedStruct ( localID ( %union.vec512_t ) ) |-> structLayout ( 1 , 512 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , 512 , 0 ) )
      tStruct ( tArray ( 1 , tInt ( 64 ) )  .ComposableTypes ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tArray ( 1 , tInt ( 64 ) ) , 64 , 0 ) )
      tStruct ( tArray ( 1 , tInt ( 128 ) )  .ComposableTypes ) |-> structLayout ( 1 , 128 , 64 , false , 0 |-> ( tArray ( 1 , tInt ( 128 ) ) , 128 , 0 ) )
      tStruct ( tArray ( 8 , tIdentifiedStruct ( localID ( %struct.anon.3 ) ) )  .ComposableTypes ) |-> structLayout ( 1 , 1024 , 64 , false , 0 |-> ( tArray ( 8 , tIdentifiedStruct ( localID ( %struct.anon.3 ) ) ) , 1024 , 0 ) )
      tStruct ( tArray ( 8 , tIdentifiedStruct ( localID ( %struct.anon.4 ) ) )  .ComposableTypes ) |-> structLayout ( 1 , 1024 , 64 , false , 0 |-> ( tArray ( 8 , tIdentifiedStruct ( localID ( %struct.anon.4 ) ) ) , 1024 , 0 ) )
      tStruct ( tArray ( 8 , tInt ( 64 ) )  .ComposableTypes ) |-> structLayout ( 1 , 512 , 64 , false , 0 |-> ( tArray ( 8 , tInt ( 64 ) ) , 512 , 0 ) )
      tStruct ( tArray ( 10 , tInt ( 8 ) )  .ComposableTypes ) |-> structLayout ( 1 , 80 , 8 , false , 0 |-> ( tArray ( 10 , tInt ( 8 ) ) , 80 , 0 ) )
      tStruct ( tIdentifiedStruct ( localID ( %struct.ArchState ) )  tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) )  tIdentifiedStruct ( localID ( %struct.ArithFlags ) )  tIdentifiedStruct ( localID ( %union.anon ) )  tIdentifiedStruct ( localID ( %struct.Segments ) )  tIdentifiedStruct ( localID ( %struct.AddressSpace ) )  tIdentifiedStruct ( localID ( %struct.GPR ) )  tIdentifiedStruct ( localID ( %struct.X87Stack ) )  tIdentifiedStruct ( localID ( %struct.MMX ) )  tIdentifiedStruct ( localID ( %struct.FPUStatusFlags ) )  tIdentifiedStruct ( localID ( %union.anon ) )  tIdentifiedStruct ( localID ( %union.FPU ) )  tIdentifiedStruct ( localID ( %struct.SegmentCaches ) )  .ComposableTypes ) |-> structLayout ( 13 , 49152 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.ArchState ) ) , 16384 , 0 )
      1 |-> ( tArray ( 32 , tIdentifiedStruct ( localID ( %union.VectorReg ) ) ) , 16384 , 16384 )
      2 |-> ( tIdentifiedStruct ( localID ( %struct.ArithFlags ) ) , 128 , 32768 )
      3 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 128 , 32896 )
      4 |-> ( tIdentifiedStruct ( localID ( %struct.Segments ) ) , 768 , 33024 )
      5 |-> ( tIdentifiedStruct ( localID ( %struct.AddressSpace ) ) , 1024 , 33792 )
      6 |-> ( tIdentifiedStruct ( localID ( %struct.GPR ) ) , 3072 , 34816 )
      7 |-> ( tIdentifiedStruct ( localID ( %struct.X87Stack ) ) , 1024 , 37888 )
      8 |-> ( tIdentifiedStruct ( localID ( %struct.MMX ) ) , 1024 , 38912 )
      9 |-> ( tIdentifiedStruct ( localID ( %struct.FPUStatusFlags ) ) , 192 , 39936 )
      10 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 1344 , 40128 )
      11 |-> ( tIdentifiedStruct ( localID ( %union.FPU ) ) , 6912 , 41472 )
      12 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentCaches ) ) , 768 , 48384 ) )
      tStruct ( tIdentifiedStruct ( localID ( %struct.FpuFXSAVE ) )  tArray ( 96 , tInt ( 8 ) )  .ComposableTypes ) |-> structLayout ( 2 , 6912 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.FpuFXSAVE ) ) , 6144 , 0 )
      1 |-> ( tArray ( 96 , tInt ( 8 ) ) , 768 , 6144 ) )
      tStruct ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  tIdentifiedStruct ( localID ( %struct.SegmentShadow ) )  .ComposableTypes ) |-> structLayout ( 6 , 768 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 128 )
      2 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 256 )
      3 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 384 )
      4 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 512 )
      5 |-> ( tIdentifiedStruct ( localID ( %struct.SegmentShadow ) ) , 128 , 640 ) )
      tStruct ( tIdentifiedStruct ( localID ( %struct.anon.13 ) )  .ComposableTypes ) |-> structLayout ( 1 , 6912 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.anon.13 ) ) , 6912 , 0 ) )
      tStruct ( tIdentifiedStruct ( localID ( %struct.float80_t ) )  .ComposableTypes ) |-> structLayout ( 1 , 80 , 8 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.float80_t ) ) , 80 , 0 ) )
      tStruct ( tIdentifiedStruct ( localID ( %struct.uint64v1_t ) )  .ComposableTypes ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.uint64v1_t ) ) , 64 , 0 ) )
      tStruct ( tIdentifiedStruct ( localID ( %struct.uint64v8_t ) )  .ComposableTypes ) |-> structLayout ( 1 , 512 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.uint64v8_t ) ) , 512 , 0 ) )
      tStruct ( tIdentifiedStruct ( localID ( %struct.uint128v1_t ) )  .ComposableTypes ) |-> structLayout ( 1 , 128 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %struct.uint128v1_t ) ) , 128 , 0 ) )
      tStruct ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tIdentifiedStruct ( localID ( %union.FPUAbridgedTagWord ) )  tInt ( 8 )  tInt ( 16 )  tInt ( 32 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tInt ( 32 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.FPUControlStatus ) )  tIdentifiedStruct ( localID ( %union.FPUControlStatus ) )  tArray ( 8 , tIdentifiedStruct ( localID ( %struct.FPUStackElem ) ) )  tArray ( 16 , tIdentifiedStruct ( localID ( %union.vec128_t ) ) )  .ComposableTypes ) |-> structLayout ( 15 , 6144 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 16 )
      2 |-> ( tIdentifiedStruct ( localID ( %union.FPUAbridgedTagWord ) ) , 8 , 32 )
      3 |-> ( tInt ( 8 ) , 8 , 40 )
      4 |-> ( tInt ( 16 ) , 16 , 48 )
      5 |-> ( tInt ( 32 ) , 32 , 64 )
      6 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 96 )
      7 |-> ( tInt ( 16 ) , 16 , 112 )
      8 |-> ( tInt ( 32 ) , 32 , 128 )
      9 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 160 )
      10 |-> ( tInt ( 16 ) , 16 , 176 )
      11 |-> ( tIdentifiedStruct ( localID ( %union.FPUControlStatus ) ) , 32 , 192 )
      12 |-> ( tIdentifiedStruct ( localID ( %union.FPUControlStatus ) ) , 928 , 224 )
      13 |-> ( tArray ( 8 , tIdentifiedStruct ( localID ( %struct.FPUStackElem ) ) ) , 2944 , 1152 )
      14 |-> ( tArray ( 16 , tIdentifiedStruct ( localID ( %union.vec128_t ) ) ) , 2048 , 4096 ) )
      tStruct ( tIdentifiedStruct ( localID ( %union.anon ) )  .ComposableTypes ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 64 , 0 ) )
      tStruct ( tIdentifiedStruct ( localID ( %union.anon ) )  tInt ( 32 )  tInt ( 32 )  .ComposableTypes ) |-> structLayout ( 3 , 128 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 64 , 0 )
      1 |-> ( tInt ( 32 ) , 32 , 64 )
      2 |-> ( tInt ( 32 ) , 32 , 96 ) )
      tStruct ( tIdentifiedStruct ( localID ( %union.anon.11 ) )  tArray ( 6 , tInt ( 8 ) )  .ComposableTypes ) |-> structLayout ( 2 , 144 , 8 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.anon.11 ) ) , 96 , 0 )
      1 |-> ( tArray ( 6 , tInt ( 8 ) ) , 48 , 96 ) )
      tStruct ( tIdentifiedStruct ( localID ( %union.vec512_t ) )  .ComposableTypes ) |-> structLayout ( 1 , 512 , 64 , false , 0 |-> ( tIdentifiedStruct ( localID ( %union.vec512_t ) ) , 512 , 0 ) )
      tStruct ( tInt ( 8 )  .ComposableTypes ) |-> structLayout ( 1 , 8 , 8 , false , 0 |-> ( tInt ( 8 ) , 8 , 0 ) )
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
      tStruct ( tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tInt ( 8 )  tArray ( 4 , tInt ( 8 ) )  .ComposableTypes ) |-> structLayout ( 21 , 192 , 8 , false , 0 |-> ( tInt ( 8 ) , 8 , 0 )
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
      15 |-> ( tInt ( 8 ) , 8 , 120 )
      16 |-> ( tInt ( 8 ) , 8 , 128 )
      17 |-> ( tInt ( 8 ) , 8 , 136 )
      18 |-> ( tInt ( 8 ) , 8 , 144 )
      19 |-> ( tInt ( 8 ) , 8 , 152 )
      20 |-> ( tArray ( 4 , tInt ( 8 ) ) , 32 , 160 ) )
      tStruct ( tInt ( 16 )  .ComposableTypes ) |-> structLayout ( 1 , 16 , 16 , false , 0 |-> ( tInt ( 16 ) , 16 , 0 ) )
      tStruct ( tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  tInt ( 16 )  tIdentifiedStruct ( localID ( %union.SegmentSelector ) )  .ComposableTypes ) |-> structLayout ( 12 , 192 , 16 , false , 0 |-> ( tInt ( 16 ) , 16 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 16 )
      2 |-> ( tInt ( 16 ) , 16 , 32 )
      3 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 48 )
      4 |-> ( tInt ( 16 ) , 16 , 64 )
      5 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 80 )
      6 |-> ( tInt ( 16 ) , 16 , 96 )
      7 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 112 )
      8 |-> ( tInt ( 16 ) , 16 , 128 )
      9 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 144 )
      10 |-> ( tInt ( 16 ) , 16 , 160 )
      11 |-> ( tIdentifiedStruct ( localID ( %union.SegmentSelector ) ) , 16 , 176 ) )
      tStruct ( tInt ( 32 )  .ComposableTypes ) |-> structLayout ( 1 , 32 , 32 , false , 0 |-> ( tInt ( 32 ) , 32 , 0 ) )
      tStruct ( tInt ( 32 )  tInt ( 32 )  tIdentifiedStruct ( localID ( %union.anon ) )  .ComposableTypes ) |-> structLayout ( 3 , 128 , 64 , false , 0 |-> ( tInt ( 32 ) , 32 , 0 )
      1 |-> ( tInt ( 32 ) , 32 , 32 )
      2 |-> ( tIdentifiedStruct ( localID ( %union.anon ) ) , 64 , 64 ) )
      tStruct ( tInt ( 64 )  .ComposableTypes ) |-> structLayout ( 1 , 64 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 ) )
      tStruct ( tInt ( 64 )  tDouble  .ComposableTypes ) |-> structLayout ( 2 , 128 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
      1 |-> ( tDouble , 64 , 64 ) )
      tStruct ( tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  tInt ( 64 )  tIdentifiedStruct ( localID ( %struct.Reg ) )  .ComposableTypes ) |-> structLayout ( 12 , 768 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
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
      11 |-> ( tIdentifiedStruct ( localID ( %struct.Reg ) ) , 64 , 704 ) )
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
      tStruct ( tInt ( 64 )  tIdentifiedStruct ( localID ( %union.vec64_t ) )  .ComposableTypes ) |-> structLayout ( 2 , 128 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
      1 |-> ( tIdentifiedStruct ( localID ( %union.vec64_t ) ) , 64 , 64 ) )
      tStruct ( tInt ( 64 )  tPtr ( tInt ( 8 ) )  .ComposableTypes ) |-> structLayout ( 2 , 128 , 64 , false , 0 |-> ( tInt ( 64 ) , 64 , 0 )
      1 |-> ( tPtr ( tInt ( 8 ) ) , 64 , 64 ) )
    </layoutInfo>
  </structures>


// requires          (VL_RAX >=Int 0) andBool (V_RAX <=Int 18446744073709551615)
//         andBool   (VL_RBX >=Int 0) andBool (V_RBX <=Int 18446744073709551615)
//         andBool   (VL_RCX >=Int 0) andBool (V_RCX <=Int 18446744073709551615)
//         andBool   (VL_RDX >=Int 0) andBool (V_RDX <=Int 18446744073709551615)
//         andBool   (VL_CF  ==Int 0) orBool (V_CF  ==Int 1)
//         andBool   (VL_PF  ==Int 0) orBool (V_PF  ==Int 1)
//         andBool   (VL_AF  ==Int 0) orBool (V_AF  ==Int 1)
//         andBool   (VL_ZF  ==Int 0) orBool (V_ZF  ==Int 1)
//         andBool   (VL_SF  ==Int 0) orBool (V_SF  ==Int 1)
//         andBool   (VL_DF  ==Int 0) orBool (V_DF  ==Int 1)
//         andBool   (VL_OF  ==Int 0) orBool (V_OF  ==Int 1)


endmodule
