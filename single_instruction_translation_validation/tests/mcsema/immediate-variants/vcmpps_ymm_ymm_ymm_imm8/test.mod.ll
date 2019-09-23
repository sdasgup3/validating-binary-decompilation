; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%struct.State = type {%struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, i64, i64, i64, %struct.GPR}

%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.float32v8_t = type { [8 x float] }
%struct.int32v8_t = type { [8 x i32] }
%struct.uint16v16_t = type { [16 x i16] }
%struct.uint8v32_t = type { [32 x i8] }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }
%struct.anon.2 = type { i8, i8 }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.Memory = type { i64 }

define i32 @my.ctpop.i32(i32 %x) {
entry:
  %and = and i32 %x, 1
  %shr123 = lshr i32 %x, 1
  %and1 = and i32 %shr123, 1
  %shr2124 = lshr i32 %x, 2
  %and3 = and i32 %shr2124, 1
  %shr5125 = lshr i32 %x, 3
  %and6 = and i32 %shr5125, 1
  %shr8126 = lshr i32 %x, 4
  %and9 = and i32 %shr8126, 1
  %shr11127 = lshr i32 %x, 5
  %and12 = and i32 %shr11127, 1
  %shr14128 = lshr i32 %x, 6
  %and15 = and i32 %shr14128, 1
  %shr17129 = lshr i32 %x, 7
  %and18 = and i32 %shr17129, 1
  %shr20130 = lshr i32 %x, 8
  %and21 = and i32 %shr20130, 1
  %shr23131 = lshr i32 %x, 9
  %and24 = and i32 %shr23131, 1
  %shr26132 = lshr i32 %x, 10
  %and27 = and i32 %shr26132, 1
  %shr29133 = lshr i32 %x, 11
  %and30 = and i32 %shr29133, 1
  %shr32134 = lshr i32 %x, 12
  %and33 = and i32 %shr32134, 1
  %shr35135 = lshr i32 %x, 13
  %and36 = and i32 %shr35135, 1
  %shr38136 = lshr i32 %x, 14
  %and39 = and i32 %shr38136, 1
  %shr41137 = lshr i32 %x, 15
  %and42 = and i32 %shr41137, 1
  %shr44138 = lshr i32 %x, 16
  %and45 = and i32 %shr44138, 1
  %shr47139 = lshr i32 %x, 17
  %and48 = and i32 %shr47139, 1
  %shr50140 = lshr i32 %x, 18
  %and51 = and i32 %shr50140, 1
  %shr53141 = lshr i32 %x, 19
  %and54 = and i32 %shr53141, 1
  %shr56142 = lshr i32 %x, 20
  %and57 = and i32 %shr56142, 1
  %shr59143 = lshr i32 %x, 21
  %and60 = and i32 %shr59143, 1
  %shr62144 = lshr i32 %x, 22
  %and63 = and i32 %shr62144, 1
  %shr65145 = lshr i32 %x, 23
  %and66 = and i32 %shr65145, 1
  %shr68146 = lshr i32 %x, 24
  %and69 = and i32 %shr68146, 1
  %shr71147 = lshr i32 %x, 25
  %and72 = and i32 %shr71147, 1
  %shr74148 = lshr i32 %x, 26
  %and75 = and i32 %shr74148, 1
  %shr77149 = lshr i32 %x, 27
  %and78 = and i32 %shr77149, 1
  %shr80150 = lshr i32 %x, 28
  %and81 = and i32 %shr80150, 1
  %shr83151 = lshr i32 %x, 29
  %and84 = and i32 %shr83151, 1
  %shr86152 = lshr i32 %x, 30
  %and87 = and i32 %shr86152, 1
  %shr89153 = lshr i32 %x, 31
  %add = add i32 %shr89153, %and
  %add4 = add i32 %add, %and1
  %add7 = add i32 %add4, %and3
  %add10 = add i32 %add7, %and6
  %add13 = add i32 %add10, %and9
  %add16 = add i32 %add13, %and12
  %add19 = add i32 %add16, %and15
  %add22 = add i32 %add19, %and18
  %add25 = add i32 %add22, %and21
  %add28 = add i32 %add25, %and24
  %add31 = add i32 %add28, %and27
  %add34 = add i32 %add31, %and30
  %add37 = add i32 %add34, %and33
  %add40 = add i32 %add37, %and36
  %add43 = add i32 %add40, %and39
  %add46 = add i32 %add43, %and42
  %add49 = add i32 %add46, %and45
  %add52 = add i32 %add49, %and48
  %add55 = add i32 %add52, %and51
  %add58 = add i32 %add55, %and54
  %add61 = add i32 %add58, %and57
  %add64 = add i32 %add61, %and60
  %add67 = add i32 %add64, %and63
  %add70 = add i32 %add67, %and66
  %add73 = add i32 %add70, %and69
  %add76 = add i32 %add73, %and72
  %add79 = add i32 %add76, %and75
  %add82 = add i32 %add79, %and78
  %add85 = add i32 %add82, %and81
  %add88 = add i32 %add85, %and84
  %add91 = add i32 %add88, %and87
  ret i32 %add91
}
declare %struct.Memory* @__remill_atomic_begin(%struct.Memory*);
declare %struct.Memory* @__remill_atomic_end(%struct.Memory*);

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPSI3VnWI8vec256_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_2InIhE(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly, i64) #0 {
  %7 = alloca %struct.float32v8_t, align 4
  %8 = alloca %struct.float32v8_t, align 4
  %9 = bitcast %struct.float32v8_t* %7 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %9) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %9, i8* %3, i64 32, i32 1, i1 false) #22
  %10 = bitcast %struct.float32v8_t* %8 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %10) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %10, i8* %4, i64 32, i32 1, i1 false) #22
  %11 = trunc i64 %5 to i8
  %12 = icmp ugt i8 %11, 31
  br i1 %12, label %67, label %13

; <label>:13:                                     ; preds = %6
  %14 = icmp eq i8 %11, 0
  %15 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 0
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 0
  %18 = load float, float* %17, align 4
  br i1 %14, label %22, label %19

; <label>:19:                                     ; preds = %13
  %20 = fcmp uno float %16, %18
  %21 = xor i1 %20, true
  switch i8 %11, label %282 [
    i8 31, label %284
    i8 1, label %95
    i8 2, label %104
    i8 3, label %283
    i8 4, label %113
    i8 5, label %120
    i8 6, label %127
    i8 7, label %134
    i8 8, label %141
    i8 9, label %148
    i8 10, label %155
    i8 11, label %285
    i8 12, label %162
    i8 13, label %169
    i8 14, label %178
    i8 15, label %284
    i8 16, label %187
    i8 17, label %196
    i8 18, label %203
    i8 19, label %283
    i8 20, label %210
    i8 21, label %217
    i8 22, label %224
    i8 23, label %231
    i8 24, label %238
    i8 25, label %245
    i8 26, label %252
    i8 27, label %285
    i8 28, label %259
    i8 29, label %268
    i8 30, label %275
  ]

; <label>:22:                                     ; preds = %13
  %23 = fcmp oeq float %16, %18
  %24 = sext i1 %23 to i32
  %25 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %28 = load float, float* %27, align 4
  %29 = fcmp oeq float %26, %28
  %30 = sext i1 %29 to i32
  %31 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %32 = load float, float* %31, align 4
  %33 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %34 = load float, float* %33, align 4
  %35 = fcmp oeq float %32, %34
  %36 = sext i1 %35 to i32
  %37 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %38 = load float, float* %37, align 4
  %39 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %40 = load float, float* %39, align 4
  %41 = fcmp oeq float %38, %40
  %42 = sext i1 %41 to i32
  %43 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %44 = load float, float* %43, align 4
  %45 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %46 = load float, float* %45, align 4
  %47 = fcmp oeq float %44, %46
  %48 = sext i1 %47 to i32
  %49 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %50 = load float, float* %49, align 4
  %51 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %52 = load float, float* %51, align 4
  %53 = fcmp oeq float %50, %52
  %54 = sext i1 %53 to i32
  %55 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %56 = load float, float* %55, align 4
  %57 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %58 = load float, float* %57, align 4
  %59 = fcmp oeq float %56, %58
  %60 = sext i1 %59 to i32
  %61 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %62 = load float, float* %61, align 4
  %63 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %64 = load float, float* %63, align 4
  %65 = fcmp oeq float %62, %64
  %66 = sext i1 %65 to i32
  br label %71

; <label>:67:                                     ; preds = %6
  %68 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %69, %struct.Memory* %0) #21
  br label %293

; <label>:71:                                     ; preds = %2624, %2611, %2598, %2597, %2586, %2575, %2564, %2563, %2552, %2541, %2530, %2519, %2506, %2493, %2480, %2469, %2458, %2447, %2436, %2425, %2424, %2413, %2402, %2391, %2378, %2367, %2356, %2342, %2342, %2330, %2318, %22
  %72 = phi i32 [ %66, %22 ], [ -1, %2624 ], [ 0, %2597 ], [ 0, %2356 ], [ 0, %2367 ], [ 0, %2378 ], [ 0, %2391 ], [ 0, %2402 ], [ 0, %2413 ], [ 0, %2424 ], [ 0, %2425 ], [ 0, %2436 ], [ 0, %2447 ], [ 0, %2458 ], [ 0, %2469 ], [ 0, %2480 ], [ 0, %2493 ], [ 0, %2506 ], [ 0, %2519 ], [ 0, %2530 ], [ 0, %2541 ], [ 0, %2552 ], [ 0, %2563 ], [ 0, %2564 ], [ 0, %2575 ], [ 0, %2586 ], [ 0, %2598 ], [ 0, %2611 ], [ 0, %2342 ], [ 0, %2342 ], [ 0, %2330 ], [ 0, %2318 ]
  %73 = phi i32 [ %60, %22 ], [ %2625, %2624 ], [ %2349, %2597 ], [ %2359, %2356 ], [ %2370, %2367 ], [ %2382, %2378 ], [ %2394, %2391 ], [ %2405, %2402 ], [ %2416, %2413 ], [ %2349, %2424 ], [ %2428, %2425 ], [ %2439, %2436 ], [ %2450, %2447 ], [ %2461, %2458 ], [ %2472, %2469 ], [ %2484, %2480 ], [ %2497, %2493 ], [ %2510, %2506 ], [ %2522, %2519 ], [ %2533, %2530 ], [ %2544, %2541 ], [ %2555, %2552 ], [ %2349, %2563 ], [ %2567, %2564 ], [ %2578, %2575 ], [ %2589, %2586 ], [ %2602, %2598 ], [ %2615, %2611 ], [ %2349, %2342 ], [ %2349, %2342 ], [ 0, %2330 ], [ 0, %2318 ]
  %74 = phi i32 [ %54, %22 ], [ %2631, %2624 ], [ %2343, %2597 ], [ %2365, %2356 ], [ %2376, %2367 ], [ %2388, %2378 ], [ %2400, %2391 ], [ %2411, %2402 ], [ %2422, %2413 ], [ %2343, %2424 ], [ %2434, %2425 ], [ %2445, %2436 ], [ %2456, %2447 ], [ %2467, %2458 ], [ %2478, %2469 ], [ %2490, %2480 ], [ %2503, %2493 ], [ %2516, %2506 ], [ %2528, %2519 ], [ %2539, %2530 ], [ %2550, %2541 ], [ %2561, %2552 ], [ %2343, %2563 ], [ %2573, %2564 ], [ %2584, %2575 ], [ %2595, %2586 ], [ %2608, %2598 ], [ %2621, %2611 ], [ %2343, %2342 ], [ %2343, %2342 ], [ %2331, %2330 ], [ %2319, %2318 ]
  %75 = phi i32 [ %48, %22 ], [ %2626, %2624 ], [ %2348, %2597 ], [ %2360, %2356 ], [ %2371, %2367 ], [ %2383, %2378 ], [ %2395, %2391 ], [ %2406, %2402 ], [ %2417, %2413 ], [ %2348, %2424 ], [ %2429, %2425 ], [ %2440, %2436 ], [ %2451, %2447 ], [ %2462, %2458 ], [ %2473, %2469 ], [ %2485, %2480 ], [ %2498, %2493 ], [ %2511, %2506 ], [ %2523, %2519 ], [ %2534, %2530 ], [ %2545, %2541 ], [ %2556, %2552 ], [ %2348, %2563 ], [ %2568, %2564 ], [ %2579, %2575 ], [ %2590, %2586 ], [ %2603, %2598 ], [ %2616, %2611 ], [ %2348, %2342 ], [ %2348, %2342 ], [ %2336, %2330 ], [ %2324, %2318 ]
  %76 = phi i32 [ %42, %22 ], [ %2630, %2624 ], [ %2344, %2597 ], [ %2364, %2356 ], [ %2375, %2367 ], [ %2387, %2378 ], [ %2399, %2391 ], [ %2410, %2402 ], [ %2421, %2413 ], [ %2344, %2424 ], [ %2433, %2425 ], [ %2444, %2436 ], [ %2455, %2447 ], [ %2466, %2458 ], [ %2477, %2469 ], [ %2489, %2480 ], [ %2502, %2493 ], [ %2515, %2506 ], [ %2527, %2519 ], [ %2538, %2530 ], [ %2549, %2541 ], [ %2560, %2552 ], [ %2344, %2563 ], [ %2572, %2564 ], [ %2583, %2575 ], [ %2594, %2586 ], [ %2607, %2598 ], [ %2620, %2611 ], [ %2344, %2342 ], [ %2344, %2342 ], [ %2332, %2330 ], [ %2320, %2318 ]
  %77 = phi i32 [ %36, %22 ], [ %2627, %2624 ], [ %2347, %2597 ], [ %2361, %2356 ], [ %2372, %2367 ], [ %2384, %2378 ], [ %2396, %2391 ], [ %2407, %2402 ], [ %2418, %2413 ], [ %2347, %2424 ], [ %2430, %2425 ], [ %2441, %2436 ], [ %2452, %2447 ], [ %2463, %2458 ], [ %2474, %2469 ], [ %2486, %2480 ], [ %2499, %2493 ], [ %2512, %2506 ], [ %2524, %2519 ], [ %2535, %2530 ], [ %2546, %2541 ], [ %2557, %2552 ], [ %2347, %2563 ], [ %2569, %2564 ], [ %2580, %2575 ], [ %2591, %2586 ], [ %2604, %2598 ], [ %2617, %2611 ], [ %2347, %2342 ], [ %2347, %2342 ], [ %2335, %2330 ], [ %2323, %2318 ]
  %78 = phi i32 [ %30, %22 ], [ %2629, %2624 ], [ %2345, %2597 ], [ %2363, %2356 ], [ %2374, %2367 ], [ %2386, %2378 ], [ %2398, %2391 ], [ %2409, %2402 ], [ %2420, %2413 ], [ %2345, %2424 ], [ %2432, %2425 ], [ %2443, %2436 ], [ %2454, %2447 ], [ %2465, %2458 ], [ %2476, %2469 ], [ %2488, %2480 ], [ %2501, %2493 ], [ %2514, %2506 ], [ %2526, %2519 ], [ %2537, %2530 ], [ %2548, %2541 ], [ %2559, %2552 ], [ %2345, %2563 ], [ %2571, %2564 ], [ %2582, %2575 ], [ %2593, %2586 ], [ %2606, %2598 ], [ %2619, %2611 ], [ %2345, %2342 ], [ %2345, %2342 ], [ %2333, %2330 ], [ %2321, %2318 ]
  %79 = phi i32 [ %24, %22 ], [ %2628, %2624 ], [ %2346, %2597 ], [ %2362, %2356 ], [ %2373, %2367 ], [ %2385, %2378 ], [ %2397, %2391 ], [ %2408, %2402 ], [ %2419, %2413 ], [ %2346, %2424 ], [ %2431, %2425 ], [ %2442, %2436 ], [ %2453, %2447 ], [ %2464, %2458 ], [ %2475, %2469 ], [ %2487, %2480 ], [ %2500, %2493 ], [ %2513, %2506 ], [ %2525, %2519 ], [ %2536, %2530 ], [ %2547, %2541 ], [ %2558, %2552 ], [ %2346, %2563 ], [ %2570, %2564 ], [ %2581, %2575 ], [ %2592, %2586 ], [ %2605, %2598 ], [ %2618, %2611 ], [ %2346, %2342 ], [ %2346, %2342 ], [ %2334, %2330 ], [ %2322, %2318 ]
  %80 = bitcast i8* %2 to i32*
  store i32 %79, i32* %80, align 1
  %81 = getelementptr inbounds i8, i8* %2, i64 4
  %82 = bitcast i8* %81 to i32*
  store i32 %78, i32* %82, align 1
  %83 = getelementptr inbounds i8, i8* %2, i64 8
  %84 = bitcast i8* %83 to i32*
  store i32 %77, i32* %84, align 1
  %85 = getelementptr inbounds i8, i8* %2, i64 12
  %86 = bitcast i8* %85 to i32*
  store i32 %76, i32* %86, align 1
  %87 = getelementptr inbounds i8, i8* %2, i64 16
  %88 = bitcast i8* %87 to i32*
  store i32 %75, i32* %88, align 1
  %89 = getelementptr inbounds i8, i8* %2, i64 20
  %90 = bitcast i8* %89 to i32*
  store i32 %74, i32* %90, align 1
  %91 = getelementptr inbounds i8, i8* %2, i64 24
  %92 = bitcast i8* %91 to i32*
  store i32 %73, i32* %92, align 1
  %93 = getelementptr inbounds i8, i8* %2, i64 28
  %94 = bitcast i8* %93 to i32*
  store i32 %72, i32* %94, align 1
  br label %293

; <label>:95:                                     ; preds = %19
  %96 = fcmp olt float %16, %18
  %97 = and i1 %96, %21
  br i1 %97, label %284, label %98

; <label>:98:                                     ; preds = %95
  %99 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %100 = load float, float* %99, align 4
  %101 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %102 = load float, float* %101, align 4
  %103 = fcmp ord float %100, %102
  br label %533

; <label>:104:                                    ; preds = %19
  %105 = fcmp ole float %16, %18
  %106 = and i1 %105, %21
  br i1 %106, label %284, label %107

; <label>:107:                                    ; preds = %104
  %108 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %109 = load float, float* %108, align 4
  %110 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %111 = load float, float* %110, align 4
  %112 = fcmp ord float %109, %111
  br label %520

; <label>:113:                                    ; preds = %19
  %114 = fcmp une float %16, %18
  br i1 %114, label %284, label %115

; <label>:115:                                    ; preds = %113
  %116 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %117 = load float, float* %116, align 4
  %118 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %119 = load float, float* %118, align 4
  br label %509

; <label>:120:                                    ; preds = %19
  %121 = fcmp uge float %16, %18
  br i1 %121, label %284, label %122

; <label>:122:                                    ; preds = %120
  %123 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %124 = load float, float* %123, align 4
  %125 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %126 = load float, float* %125, align 4
  br label %499

; <label>:127:                                    ; preds = %19
  %128 = fcmp ugt float %16, %18
  br i1 %128, label %284, label %129

; <label>:129:                                    ; preds = %127
  %130 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %131 = load float, float* %130, align 4
  %132 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %133 = load float, float* %132, align 4
  br label %489

; <label>:134:                                    ; preds = %19
  br i1 %20, label %135, label %284

; <label>:135:                                    ; preds = %134
  %136 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %137 = load float, float* %136, align 4
  %138 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %139 = load float, float* %138, align 4
  %140 = fcmp uno float %137, %139
  br i1 %140, label %548, label %546

; <label>:141:                                    ; preds = %19
  %142 = fcmp ueq float %16, %18
  br i1 %142, label %284, label %143

; <label>:143:                                    ; preds = %141
  %144 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %145 = load float, float* %144, align 4
  %146 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %147 = load float, float* %146, align 4
  br label %478

; <label>:148:                                    ; preds = %19
  %149 = fcmp ult float %16, %18
  br i1 %149, label %284, label %150

; <label>:150:                                    ; preds = %148
  %151 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %152 = load float, float* %151, align 4
  %153 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %154 = load float, float* %153, align 4
  br label %468

; <label>:155:                                    ; preds = %19
  %156 = fcmp ule float %16, %18
  br i1 %156, label %284, label %157

; <label>:157:                                    ; preds = %155
  %158 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %159 = load float, float* %158, align 4
  %160 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %161 = load float, float* %160, align 4
  br label %458

; <label>:162:                                    ; preds = %19
  %163 = fcmp ueq float %16, %18
  br i1 %163, label %164, label %284

; <label>:164:                                    ; preds = %162
  %165 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %166 = load float, float* %165, align 4
  %167 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %168 = load float, float* %167, align 4
  br label %448

; <label>:169:                                    ; preds = %19
  %170 = fcmp oge float %16, %18
  %171 = and i1 %170, %21
  br i1 %171, label %284, label %172

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %174 = load float, float* %173, align 4
  %175 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %176 = load float, float* %175, align 4
  %177 = fcmp ord float %174, %176
  br label %435

; <label>:178:                                    ; preds = %19
  %179 = fcmp ogt float %16, %18
  %180 = and i1 %179, %21
  br i1 %180, label %284, label %181

; <label>:181:                                    ; preds = %178
  %182 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %183 = load float, float* %182, align 4
  %184 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %185 = load float, float* %184, align 4
  %186 = fcmp ord float %183, %185
  br label %422

; <label>:187:                                    ; preds = %19
  %188 = fcmp oeq float %16, %18
  %189 = and i1 %188, %21
  br i1 %189, label %284, label %190

; <label>:190:                                    ; preds = %187
  %191 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %192 = load float, float* %191, align 4
  %193 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %194 = load float, float* %193, align 4
  %195 = fcmp ord float %192, %194
  br label %409

; <label>:196:                                    ; preds = %19
  %197 = fcmp olt float %16, %18
  br i1 %197, label %284, label %198

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %200 = load float, float* %199, align 4
  %201 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %202 = load float, float* %201, align 4
  br label %399

; <label>:203:                                    ; preds = %19
  %204 = fcmp ugt float %16, %18
  br i1 %204, label %205, label %284

; <label>:205:                                    ; preds = %203
  %206 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %207 = load float, float* %206, align 4
  %208 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %209 = load float, float* %208, align 4
  br label %389

; <label>:210:                                    ; preds = %19
  %211 = fcmp une float %16, %18
  br i1 %211, label %284, label %212

; <label>:212:                                    ; preds = %210
  %213 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %214 = load float, float* %213, align 4
  %215 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %216 = load float, float* %215, align 4
  br label %379

; <label>:217:                                    ; preds = %19
  %218 = fcmp uge float %16, %18
  br i1 %218, label %284, label %219

; <label>:219:                                    ; preds = %217
  %220 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %221 = load float, float* %220, align 4
  %222 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %223 = load float, float* %222, align 4
  br label %369

; <label>:224:                                    ; preds = %19
  %225 = fcmp ugt float %16, %18
  br i1 %225, label %284, label %226

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %228 = load float, float* %227, align 4
  %229 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %230 = load float, float* %229, align 4
  br label %359

; <label>:231:                                    ; preds = %19
  br i1 %20, label %232, label %284

; <label>:232:                                    ; preds = %231
  %233 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %234 = load float, float* %233, align 4
  %235 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %236 = load float, float* %235, align 4
  %237 = fcmp uno float %234, %236
  br i1 %237, label %555, label %546

; <label>:238:                                    ; preds = %19
  %239 = fcmp ueq float %16, %18
  br i1 %239, label %284, label %240

; <label>:240:                                    ; preds = %238
  %241 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %242 = load float, float* %241, align 4
  %243 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %244 = load float, float* %243, align 4
  br label %348

; <label>:245:                                    ; preds = %19
  %246 = fcmp ult float %16, %18
  br i1 %246, label %284, label %247

; <label>:247:                                    ; preds = %245
  %248 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %249 = load float, float* %248, align 4
  %250 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %251 = load float, float* %250, align 4
  br label %338

; <label>:252:                                    ; preds = %19
  %253 = fcmp ule float %16, %18
  br i1 %253, label %284, label %254

; <label>:254:                                    ; preds = %252
  %255 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %256 = load float, float* %255, align 4
  %257 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %258 = load float, float* %257, align 4
  br label %328

; <label>:259:                                    ; preds = %19
  %260 = fcmp une float %16, %18
  %261 = and i1 %260, %21
  br i1 %261, label %284, label %262

; <label>:262:                                    ; preds = %259
  %263 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %264 = load float, float* %263, align 4
  %265 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %266 = load float, float* %265, align 4
  %267 = fcmp ord float %264, %266
  br label %315

; <label>:268:                                    ; preds = %19
  %269 = fcmp ult float %16, %18
  br i1 %269, label %270, label %284

; <label>:270:                                    ; preds = %268
  %271 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %272 = load float, float* %271, align 4
  %273 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %274 = load float, float* %273, align 4
  br label %305

; <label>:275:                                    ; preds = %19
  %276 = fcmp ogt float %16, %18
  br i1 %276, label %284, label %277

; <label>:277:                                    ; preds = %275
  %278 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %279 = load float, float* %278, align 4
  %280 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %281 = load float, float* %280, align 4
  br label %295

; <label>:282:                                    ; preds = %2342, %1932, %1549, %1193, %864, %562, %285, %19
  unreachable

; <label>:283:                                    ; preds = %19, %19
  br i1 %20, label %284, label %285

; <label>:284:                                    ; preds = %283, %275, %268, %259, %252, %245, %238, %231, %224, %217, %210, %203, %196, %187, %178, %169, %162, %155, %148, %141, %134, %127, %120, %113, %104, %95, %19, %19
  br label %285

; <label>:285:                                    ; preds = %284, %283, %19, %19
  %286 = phi i32 [ -1, %284 ], [ 0, %283 ], [ 0, %19 ], [ 0, %19 ]
  %287 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %288 = load float, float* %287, align 4
  %289 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  %290 = load float, float* %289, align 4
  %291 = fcmp uno float %288, %290
  %292 = xor i1 %291, true
  switch i8 %11, label %282 [
    i8 31, label %546
    i8 1, label %533
    i8 2, label %520
    i8 3, label %519
    i8 4, label %509
    i8 5, label %499
    i8 6, label %489
    i8 7, label %488
    i8 8, label %478
    i8 9, label %468
    i8 10, label %458
    i8 11, label %562
    i8 12, label %448
    i8 13, label %435
    i8 14, label %422
    i8 15, label %546
    i8 16, label %409
    i8 17, label %399
    i8 18, label %389
    i8 19, label %519
    i8 20, label %379
    i8 21, label %369
    i8 22, label %359
    i8 23, label %358
    i8 24, label %348
    i8 25, label %338
    i8 26, label %328
    i8 27, label %562
    i8 28, label %315
    i8 29, label %305
    i8 30, label %295
  ]

; <label>:293:                                    ; preds = %71, %67
  %294 = phi %struct.Memory* [ %70, %67 ], [ %0, %71 ]
  call void @my.lifetime.end(i64 32, i8* nonnull %10) #22
  call void @my.lifetime.end(i64 32, i8* nonnull %9) #22
  ret %struct.Memory* %294

; <label>:295:                                    ; preds = %285, %277
  %296 = phi float [ %281, %277 ], [ %290, %285 ]
  %297 = phi float [ %279, %277 ], [ %288, %285 ]
  %298 = phi i32 [ 0, %277 ], [ %286, %285 ]
  %299 = fcmp ogt float %297, %296
  br i1 %299, label %546, label %300

; <label>:300:                                    ; preds = %295
  %301 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %302 = load float, float* %301, align 4
  %303 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %304 = load float, float* %303, align 4
  br label %571

; <label>:305:                                    ; preds = %285, %270
  %306 = phi float [ %274, %270 ], [ %290, %285 ]
  %307 = phi float [ %272, %270 ], [ %288, %285 ]
  %308 = phi i32 [ 0, %270 ], [ %286, %285 ]
  %309 = fcmp ult float %307, %306
  br i1 %309, label %310, label %546

; <label>:310:                                    ; preds = %305
  %311 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %312 = load float, float* %311, align 4
  %313 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %314 = load float, float* %313, align 4
  br label %582

; <label>:315:                                    ; preds = %285, %262
  %316 = phi i1 [ %267, %262 ], [ %292, %285 ]
  %317 = phi float [ %266, %262 ], [ %290, %285 ]
  %318 = phi float [ %264, %262 ], [ %288, %285 ]
  %319 = phi i32 [ 0, %262 ], [ %286, %285 ]
  %320 = fcmp une float %318, %317
  %321 = and i1 %320, %316
  br i1 %321, label %546, label %322

; <label>:322:                                    ; preds = %315
  %323 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %324 = load float, float* %323, align 4
  %325 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %326 = load float, float* %325, align 4
  %327 = fcmp ord float %324, %326
  br label %593

; <label>:328:                                    ; preds = %285, %254
  %329 = phi float [ %258, %254 ], [ %290, %285 ]
  %330 = phi float [ %256, %254 ], [ %288, %285 ]
  %331 = phi i32 [ 0, %254 ], [ %286, %285 ]
  %332 = fcmp ule float %330, %329
  br i1 %332, label %546, label %333

; <label>:333:                                    ; preds = %328
  %334 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %335 = load float, float* %334, align 4
  %336 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %337 = load float, float* %336, align 4
  br label %607

; <label>:338:                                    ; preds = %285, %247
  %339 = phi float [ %251, %247 ], [ %290, %285 ]
  %340 = phi float [ %249, %247 ], [ %288, %285 ]
  %341 = phi i32 [ 0, %247 ], [ %286, %285 ]
  %342 = fcmp ult float %340, %339
  br i1 %342, label %546, label %343

; <label>:343:                                    ; preds = %338
  %344 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %345 = load float, float* %344, align 4
  %346 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %347 = load float, float* %346, align 4
  br label %618

; <label>:348:                                    ; preds = %285, %240
  %349 = phi float [ %244, %240 ], [ %290, %285 ]
  %350 = phi float [ %242, %240 ], [ %288, %285 ]
  %351 = phi i32 [ 0, %240 ], [ %286, %285 ]
  %352 = fcmp ueq float %350, %349
  br i1 %352, label %546, label %353

; <label>:353:                                    ; preds = %348
  %354 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %355 = load float, float* %354, align 4
  %356 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %357 = load float, float* %356, align 4
  br label %629

; <label>:358:                                    ; preds = %285
  br i1 %291, label %555, label %546

; <label>:359:                                    ; preds = %285, %226
  %360 = phi float [ %230, %226 ], [ %290, %285 ]
  %361 = phi float [ %228, %226 ], [ %288, %285 ]
  %362 = phi i32 [ 0, %226 ], [ %286, %285 ]
  %363 = fcmp ugt float %361, %360
  br i1 %363, label %546, label %364

; <label>:364:                                    ; preds = %359
  %365 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %366 = load float, float* %365, align 4
  %367 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %368 = load float, float* %367, align 4
  br label %641

; <label>:369:                                    ; preds = %285, %219
  %370 = phi float [ %223, %219 ], [ %290, %285 ]
  %371 = phi float [ %221, %219 ], [ %288, %285 ]
  %372 = phi i32 [ 0, %219 ], [ %286, %285 ]
  %373 = fcmp uge float %371, %370
  br i1 %373, label %546, label %374

; <label>:374:                                    ; preds = %369
  %375 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %376 = load float, float* %375, align 4
  %377 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %378 = load float, float* %377, align 4
  br label %652

; <label>:379:                                    ; preds = %285, %212
  %380 = phi float [ %216, %212 ], [ %290, %285 ]
  %381 = phi float [ %214, %212 ], [ %288, %285 ]
  %382 = phi i32 [ 0, %212 ], [ %286, %285 ]
  %383 = fcmp une float %381, %380
  br i1 %383, label %546, label %384

; <label>:384:                                    ; preds = %379
  %385 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %386 = load float, float* %385, align 4
  %387 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %388 = load float, float* %387, align 4
  br label %663

; <label>:389:                                    ; preds = %285, %205
  %390 = phi float [ %209, %205 ], [ %290, %285 ]
  %391 = phi float [ %207, %205 ], [ %288, %285 ]
  %392 = phi i32 [ 0, %205 ], [ %286, %285 ]
  %393 = fcmp ugt float %391, %390
  br i1 %393, label %394, label %546

; <label>:394:                                    ; preds = %389
  %395 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %396 = load float, float* %395, align 4
  %397 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %398 = load float, float* %397, align 4
  br label %674

; <label>:399:                                    ; preds = %285, %198
  %400 = phi float [ %202, %198 ], [ %290, %285 ]
  %401 = phi float [ %200, %198 ], [ %288, %285 ]
  %402 = phi i32 [ 0, %198 ], [ %286, %285 ]
  %403 = fcmp olt float %401, %400
  br i1 %403, label %546, label %404

; <label>:404:                                    ; preds = %399
  %405 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %406 = load float, float* %405, align 4
  %407 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %408 = load float, float* %407, align 4
  br label %685

; <label>:409:                                    ; preds = %285, %190
  %410 = phi i1 [ %195, %190 ], [ %292, %285 ]
  %411 = phi float [ %194, %190 ], [ %290, %285 ]
  %412 = phi float [ %192, %190 ], [ %288, %285 ]
  %413 = phi i32 [ 0, %190 ], [ %286, %285 ]
  %414 = fcmp oeq float %412, %411
  %415 = and i1 %414, %410
  br i1 %415, label %546, label %416

; <label>:416:                                    ; preds = %409
  %417 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %418 = load float, float* %417, align 4
  %419 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %420 = load float, float* %419, align 4
  %421 = fcmp ord float %418, %420
  br label %696

; <label>:422:                                    ; preds = %285, %181
  %423 = phi i1 [ %186, %181 ], [ %292, %285 ]
  %424 = phi float [ %185, %181 ], [ %290, %285 ]
  %425 = phi float [ %183, %181 ], [ %288, %285 ]
  %426 = phi i32 [ 0, %181 ], [ %286, %285 ]
  %427 = fcmp ogt float %425, %424
  %428 = and i1 %427, %423
  br i1 %428, label %546, label %429

; <label>:429:                                    ; preds = %422
  %430 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %431 = load float, float* %430, align 4
  %432 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %433 = load float, float* %432, align 4
  %434 = fcmp ord float %431, %433
  br label %710

; <label>:435:                                    ; preds = %285, %172
  %436 = phi i1 [ %177, %172 ], [ %292, %285 ]
  %437 = phi float [ %176, %172 ], [ %290, %285 ]
  %438 = phi float [ %174, %172 ], [ %288, %285 ]
  %439 = phi i32 [ 0, %172 ], [ %286, %285 ]
  %440 = fcmp oge float %438, %437
  %441 = and i1 %440, %436
  br i1 %441, label %546, label %442

; <label>:442:                                    ; preds = %435
  %443 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %444 = load float, float* %443, align 4
  %445 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %446 = load float, float* %445, align 4
  %447 = fcmp ord float %444, %446
  br label %724

; <label>:448:                                    ; preds = %285, %164
  %449 = phi float [ %168, %164 ], [ %290, %285 ]
  %450 = phi float [ %166, %164 ], [ %288, %285 ]
  %451 = phi i32 [ 0, %164 ], [ %286, %285 ]
  %452 = fcmp ueq float %450, %449
  br i1 %452, label %453, label %546

; <label>:453:                                    ; preds = %448
  %454 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %455 = load float, float* %454, align 4
  %456 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %457 = load float, float* %456, align 4
  br label %738

; <label>:458:                                    ; preds = %285, %157
  %459 = phi float [ %161, %157 ], [ %290, %285 ]
  %460 = phi float [ %159, %157 ], [ %288, %285 ]
  %461 = phi i32 [ 0, %157 ], [ %286, %285 ]
  %462 = fcmp ule float %460, %459
  br i1 %462, label %546, label %463

; <label>:463:                                    ; preds = %458
  %464 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %465 = load float, float* %464, align 4
  %466 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %467 = load float, float* %466, align 4
  br label %749

; <label>:468:                                    ; preds = %285, %150
  %469 = phi float [ %154, %150 ], [ %290, %285 ]
  %470 = phi float [ %152, %150 ], [ %288, %285 ]
  %471 = phi i32 [ 0, %150 ], [ %286, %285 ]
  %472 = fcmp ult float %470, %469
  br i1 %472, label %546, label %473

; <label>:473:                                    ; preds = %468
  %474 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %475 = load float, float* %474, align 4
  %476 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %477 = load float, float* %476, align 4
  br label %760

; <label>:478:                                    ; preds = %285, %143
  %479 = phi float [ %147, %143 ], [ %290, %285 ]
  %480 = phi float [ %145, %143 ], [ %288, %285 ]
  %481 = phi i32 [ 0, %143 ], [ %286, %285 ]
  %482 = fcmp ueq float %480, %479
  br i1 %482, label %546, label %483

; <label>:483:                                    ; preds = %478
  %484 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %485 = load float, float* %484, align 4
  %486 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %487 = load float, float* %486, align 4
  br label %771

; <label>:488:                                    ; preds = %285
  br i1 %291, label %548, label %546

; <label>:489:                                    ; preds = %285, %129
  %490 = phi float [ %133, %129 ], [ %290, %285 ]
  %491 = phi float [ %131, %129 ], [ %288, %285 ]
  %492 = phi i32 [ 0, %129 ], [ %286, %285 ]
  %493 = fcmp ugt float %491, %490
  br i1 %493, label %546, label %494

; <label>:494:                                    ; preds = %489
  %495 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %496 = load float, float* %495, align 4
  %497 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %498 = load float, float* %497, align 4
  br label %783

; <label>:499:                                    ; preds = %285, %122
  %500 = phi float [ %126, %122 ], [ %290, %285 ]
  %501 = phi float [ %124, %122 ], [ %288, %285 ]
  %502 = phi i32 [ 0, %122 ], [ %286, %285 ]
  %503 = fcmp uge float %501, %500
  br i1 %503, label %546, label %504

; <label>:504:                                    ; preds = %499
  %505 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %506 = load float, float* %505, align 4
  %507 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %508 = load float, float* %507, align 4
  br label %794

; <label>:509:                                    ; preds = %285, %115
  %510 = phi float [ %119, %115 ], [ %290, %285 ]
  %511 = phi float [ %117, %115 ], [ %288, %285 ]
  %512 = phi i32 [ 0, %115 ], [ %286, %285 ]
  %513 = fcmp une float %511, %510
  br i1 %513, label %546, label %514

; <label>:514:                                    ; preds = %509
  %515 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %516 = load float, float* %515, align 4
  %517 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %518 = load float, float* %517, align 4
  br label %805

; <label>:519:                                    ; preds = %285, %285
  br i1 %291, label %546, label %562

; <label>:520:                                    ; preds = %285, %107
  %521 = phi i1 [ %112, %107 ], [ %292, %285 ]
  %522 = phi float [ %111, %107 ], [ %290, %285 ]
  %523 = phi float [ %109, %107 ], [ %288, %285 ]
  %524 = phi i32 [ 0, %107 ], [ %286, %285 ]
  %525 = fcmp ole float %523, %522
  %526 = and i1 %525, %521
  br i1 %526, label %546, label %527

; <label>:527:                                    ; preds = %520
  %528 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %529 = load float, float* %528, align 4
  %530 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %531 = load float, float* %530, align 4
  %532 = fcmp ord float %529, %531
  br label %817

; <label>:533:                                    ; preds = %285, %98
  %534 = phi i1 [ %103, %98 ], [ %292, %285 ]
  %535 = phi float [ %102, %98 ], [ %290, %285 ]
  %536 = phi float [ %100, %98 ], [ %288, %285 ]
  %537 = phi i32 [ 0, %98 ], [ %286, %285 ]
  %538 = fcmp olt float %536, %535
  %539 = and i1 %538, %534
  br i1 %539, label %546, label %540

; <label>:540:                                    ; preds = %533
  %541 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %542 = load float, float* %541, align 4
  %543 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %544 = load float, float* %543, align 4
  %545 = fcmp ord float %542, %544
  br label %831

; <label>:546:                                    ; preds = %533, %520, %519, %509, %499, %489, %488, %478, %468, %458, %448, %435, %422, %409, %399, %389, %379, %369, %359, %358, %348, %338, %328, %315, %305, %295, %285, %285, %232, %135
  %547 = phi i32 [ %537, %533 ], [ %524, %520 ], [ %286, %519 ], [ %512, %509 ], [ %502, %499 ], [ %492, %489 ], [ %286, %488 ], [ %481, %478 ], [ %471, %468 ], [ %461, %458 ], [ %451, %448 ], [ %439, %435 ], [ %426, %422 ], [ %413, %409 ], [ %402, %399 ], [ %392, %389 ], [ %382, %379 ], [ %372, %369 ], [ %362, %359 ], [ %286, %358 ], [ %351, %348 ], [ %341, %338 ], [ %331, %328 ], [ %319, %315 ], [ %308, %305 ], [ %298, %295 ], [ %286, %285 ], [ %286, %285 ], [ 0, %232 ], [ 0, %135 ]
  br label %562

; <label>:548:                                    ; preds = %488, %135
  %549 = phi i32 [ 0, %135 ], [ %286, %488 ]
  %550 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %551 = load float, float* %550, align 4
  %552 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %553 = load float, float* %552, align 4
  %554 = fcmp uno float %551, %553
  br i1 %554, label %848, label %845

; <label>:555:                                    ; preds = %358, %232
  %556 = phi i32 [ 0, %232 ], [ %286, %358 ]
  %557 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %558 = load float, float* %557, align 4
  %559 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %560 = load float, float* %559, align 4
  %561 = fcmp uno float %558, %560
  br i1 %561, label %856, label %845

; <label>:562:                                    ; preds = %546, %519, %285, %285
  %563 = phi i32 [ %547, %546 ], [ %286, %519 ], [ %286, %285 ], [ %286, %285 ]
  %564 = phi i32 [ -1, %546 ], [ 0, %519 ], [ 0, %285 ], [ 0, %285 ]
  %565 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %566 = load float, float* %565, align 4
  %567 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  %568 = load float, float* %567, align 4
  %569 = fcmp uno float %566, %568
  %570 = xor i1 %569, true
  switch i8 %11, label %282 [
    i8 31, label %845
    i8 1, label %831
    i8 2, label %817
    i8 3, label %816
    i8 4, label %805
    i8 5, label %794
    i8 6, label %783
    i8 7, label %782
    i8 8, label %771
    i8 9, label %760
    i8 10, label %749
    i8 11, label %864
    i8 12, label %738
    i8 13, label %724
    i8 14, label %710
    i8 15, label %845
    i8 16, label %696
    i8 17, label %685
    i8 18, label %674
    i8 19, label %816
    i8 20, label %663
    i8 21, label %652
    i8 22, label %641
    i8 23, label %640
    i8 24, label %629
    i8 25, label %618
    i8 26, label %607
    i8 27, label %864
    i8 28, label %593
    i8 29, label %582
    i8 30, label %571
  ]

; <label>:571:                                    ; preds = %562, %300
  %572 = phi float [ %304, %300 ], [ %568, %562 ]
  %573 = phi float [ %302, %300 ], [ %566, %562 ]
  %574 = phi i32 [ 0, %300 ], [ %564, %562 ]
  %575 = phi i32 [ %298, %300 ], [ %563, %562 ]
  %576 = fcmp ogt float %573, %572
  br i1 %576, label %845, label %577

; <label>:577:                                    ; preds = %571
  %578 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %579 = load float, float* %578, align 4
  %580 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %581 = load float, float* %580, align 4
  br label %874

; <label>:582:                                    ; preds = %562, %310
  %583 = phi float [ %314, %310 ], [ %568, %562 ]
  %584 = phi float [ %312, %310 ], [ %566, %562 ]
  %585 = phi i32 [ 0, %310 ], [ %564, %562 ]
  %586 = phi i32 [ %308, %310 ], [ %563, %562 ]
  %587 = fcmp ult float %584, %583
  br i1 %587, label %588, label %845

; <label>:588:                                    ; preds = %582
  %589 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %590 = load float, float* %589, align 4
  %591 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %592 = load float, float* %591, align 4
  br label %886

; <label>:593:                                    ; preds = %562, %322
  %594 = phi i1 [ %327, %322 ], [ %570, %562 ]
  %595 = phi float [ %326, %322 ], [ %568, %562 ]
  %596 = phi float [ %324, %322 ], [ %566, %562 ]
  %597 = phi i32 [ 0, %322 ], [ %564, %562 ]
  %598 = phi i32 [ %319, %322 ], [ %563, %562 ]
  %599 = fcmp une float %596, %595
  %600 = and i1 %599, %594
  br i1 %600, label %845, label %601

; <label>:601:                                    ; preds = %593
  %602 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %603 = load float, float* %602, align 4
  %604 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %605 = load float, float* %604, align 4
  %606 = fcmp ord float %603, %605
  br label %898

; <label>:607:                                    ; preds = %562, %333
  %608 = phi float [ %337, %333 ], [ %568, %562 ]
  %609 = phi float [ %335, %333 ], [ %566, %562 ]
  %610 = phi i32 [ 0, %333 ], [ %564, %562 ]
  %611 = phi i32 [ %331, %333 ], [ %563, %562 ]
  %612 = fcmp ule float %609, %608
  br i1 %612, label %845, label %613

; <label>:613:                                    ; preds = %607
  %614 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %615 = load float, float* %614, align 4
  %616 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %617 = load float, float* %616, align 4
  br label %913

; <label>:618:                                    ; preds = %562, %343
  %619 = phi float [ %347, %343 ], [ %568, %562 ]
  %620 = phi float [ %345, %343 ], [ %566, %562 ]
  %621 = phi i32 [ 0, %343 ], [ %564, %562 ]
  %622 = phi i32 [ %341, %343 ], [ %563, %562 ]
  %623 = fcmp ult float %620, %619
  br i1 %623, label %845, label %624

; <label>:624:                                    ; preds = %618
  %625 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %626 = load float, float* %625, align 4
  %627 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %628 = load float, float* %627, align 4
  br label %925

; <label>:629:                                    ; preds = %562, %353
  %630 = phi float [ %357, %353 ], [ %568, %562 ]
  %631 = phi float [ %355, %353 ], [ %566, %562 ]
  %632 = phi i32 [ 0, %353 ], [ %564, %562 ]
  %633 = phi i32 [ %351, %353 ], [ %563, %562 ]
  %634 = fcmp ueq float %631, %630
  br i1 %634, label %845, label %635

; <label>:635:                                    ; preds = %629
  %636 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %637 = load float, float* %636, align 4
  %638 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %639 = load float, float* %638, align 4
  br label %937

; <label>:640:                                    ; preds = %562
  br i1 %569, label %856, label %845

; <label>:641:                                    ; preds = %562, %364
  %642 = phi float [ %368, %364 ], [ %568, %562 ]
  %643 = phi float [ %366, %364 ], [ %566, %562 ]
  %644 = phi i32 [ 0, %364 ], [ %564, %562 ]
  %645 = phi i32 [ %362, %364 ], [ %563, %562 ]
  %646 = fcmp ugt float %643, %642
  br i1 %646, label %845, label %647

; <label>:647:                                    ; preds = %641
  %648 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %649 = load float, float* %648, align 4
  %650 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %651 = load float, float* %650, align 4
  br label %950

; <label>:652:                                    ; preds = %562, %374
  %653 = phi float [ %378, %374 ], [ %568, %562 ]
  %654 = phi float [ %376, %374 ], [ %566, %562 ]
  %655 = phi i32 [ 0, %374 ], [ %564, %562 ]
  %656 = phi i32 [ %372, %374 ], [ %563, %562 ]
  %657 = fcmp uge float %654, %653
  br i1 %657, label %845, label %658

; <label>:658:                                    ; preds = %652
  %659 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %660 = load float, float* %659, align 4
  %661 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %662 = load float, float* %661, align 4
  br label %962

; <label>:663:                                    ; preds = %562, %384
  %664 = phi float [ %388, %384 ], [ %568, %562 ]
  %665 = phi float [ %386, %384 ], [ %566, %562 ]
  %666 = phi i32 [ 0, %384 ], [ %564, %562 ]
  %667 = phi i32 [ %382, %384 ], [ %563, %562 ]
  %668 = fcmp une float %665, %664
  br i1 %668, label %845, label %669

; <label>:669:                                    ; preds = %663
  %670 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %671 = load float, float* %670, align 4
  %672 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %673 = load float, float* %672, align 4
  br label %974

; <label>:674:                                    ; preds = %562, %394
  %675 = phi float [ %398, %394 ], [ %568, %562 ]
  %676 = phi float [ %396, %394 ], [ %566, %562 ]
  %677 = phi i32 [ 0, %394 ], [ %564, %562 ]
  %678 = phi i32 [ %392, %394 ], [ %563, %562 ]
  %679 = fcmp ugt float %676, %675
  br i1 %679, label %680, label %845

; <label>:680:                                    ; preds = %674
  %681 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %682 = load float, float* %681, align 4
  %683 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %684 = load float, float* %683, align 4
  br label %986

; <label>:685:                                    ; preds = %562, %404
  %686 = phi float [ %408, %404 ], [ %568, %562 ]
  %687 = phi float [ %406, %404 ], [ %566, %562 ]
  %688 = phi i32 [ 0, %404 ], [ %564, %562 ]
  %689 = phi i32 [ %402, %404 ], [ %563, %562 ]
  %690 = fcmp olt float %687, %686
  br i1 %690, label %845, label %691

; <label>:691:                                    ; preds = %685
  %692 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %693 = load float, float* %692, align 4
  %694 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %695 = load float, float* %694, align 4
  br label %998

; <label>:696:                                    ; preds = %562, %416
  %697 = phi i1 [ %421, %416 ], [ %570, %562 ]
  %698 = phi float [ %420, %416 ], [ %568, %562 ]
  %699 = phi float [ %418, %416 ], [ %566, %562 ]
  %700 = phi i32 [ 0, %416 ], [ %564, %562 ]
  %701 = phi i32 [ %413, %416 ], [ %563, %562 ]
  %702 = fcmp oeq float %699, %698
  %703 = and i1 %702, %697
  br i1 %703, label %845, label %704

; <label>:704:                                    ; preds = %696
  %705 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %706 = load float, float* %705, align 4
  %707 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %708 = load float, float* %707, align 4
  %709 = fcmp ord float %706, %708
  br label %1010

; <label>:710:                                    ; preds = %562, %429
  %711 = phi i1 [ %434, %429 ], [ %570, %562 ]
  %712 = phi float [ %433, %429 ], [ %568, %562 ]
  %713 = phi float [ %431, %429 ], [ %566, %562 ]
  %714 = phi i32 [ 0, %429 ], [ %564, %562 ]
  %715 = phi i32 [ %426, %429 ], [ %563, %562 ]
  %716 = fcmp ogt float %713, %712
  %717 = and i1 %716, %711
  br i1 %717, label %845, label %718

; <label>:718:                                    ; preds = %710
  %719 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %720 = load float, float* %719, align 4
  %721 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %722 = load float, float* %721, align 4
  %723 = fcmp ord float %720, %722
  br label %1025

; <label>:724:                                    ; preds = %562, %442
  %725 = phi i1 [ %447, %442 ], [ %570, %562 ]
  %726 = phi float [ %446, %442 ], [ %568, %562 ]
  %727 = phi float [ %444, %442 ], [ %566, %562 ]
  %728 = phi i32 [ 0, %442 ], [ %564, %562 ]
  %729 = phi i32 [ %439, %442 ], [ %563, %562 ]
  %730 = fcmp oge float %727, %726
  %731 = and i1 %730, %725
  br i1 %731, label %845, label %732

; <label>:732:                                    ; preds = %724
  %733 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %734 = load float, float* %733, align 4
  %735 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %736 = load float, float* %735, align 4
  %737 = fcmp ord float %734, %736
  br label %1040

; <label>:738:                                    ; preds = %562, %453
  %739 = phi float [ %457, %453 ], [ %568, %562 ]
  %740 = phi float [ %455, %453 ], [ %566, %562 ]
  %741 = phi i32 [ 0, %453 ], [ %564, %562 ]
  %742 = phi i32 [ %451, %453 ], [ %563, %562 ]
  %743 = fcmp ueq float %740, %739
  br i1 %743, label %744, label %845

; <label>:744:                                    ; preds = %738
  %745 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %746 = load float, float* %745, align 4
  %747 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %748 = load float, float* %747, align 4
  br label %1055

; <label>:749:                                    ; preds = %562, %463
  %750 = phi float [ %467, %463 ], [ %568, %562 ]
  %751 = phi float [ %465, %463 ], [ %566, %562 ]
  %752 = phi i32 [ 0, %463 ], [ %564, %562 ]
  %753 = phi i32 [ %461, %463 ], [ %563, %562 ]
  %754 = fcmp ule float %751, %750
  br i1 %754, label %845, label %755

; <label>:755:                                    ; preds = %749
  %756 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %757 = load float, float* %756, align 4
  %758 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %759 = load float, float* %758, align 4
  br label %1067

; <label>:760:                                    ; preds = %562, %473
  %761 = phi float [ %477, %473 ], [ %568, %562 ]
  %762 = phi float [ %475, %473 ], [ %566, %562 ]
  %763 = phi i32 [ 0, %473 ], [ %564, %562 ]
  %764 = phi i32 [ %471, %473 ], [ %563, %562 ]
  %765 = fcmp ult float %762, %761
  br i1 %765, label %845, label %766

; <label>:766:                                    ; preds = %760
  %767 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %768 = load float, float* %767, align 4
  %769 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %770 = load float, float* %769, align 4
  br label %1079

; <label>:771:                                    ; preds = %562, %483
  %772 = phi float [ %487, %483 ], [ %568, %562 ]
  %773 = phi float [ %485, %483 ], [ %566, %562 ]
  %774 = phi i32 [ 0, %483 ], [ %564, %562 ]
  %775 = phi i32 [ %481, %483 ], [ %563, %562 ]
  %776 = fcmp ueq float %773, %772
  br i1 %776, label %845, label %777

; <label>:777:                                    ; preds = %771
  %778 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %779 = load float, float* %778, align 4
  %780 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %781 = load float, float* %780, align 4
  br label %1091

; <label>:782:                                    ; preds = %562
  br i1 %569, label %848, label %845

; <label>:783:                                    ; preds = %562, %494
  %784 = phi float [ %498, %494 ], [ %568, %562 ]
  %785 = phi float [ %496, %494 ], [ %566, %562 ]
  %786 = phi i32 [ 0, %494 ], [ %564, %562 ]
  %787 = phi i32 [ %492, %494 ], [ %563, %562 ]
  %788 = fcmp ugt float %785, %784
  br i1 %788, label %845, label %789

; <label>:789:                                    ; preds = %783
  %790 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %791 = load float, float* %790, align 4
  %792 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %793 = load float, float* %792, align 4
  br label %1104

; <label>:794:                                    ; preds = %562, %504
  %795 = phi float [ %508, %504 ], [ %568, %562 ]
  %796 = phi float [ %506, %504 ], [ %566, %562 ]
  %797 = phi i32 [ 0, %504 ], [ %564, %562 ]
  %798 = phi i32 [ %502, %504 ], [ %563, %562 ]
  %799 = fcmp uge float %796, %795
  br i1 %799, label %845, label %800

; <label>:800:                                    ; preds = %794
  %801 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %802 = load float, float* %801, align 4
  %803 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %804 = load float, float* %803, align 4
  br label %1116

; <label>:805:                                    ; preds = %562, %514
  %806 = phi float [ %518, %514 ], [ %568, %562 ]
  %807 = phi float [ %516, %514 ], [ %566, %562 ]
  %808 = phi i32 [ 0, %514 ], [ %564, %562 ]
  %809 = phi i32 [ %512, %514 ], [ %563, %562 ]
  %810 = fcmp une float %807, %806
  br i1 %810, label %845, label %811

; <label>:811:                                    ; preds = %805
  %812 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %813 = load float, float* %812, align 4
  %814 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %815 = load float, float* %814, align 4
  br label %1128

; <label>:816:                                    ; preds = %562, %562
  br i1 %569, label %845, label %864

; <label>:817:                                    ; preds = %562, %527
  %818 = phi i1 [ %532, %527 ], [ %570, %562 ]
  %819 = phi float [ %531, %527 ], [ %568, %562 ]
  %820 = phi float [ %529, %527 ], [ %566, %562 ]
  %821 = phi i32 [ 0, %527 ], [ %564, %562 ]
  %822 = phi i32 [ %524, %527 ], [ %563, %562 ]
  %823 = fcmp ole float %820, %819
  %824 = and i1 %823, %818
  br i1 %824, label %845, label %825

; <label>:825:                                    ; preds = %817
  %826 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %827 = load float, float* %826, align 4
  %828 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %829 = load float, float* %828, align 4
  %830 = fcmp ord float %827, %829
  br label %1141

; <label>:831:                                    ; preds = %562, %540
  %832 = phi i1 [ %545, %540 ], [ %570, %562 ]
  %833 = phi float [ %544, %540 ], [ %568, %562 ]
  %834 = phi float [ %542, %540 ], [ %566, %562 ]
  %835 = phi i32 [ 0, %540 ], [ %564, %562 ]
  %836 = phi i32 [ %537, %540 ], [ %563, %562 ]
  %837 = fcmp olt float %834, %833
  %838 = and i1 %837, %832
  br i1 %838, label %845, label %839

; <label>:839:                                    ; preds = %831
  %840 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %841 = load float, float* %840, align 4
  %842 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %843 = load float, float* %842, align 4
  %844 = fcmp ord float %841, %843
  br label %1156

; <label>:845:                                    ; preds = %831, %817, %816, %805, %794, %783, %782, %771, %760, %749, %738, %724, %710, %696, %685, %674, %663, %652, %641, %640, %629, %618, %607, %593, %582, %571, %562, %562, %555, %548
  %846 = phi i32 [ %835, %831 ], [ %821, %817 ], [ %564, %816 ], [ %808, %805 ], [ %797, %794 ], [ %786, %783 ], [ %564, %782 ], [ %774, %771 ], [ %763, %760 ], [ %752, %749 ], [ %741, %738 ], [ %728, %724 ], [ %714, %710 ], [ %700, %696 ], [ %688, %685 ], [ %677, %674 ], [ %666, %663 ], [ %655, %652 ], [ %644, %641 ], [ %564, %640 ], [ %632, %629 ], [ %621, %618 ], [ %610, %607 ], [ %597, %593 ], [ %585, %582 ], [ %574, %571 ], [ %564, %562 ], [ %564, %562 ], [ 0, %555 ], [ 0, %548 ]
  %847 = phi i32 [ %836, %831 ], [ %822, %817 ], [ %563, %816 ], [ %809, %805 ], [ %798, %794 ], [ %787, %783 ], [ %563, %782 ], [ %775, %771 ], [ %764, %760 ], [ %753, %749 ], [ %742, %738 ], [ %729, %724 ], [ %715, %710 ], [ %701, %696 ], [ %689, %685 ], [ %678, %674 ], [ %667, %663 ], [ %656, %652 ], [ %645, %641 ], [ %563, %640 ], [ %633, %629 ], [ %622, %618 ], [ %611, %607 ], [ %598, %593 ], [ %586, %582 ], [ %575, %571 ], [ %563, %562 ], [ %563, %562 ], [ %556, %555 ], [ %549, %548 ]
  br label %864

; <label>:848:                                    ; preds = %782, %548
  %849 = phi i32 [ 0, %548 ], [ %564, %782 ]
  %850 = phi i32 [ %549, %548 ], [ %563, %782 ]
  %851 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %852 = load float, float* %851, align 4
  %853 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %854 = load float, float* %853, align 4
  %855 = fcmp uno float %852, %854
  br i1 %855, label %1175, label %1171

; <label>:856:                                    ; preds = %640, %555
  %857 = phi i32 [ 0, %555 ], [ %564, %640 ]
  %858 = phi i32 [ %556, %555 ], [ %563, %640 ]
  %859 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %860 = load float, float* %859, align 4
  %861 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %862 = load float, float* %861, align 4
  %863 = fcmp uno float %860, %862
  br i1 %863, label %1184, label %1171

; <label>:864:                                    ; preds = %845, %816, %562, %562
  %865 = phi i32 [ %846, %845 ], [ %564, %816 ], [ %564, %562 ], [ %564, %562 ]
  %866 = phi i32 [ %847, %845 ], [ %563, %816 ], [ %563, %562 ], [ %563, %562 ]
  %867 = phi i32 [ -1, %845 ], [ 0, %816 ], [ 0, %562 ], [ 0, %562 ]
  %868 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %869 = load float, float* %868, align 4
  %870 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  %871 = load float, float* %870, align 4
  %872 = fcmp uno float %869, %871
  %873 = xor i1 %872, true
  switch i8 %11, label %282 [
    i8 31, label %1171
    i8 1, label %1156
    i8 2, label %1141
    i8 3, label %1140
    i8 4, label %1128
    i8 5, label %1116
    i8 6, label %1104
    i8 7, label %1103
    i8 8, label %1091
    i8 9, label %1079
    i8 10, label %1067
    i8 11, label %1193
    i8 12, label %1055
    i8 13, label %1040
    i8 14, label %1025
    i8 15, label %1171
    i8 16, label %1010
    i8 17, label %998
    i8 18, label %986
    i8 19, label %1140
    i8 20, label %974
    i8 21, label %962
    i8 22, label %950
    i8 23, label %949
    i8 24, label %937
    i8 25, label %925
    i8 26, label %913
    i8 27, label %1193
    i8 28, label %898
    i8 29, label %886
    i8 30, label %874
  ]

; <label>:874:                                    ; preds = %864, %577
  %875 = phi float [ %581, %577 ], [ %871, %864 ]
  %876 = phi float [ %579, %577 ], [ %869, %864 ]
  %877 = phi i32 [ 0, %577 ], [ %867, %864 ]
  %878 = phi i32 [ %575, %577 ], [ %866, %864 ]
  %879 = phi i32 [ %574, %577 ], [ %865, %864 ]
  %880 = fcmp ogt float %876, %875
  br i1 %880, label %1171, label %881

; <label>:881:                                    ; preds = %874
  %882 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %883 = load float, float* %882, align 4
  %884 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %885 = load float, float* %884, align 4
  br label %1204

; <label>:886:                                    ; preds = %864, %588
  %887 = phi float [ %592, %588 ], [ %871, %864 ]
  %888 = phi float [ %590, %588 ], [ %869, %864 ]
  %889 = phi i32 [ 0, %588 ], [ %867, %864 ]
  %890 = phi i32 [ %586, %588 ], [ %866, %864 ]
  %891 = phi i32 [ %585, %588 ], [ %865, %864 ]
  %892 = fcmp ult float %888, %887
  br i1 %892, label %893, label %1171

; <label>:893:                                    ; preds = %886
  %894 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %895 = load float, float* %894, align 4
  %896 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %897 = load float, float* %896, align 4
  br label %1217

; <label>:898:                                    ; preds = %864, %601
  %899 = phi i1 [ %606, %601 ], [ %873, %864 ]
  %900 = phi float [ %605, %601 ], [ %871, %864 ]
  %901 = phi float [ %603, %601 ], [ %869, %864 ]
  %902 = phi i32 [ 0, %601 ], [ %867, %864 ]
  %903 = phi i32 [ %598, %601 ], [ %866, %864 ]
  %904 = phi i32 [ %597, %601 ], [ %865, %864 ]
  %905 = fcmp une float %901, %900
  %906 = and i1 %905, %899
  br i1 %906, label %1171, label %907

; <label>:907:                                    ; preds = %898
  %908 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %909 = load float, float* %908, align 4
  %910 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %911 = load float, float* %910, align 4
  %912 = fcmp ord float %909, %911
  br label %1230

; <label>:913:                                    ; preds = %864, %613
  %914 = phi float [ %617, %613 ], [ %871, %864 ]
  %915 = phi float [ %615, %613 ], [ %869, %864 ]
  %916 = phi i32 [ 0, %613 ], [ %867, %864 ]
  %917 = phi i32 [ %611, %613 ], [ %866, %864 ]
  %918 = phi i32 [ %610, %613 ], [ %865, %864 ]
  %919 = fcmp ule float %915, %914
  br i1 %919, label %1171, label %920

; <label>:920:                                    ; preds = %913
  %921 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %922 = load float, float* %921, align 4
  %923 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %924 = load float, float* %923, align 4
  br label %1246

; <label>:925:                                    ; preds = %864, %624
  %926 = phi float [ %628, %624 ], [ %871, %864 ]
  %927 = phi float [ %626, %624 ], [ %869, %864 ]
  %928 = phi i32 [ 0, %624 ], [ %867, %864 ]
  %929 = phi i32 [ %622, %624 ], [ %866, %864 ]
  %930 = phi i32 [ %621, %624 ], [ %865, %864 ]
  %931 = fcmp ult float %927, %926
  br i1 %931, label %1171, label %932

; <label>:932:                                    ; preds = %925
  %933 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %934 = load float, float* %933, align 4
  %935 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %936 = load float, float* %935, align 4
  br label %1259

; <label>:937:                                    ; preds = %864, %635
  %938 = phi float [ %639, %635 ], [ %871, %864 ]
  %939 = phi float [ %637, %635 ], [ %869, %864 ]
  %940 = phi i32 [ 0, %635 ], [ %867, %864 ]
  %941 = phi i32 [ %633, %635 ], [ %866, %864 ]
  %942 = phi i32 [ %632, %635 ], [ %865, %864 ]
  %943 = fcmp ueq float %939, %938
  br i1 %943, label %1171, label %944

; <label>:944:                                    ; preds = %937
  %945 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %946 = load float, float* %945, align 4
  %947 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %948 = load float, float* %947, align 4
  br label %1272

; <label>:949:                                    ; preds = %864
  br i1 %872, label %1184, label %1171

; <label>:950:                                    ; preds = %864, %647
  %951 = phi float [ %651, %647 ], [ %871, %864 ]
  %952 = phi float [ %649, %647 ], [ %869, %864 ]
  %953 = phi i32 [ 0, %647 ], [ %867, %864 ]
  %954 = phi i32 [ %645, %647 ], [ %866, %864 ]
  %955 = phi i32 [ %644, %647 ], [ %865, %864 ]
  %956 = fcmp ugt float %952, %951
  br i1 %956, label %1171, label %957

; <label>:957:                                    ; preds = %950
  %958 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %959 = load float, float* %958, align 4
  %960 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %961 = load float, float* %960, align 4
  br label %1286

; <label>:962:                                    ; preds = %864, %658
  %963 = phi float [ %662, %658 ], [ %871, %864 ]
  %964 = phi float [ %660, %658 ], [ %869, %864 ]
  %965 = phi i32 [ 0, %658 ], [ %867, %864 ]
  %966 = phi i32 [ %656, %658 ], [ %866, %864 ]
  %967 = phi i32 [ %655, %658 ], [ %865, %864 ]
  %968 = fcmp uge float %964, %963
  br i1 %968, label %1171, label %969

; <label>:969:                                    ; preds = %962
  %970 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %971 = load float, float* %970, align 4
  %972 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %973 = load float, float* %972, align 4
  br label %1299

; <label>:974:                                    ; preds = %864, %669
  %975 = phi float [ %673, %669 ], [ %871, %864 ]
  %976 = phi float [ %671, %669 ], [ %869, %864 ]
  %977 = phi i32 [ 0, %669 ], [ %867, %864 ]
  %978 = phi i32 [ %667, %669 ], [ %866, %864 ]
  %979 = phi i32 [ %666, %669 ], [ %865, %864 ]
  %980 = fcmp une float %976, %975
  br i1 %980, label %1171, label %981

; <label>:981:                                    ; preds = %974
  %982 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %983 = load float, float* %982, align 4
  %984 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %985 = load float, float* %984, align 4
  br label %1312

; <label>:986:                                    ; preds = %864, %680
  %987 = phi float [ %684, %680 ], [ %871, %864 ]
  %988 = phi float [ %682, %680 ], [ %869, %864 ]
  %989 = phi i32 [ 0, %680 ], [ %867, %864 ]
  %990 = phi i32 [ %678, %680 ], [ %866, %864 ]
  %991 = phi i32 [ %677, %680 ], [ %865, %864 ]
  %992 = fcmp ugt float %988, %987
  br i1 %992, label %993, label %1171

; <label>:993:                                    ; preds = %986
  %994 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %995 = load float, float* %994, align 4
  %996 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %997 = load float, float* %996, align 4
  br label %1325

; <label>:998:                                    ; preds = %864, %691
  %999 = phi float [ %695, %691 ], [ %871, %864 ]
  %1000 = phi float [ %693, %691 ], [ %869, %864 ]
  %1001 = phi i32 [ 0, %691 ], [ %867, %864 ]
  %1002 = phi i32 [ %689, %691 ], [ %866, %864 ]
  %1003 = phi i32 [ %688, %691 ], [ %865, %864 ]
  %1004 = fcmp olt float %1000, %999
  br i1 %1004, label %1171, label %1005

; <label>:1005:                                   ; preds = %998
  %1006 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1007 = load float, float* %1006, align 4
  %1008 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1009 = load float, float* %1008, align 4
  br label %1338

; <label>:1010:                                   ; preds = %864, %704
  %1011 = phi i1 [ %709, %704 ], [ %873, %864 ]
  %1012 = phi float [ %708, %704 ], [ %871, %864 ]
  %1013 = phi float [ %706, %704 ], [ %869, %864 ]
  %1014 = phi i32 [ 0, %704 ], [ %867, %864 ]
  %1015 = phi i32 [ %701, %704 ], [ %866, %864 ]
  %1016 = phi i32 [ %700, %704 ], [ %865, %864 ]
  %1017 = fcmp oeq float %1013, %1012
  %1018 = and i1 %1017, %1011
  br i1 %1018, label %1171, label %1019

; <label>:1019:                                   ; preds = %1010
  %1020 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1021 = load float, float* %1020, align 4
  %1022 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1023 = load float, float* %1022, align 4
  %1024 = fcmp ord float %1021, %1023
  br label %1351

; <label>:1025:                                   ; preds = %864, %718
  %1026 = phi i1 [ %723, %718 ], [ %873, %864 ]
  %1027 = phi float [ %722, %718 ], [ %871, %864 ]
  %1028 = phi float [ %720, %718 ], [ %869, %864 ]
  %1029 = phi i32 [ 0, %718 ], [ %867, %864 ]
  %1030 = phi i32 [ %715, %718 ], [ %866, %864 ]
  %1031 = phi i32 [ %714, %718 ], [ %865, %864 ]
  %1032 = fcmp ogt float %1028, %1027
  %1033 = and i1 %1032, %1026
  br i1 %1033, label %1171, label %1034

; <label>:1034:                                   ; preds = %1025
  %1035 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1036 = load float, float* %1035, align 4
  %1037 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1038 = load float, float* %1037, align 4
  %1039 = fcmp ord float %1036, %1038
  br label %1367

; <label>:1040:                                   ; preds = %864, %732
  %1041 = phi i1 [ %737, %732 ], [ %873, %864 ]
  %1042 = phi float [ %736, %732 ], [ %871, %864 ]
  %1043 = phi float [ %734, %732 ], [ %869, %864 ]
  %1044 = phi i32 [ 0, %732 ], [ %867, %864 ]
  %1045 = phi i32 [ %729, %732 ], [ %866, %864 ]
  %1046 = phi i32 [ %728, %732 ], [ %865, %864 ]
  %1047 = fcmp oge float %1043, %1042
  %1048 = and i1 %1047, %1041
  br i1 %1048, label %1171, label %1049

; <label>:1049:                                   ; preds = %1040
  %1050 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1051 = load float, float* %1050, align 4
  %1052 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1053 = load float, float* %1052, align 4
  %1054 = fcmp ord float %1051, %1053
  br label %1383

; <label>:1055:                                   ; preds = %864, %744
  %1056 = phi float [ %748, %744 ], [ %871, %864 ]
  %1057 = phi float [ %746, %744 ], [ %869, %864 ]
  %1058 = phi i32 [ 0, %744 ], [ %867, %864 ]
  %1059 = phi i32 [ %742, %744 ], [ %866, %864 ]
  %1060 = phi i32 [ %741, %744 ], [ %865, %864 ]
  %1061 = fcmp ueq float %1057, %1056
  br i1 %1061, label %1062, label %1171

; <label>:1062:                                   ; preds = %1055
  %1063 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1064 = load float, float* %1063, align 4
  %1065 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1066 = load float, float* %1065, align 4
  br label %1399

; <label>:1067:                                   ; preds = %864, %755
  %1068 = phi float [ %759, %755 ], [ %871, %864 ]
  %1069 = phi float [ %757, %755 ], [ %869, %864 ]
  %1070 = phi i32 [ 0, %755 ], [ %867, %864 ]
  %1071 = phi i32 [ %753, %755 ], [ %866, %864 ]
  %1072 = phi i32 [ %752, %755 ], [ %865, %864 ]
  %1073 = fcmp ule float %1069, %1068
  br i1 %1073, label %1171, label %1074

; <label>:1074:                                   ; preds = %1067
  %1075 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1076 = load float, float* %1075, align 4
  %1077 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1078 = load float, float* %1077, align 4
  br label %1412

; <label>:1079:                                   ; preds = %864, %766
  %1080 = phi float [ %770, %766 ], [ %871, %864 ]
  %1081 = phi float [ %768, %766 ], [ %869, %864 ]
  %1082 = phi i32 [ 0, %766 ], [ %867, %864 ]
  %1083 = phi i32 [ %764, %766 ], [ %866, %864 ]
  %1084 = phi i32 [ %763, %766 ], [ %865, %864 ]
  %1085 = fcmp ult float %1081, %1080
  br i1 %1085, label %1171, label %1086

; <label>:1086:                                   ; preds = %1079
  %1087 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1088 = load float, float* %1087, align 4
  %1089 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1090 = load float, float* %1089, align 4
  br label %1425

; <label>:1091:                                   ; preds = %864, %777
  %1092 = phi float [ %781, %777 ], [ %871, %864 ]
  %1093 = phi float [ %779, %777 ], [ %869, %864 ]
  %1094 = phi i32 [ 0, %777 ], [ %867, %864 ]
  %1095 = phi i32 [ %775, %777 ], [ %866, %864 ]
  %1096 = phi i32 [ %774, %777 ], [ %865, %864 ]
  %1097 = fcmp ueq float %1093, %1092
  br i1 %1097, label %1171, label %1098

; <label>:1098:                                   ; preds = %1091
  %1099 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1100 = load float, float* %1099, align 4
  %1101 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1102 = load float, float* %1101, align 4
  br label %1438

; <label>:1103:                                   ; preds = %864
  br i1 %872, label %1175, label %1171

; <label>:1104:                                   ; preds = %864, %789
  %1105 = phi float [ %793, %789 ], [ %871, %864 ]
  %1106 = phi float [ %791, %789 ], [ %869, %864 ]
  %1107 = phi i32 [ 0, %789 ], [ %867, %864 ]
  %1108 = phi i32 [ %787, %789 ], [ %866, %864 ]
  %1109 = phi i32 [ %786, %789 ], [ %865, %864 ]
  %1110 = fcmp ugt float %1106, %1105
  br i1 %1110, label %1171, label %1111

; <label>:1111:                                   ; preds = %1104
  %1112 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1113 = load float, float* %1112, align 4
  %1114 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1115 = load float, float* %1114, align 4
  br label %1452

; <label>:1116:                                   ; preds = %864, %800
  %1117 = phi float [ %804, %800 ], [ %871, %864 ]
  %1118 = phi float [ %802, %800 ], [ %869, %864 ]
  %1119 = phi i32 [ 0, %800 ], [ %867, %864 ]
  %1120 = phi i32 [ %798, %800 ], [ %866, %864 ]
  %1121 = phi i32 [ %797, %800 ], [ %865, %864 ]
  %1122 = fcmp uge float %1118, %1117
  br i1 %1122, label %1171, label %1123

; <label>:1123:                                   ; preds = %1116
  %1124 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1125 = load float, float* %1124, align 4
  %1126 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1127 = load float, float* %1126, align 4
  br label %1465

; <label>:1128:                                   ; preds = %864, %811
  %1129 = phi float [ %815, %811 ], [ %871, %864 ]
  %1130 = phi float [ %813, %811 ], [ %869, %864 ]
  %1131 = phi i32 [ 0, %811 ], [ %867, %864 ]
  %1132 = phi i32 [ %809, %811 ], [ %866, %864 ]
  %1133 = phi i32 [ %808, %811 ], [ %865, %864 ]
  %1134 = fcmp une float %1130, %1129
  br i1 %1134, label %1171, label %1135

; <label>:1135:                                   ; preds = %1128
  %1136 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1137 = load float, float* %1136, align 4
  %1138 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1139 = load float, float* %1138, align 4
  br label %1478

; <label>:1140:                                   ; preds = %864, %864
  br i1 %872, label %1171, label %1193

; <label>:1141:                                   ; preds = %864, %825
  %1142 = phi i1 [ %830, %825 ], [ %873, %864 ]
  %1143 = phi float [ %829, %825 ], [ %871, %864 ]
  %1144 = phi float [ %827, %825 ], [ %869, %864 ]
  %1145 = phi i32 [ 0, %825 ], [ %867, %864 ]
  %1146 = phi i32 [ %822, %825 ], [ %866, %864 ]
  %1147 = phi i32 [ %821, %825 ], [ %865, %864 ]
  %1148 = fcmp ole float %1144, %1143
  %1149 = and i1 %1148, %1142
  br i1 %1149, label %1171, label %1150

; <label>:1150:                                   ; preds = %1141
  %1151 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1152 = load float, float* %1151, align 4
  %1153 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1154 = load float, float* %1153, align 4
  %1155 = fcmp ord float %1152, %1154
  br label %1492

; <label>:1156:                                   ; preds = %864, %839
  %1157 = phi i1 [ %844, %839 ], [ %873, %864 ]
  %1158 = phi float [ %843, %839 ], [ %871, %864 ]
  %1159 = phi float [ %841, %839 ], [ %869, %864 ]
  %1160 = phi i32 [ 0, %839 ], [ %867, %864 ]
  %1161 = phi i32 [ %836, %839 ], [ %866, %864 ]
  %1162 = phi i32 [ %835, %839 ], [ %865, %864 ]
  %1163 = fcmp olt float %1159, %1158
  %1164 = and i1 %1163, %1157
  br i1 %1164, label %1171, label %1165

; <label>:1165:                                   ; preds = %1156
  %1166 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1167 = load float, float* %1166, align 4
  %1168 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1169 = load float, float* %1168, align 4
  %1170 = fcmp ord float %1167, %1169
  br label %1508

; <label>:1171:                                   ; preds = %1156, %1141, %1140, %1128, %1116, %1104, %1103, %1091, %1079, %1067, %1055, %1040, %1025, %1010, %998, %986, %974, %962, %950, %949, %937, %925, %913, %898, %886, %874, %864, %864, %856, %848
  %1172 = phi i32 [ %1160, %1156 ], [ %1145, %1141 ], [ %867, %1140 ], [ %1131, %1128 ], [ %1119, %1116 ], [ %1107, %1104 ], [ %867, %1103 ], [ %1094, %1091 ], [ %1082, %1079 ], [ %1070, %1067 ], [ %1058, %1055 ], [ %1044, %1040 ], [ %1029, %1025 ], [ %1014, %1010 ], [ %1001, %998 ], [ %989, %986 ], [ %977, %974 ], [ %965, %962 ], [ %953, %950 ], [ %867, %949 ], [ %940, %937 ], [ %928, %925 ], [ %916, %913 ], [ %902, %898 ], [ %889, %886 ], [ %877, %874 ], [ %867, %864 ], [ %867, %864 ], [ 0, %856 ], [ 0, %848 ]
  %1173 = phi i32 [ %1161, %1156 ], [ %1146, %1141 ], [ %866, %1140 ], [ %1132, %1128 ], [ %1120, %1116 ], [ %1108, %1104 ], [ %866, %1103 ], [ %1095, %1091 ], [ %1083, %1079 ], [ %1071, %1067 ], [ %1059, %1055 ], [ %1045, %1040 ], [ %1030, %1025 ], [ %1015, %1010 ], [ %1002, %998 ], [ %990, %986 ], [ %978, %974 ], [ %966, %962 ], [ %954, %950 ], [ %866, %949 ], [ %941, %937 ], [ %929, %925 ], [ %917, %913 ], [ %903, %898 ], [ %890, %886 ], [ %878, %874 ], [ %866, %864 ], [ %866, %864 ], [ %858, %856 ], [ %850, %848 ]
  %1174 = phi i32 [ %1162, %1156 ], [ %1147, %1141 ], [ %865, %1140 ], [ %1133, %1128 ], [ %1121, %1116 ], [ %1109, %1104 ], [ %865, %1103 ], [ %1096, %1091 ], [ %1084, %1079 ], [ %1072, %1067 ], [ %1060, %1055 ], [ %1046, %1040 ], [ %1031, %1025 ], [ %1016, %1010 ], [ %1003, %998 ], [ %991, %986 ], [ %979, %974 ], [ %967, %962 ], [ %955, %950 ], [ %865, %949 ], [ %942, %937 ], [ %930, %925 ], [ %918, %913 ], [ %904, %898 ], [ %891, %886 ], [ %879, %874 ], [ %865, %864 ], [ %865, %864 ], [ %857, %856 ], [ %849, %848 ]
  br label %1193

; <label>:1175:                                   ; preds = %1103, %848
  %1176 = phi i32 [ 0, %848 ], [ %867, %1103 ]
  %1177 = phi i32 [ %850, %848 ], [ %866, %1103 ]
  %1178 = phi i32 [ %849, %848 ], [ %865, %1103 ]
  %1179 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1180 = load float, float* %1179, align 4
  %1181 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1182 = load float, float* %1181, align 4
  %1183 = fcmp uno float %1180, %1182
  br i1 %1183, label %1529, label %1524

; <label>:1184:                                   ; preds = %949, %856
  %1185 = phi i32 [ 0, %856 ], [ %867, %949 ]
  %1186 = phi i32 [ %858, %856 ], [ %866, %949 ]
  %1187 = phi i32 [ %857, %856 ], [ %865, %949 ]
  %1188 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1189 = load float, float* %1188, align 4
  %1190 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1191 = load float, float* %1190, align 4
  %1192 = fcmp uno float %1189, %1191
  br i1 %1192, label %1539, label %1524

; <label>:1193:                                   ; preds = %1171, %1140, %864, %864
  %1194 = phi i32 [ %1172, %1171 ], [ %867, %1140 ], [ %867, %864 ], [ %867, %864 ]
  %1195 = phi i32 [ %1173, %1171 ], [ %866, %1140 ], [ %866, %864 ], [ %866, %864 ]
  %1196 = phi i32 [ %1174, %1171 ], [ %865, %1140 ], [ %865, %864 ], [ %865, %864 ]
  %1197 = phi i32 [ -1, %1171 ], [ 0, %1140 ], [ 0, %864 ], [ 0, %864 ]
  %1198 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %1199 = load float, float* %1198, align 4
  %1200 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  %1201 = load float, float* %1200, align 4
  %1202 = fcmp uno float %1199, %1201
  %1203 = xor i1 %1202, true
  switch i8 %11, label %282 [
    i8 31, label %1524
    i8 1, label %1508
    i8 2, label %1492
    i8 3, label %1491
    i8 4, label %1478
    i8 5, label %1465
    i8 6, label %1452
    i8 7, label %1451
    i8 8, label %1438
    i8 9, label %1425
    i8 10, label %1412
    i8 11, label %1549
    i8 12, label %1399
    i8 13, label %1383
    i8 14, label %1367
    i8 15, label %1524
    i8 16, label %1351
    i8 17, label %1338
    i8 18, label %1325
    i8 19, label %1491
    i8 20, label %1312
    i8 21, label %1299
    i8 22, label %1286
    i8 23, label %1285
    i8 24, label %1272
    i8 25, label %1259
    i8 26, label %1246
    i8 27, label %1549
    i8 28, label %1230
    i8 29, label %1217
    i8 30, label %1204
  ]

; <label>:1204:                                   ; preds = %1193, %881
  %1205 = phi float [ %885, %881 ], [ %1201, %1193 ]
  %1206 = phi float [ %883, %881 ], [ %1199, %1193 ]
  %1207 = phi i32 [ 0, %881 ], [ %1197, %1193 ]
  %1208 = phi i32 [ %879, %881 ], [ %1196, %1193 ]
  %1209 = phi i32 [ %878, %881 ], [ %1195, %1193 ]
  %1210 = phi i32 [ %877, %881 ], [ %1194, %1193 ]
  %1211 = fcmp ogt float %1206, %1205
  br i1 %1211, label %1524, label %1212

; <label>:1212:                                   ; preds = %1204
  %1213 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1214 = load float, float* %1213, align 4
  %1215 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1216 = load float, float* %1215, align 4
  br label %1561

; <label>:1217:                                   ; preds = %1193, %893
  %1218 = phi float [ %897, %893 ], [ %1201, %1193 ]
  %1219 = phi float [ %895, %893 ], [ %1199, %1193 ]
  %1220 = phi i32 [ 0, %893 ], [ %1197, %1193 ]
  %1221 = phi i32 [ %891, %893 ], [ %1196, %1193 ]
  %1222 = phi i32 [ %890, %893 ], [ %1195, %1193 ]
  %1223 = phi i32 [ %889, %893 ], [ %1194, %1193 ]
  %1224 = fcmp ult float %1219, %1218
  br i1 %1224, label %1225, label %1524

; <label>:1225:                                   ; preds = %1217
  %1226 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1227 = load float, float* %1226, align 4
  %1228 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1229 = load float, float* %1228, align 4
  br label %1575

; <label>:1230:                                   ; preds = %1193, %907
  %1231 = phi i1 [ %912, %907 ], [ %1203, %1193 ]
  %1232 = phi float [ %911, %907 ], [ %1201, %1193 ]
  %1233 = phi float [ %909, %907 ], [ %1199, %1193 ]
  %1234 = phi i32 [ 0, %907 ], [ %1197, %1193 ]
  %1235 = phi i32 [ %904, %907 ], [ %1196, %1193 ]
  %1236 = phi i32 [ %903, %907 ], [ %1195, %1193 ]
  %1237 = phi i32 [ %902, %907 ], [ %1194, %1193 ]
  %1238 = fcmp une float %1233, %1232
  %1239 = and i1 %1238, %1231
  br i1 %1239, label %1524, label %1240

; <label>:1240:                                   ; preds = %1230
  %1241 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1242 = load float, float* %1241, align 4
  %1243 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1244 = load float, float* %1243, align 4
  %1245 = fcmp ord float %1242, %1244
  br label %1589

; <label>:1246:                                   ; preds = %1193, %920
  %1247 = phi float [ %924, %920 ], [ %1201, %1193 ]
  %1248 = phi float [ %922, %920 ], [ %1199, %1193 ]
  %1249 = phi i32 [ 0, %920 ], [ %1197, %1193 ]
  %1250 = phi i32 [ %918, %920 ], [ %1196, %1193 ]
  %1251 = phi i32 [ %917, %920 ], [ %1195, %1193 ]
  %1252 = phi i32 [ %916, %920 ], [ %1194, %1193 ]
  %1253 = fcmp ule float %1248, %1247
  br i1 %1253, label %1524, label %1254

; <label>:1254:                                   ; preds = %1246
  %1255 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1256 = load float, float* %1255, align 4
  %1257 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1258 = load float, float* %1257, align 4
  br label %1606

; <label>:1259:                                   ; preds = %1193, %932
  %1260 = phi float [ %936, %932 ], [ %1201, %1193 ]
  %1261 = phi float [ %934, %932 ], [ %1199, %1193 ]
  %1262 = phi i32 [ 0, %932 ], [ %1197, %1193 ]
  %1263 = phi i32 [ %930, %932 ], [ %1196, %1193 ]
  %1264 = phi i32 [ %929, %932 ], [ %1195, %1193 ]
  %1265 = phi i32 [ %928, %932 ], [ %1194, %1193 ]
  %1266 = fcmp ult float %1261, %1260
  br i1 %1266, label %1524, label %1267

; <label>:1267:                                   ; preds = %1259
  %1268 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1269 = load float, float* %1268, align 4
  %1270 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1271 = load float, float* %1270, align 4
  br label %1620

; <label>:1272:                                   ; preds = %1193, %944
  %1273 = phi float [ %948, %944 ], [ %1201, %1193 ]
  %1274 = phi float [ %946, %944 ], [ %1199, %1193 ]
  %1275 = phi i32 [ 0, %944 ], [ %1197, %1193 ]
  %1276 = phi i32 [ %942, %944 ], [ %1196, %1193 ]
  %1277 = phi i32 [ %941, %944 ], [ %1195, %1193 ]
  %1278 = phi i32 [ %940, %944 ], [ %1194, %1193 ]
  %1279 = fcmp ueq float %1274, %1273
  br i1 %1279, label %1524, label %1280

; <label>:1280:                                   ; preds = %1272
  %1281 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1282 = load float, float* %1281, align 4
  %1283 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1284 = load float, float* %1283, align 4
  br label %1634

; <label>:1285:                                   ; preds = %1193
  br i1 %1202, label %1539, label %1524

; <label>:1286:                                   ; preds = %1193, %957
  %1287 = phi float [ %961, %957 ], [ %1201, %1193 ]
  %1288 = phi float [ %959, %957 ], [ %1199, %1193 ]
  %1289 = phi i32 [ 0, %957 ], [ %1197, %1193 ]
  %1290 = phi i32 [ %955, %957 ], [ %1196, %1193 ]
  %1291 = phi i32 [ %954, %957 ], [ %1195, %1193 ]
  %1292 = phi i32 [ %953, %957 ], [ %1194, %1193 ]
  %1293 = fcmp ugt float %1288, %1287
  br i1 %1293, label %1524, label %1294

; <label>:1294:                                   ; preds = %1286
  %1295 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1296 = load float, float* %1295, align 4
  %1297 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1298 = load float, float* %1297, align 4
  br label %1649

; <label>:1299:                                   ; preds = %1193, %969
  %1300 = phi float [ %973, %969 ], [ %1201, %1193 ]
  %1301 = phi float [ %971, %969 ], [ %1199, %1193 ]
  %1302 = phi i32 [ 0, %969 ], [ %1197, %1193 ]
  %1303 = phi i32 [ %967, %969 ], [ %1196, %1193 ]
  %1304 = phi i32 [ %966, %969 ], [ %1195, %1193 ]
  %1305 = phi i32 [ %965, %969 ], [ %1194, %1193 ]
  %1306 = fcmp uge float %1301, %1300
  br i1 %1306, label %1524, label %1307

; <label>:1307:                                   ; preds = %1299
  %1308 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1309 = load float, float* %1308, align 4
  %1310 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1311 = load float, float* %1310, align 4
  br label %1663

; <label>:1312:                                   ; preds = %1193, %981
  %1313 = phi float [ %985, %981 ], [ %1201, %1193 ]
  %1314 = phi float [ %983, %981 ], [ %1199, %1193 ]
  %1315 = phi i32 [ 0, %981 ], [ %1197, %1193 ]
  %1316 = phi i32 [ %979, %981 ], [ %1196, %1193 ]
  %1317 = phi i32 [ %978, %981 ], [ %1195, %1193 ]
  %1318 = phi i32 [ %977, %981 ], [ %1194, %1193 ]
  %1319 = fcmp une float %1314, %1313
  br i1 %1319, label %1524, label %1320

; <label>:1320:                                   ; preds = %1312
  %1321 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1322 = load float, float* %1321, align 4
  %1323 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1324 = load float, float* %1323, align 4
  br label %1677

; <label>:1325:                                   ; preds = %1193, %993
  %1326 = phi float [ %997, %993 ], [ %1201, %1193 ]
  %1327 = phi float [ %995, %993 ], [ %1199, %1193 ]
  %1328 = phi i32 [ 0, %993 ], [ %1197, %1193 ]
  %1329 = phi i32 [ %991, %993 ], [ %1196, %1193 ]
  %1330 = phi i32 [ %990, %993 ], [ %1195, %1193 ]
  %1331 = phi i32 [ %989, %993 ], [ %1194, %1193 ]
  %1332 = fcmp ugt float %1327, %1326
  br i1 %1332, label %1333, label %1524

; <label>:1333:                                   ; preds = %1325
  %1334 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1335 = load float, float* %1334, align 4
  %1336 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1337 = load float, float* %1336, align 4
  br label %1691

; <label>:1338:                                   ; preds = %1193, %1005
  %1339 = phi float [ %1009, %1005 ], [ %1201, %1193 ]
  %1340 = phi float [ %1007, %1005 ], [ %1199, %1193 ]
  %1341 = phi i32 [ 0, %1005 ], [ %1197, %1193 ]
  %1342 = phi i32 [ %1003, %1005 ], [ %1196, %1193 ]
  %1343 = phi i32 [ %1002, %1005 ], [ %1195, %1193 ]
  %1344 = phi i32 [ %1001, %1005 ], [ %1194, %1193 ]
  %1345 = fcmp olt float %1340, %1339
  br i1 %1345, label %1524, label %1346

; <label>:1346:                                   ; preds = %1338
  %1347 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1348 = load float, float* %1347, align 4
  %1349 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1350 = load float, float* %1349, align 4
  br label %1705

; <label>:1351:                                   ; preds = %1193, %1019
  %1352 = phi i1 [ %1024, %1019 ], [ %1203, %1193 ]
  %1353 = phi float [ %1023, %1019 ], [ %1201, %1193 ]
  %1354 = phi float [ %1021, %1019 ], [ %1199, %1193 ]
  %1355 = phi i32 [ 0, %1019 ], [ %1197, %1193 ]
  %1356 = phi i32 [ %1016, %1019 ], [ %1196, %1193 ]
  %1357 = phi i32 [ %1015, %1019 ], [ %1195, %1193 ]
  %1358 = phi i32 [ %1014, %1019 ], [ %1194, %1193 ]
  %1359 = fcmp oeq float %1354, %1353
  %1360 = and i1 %1359, %1352
  br i1 %1360, label %1524, label %1361

; <label>:1361:                                   ; preds = %1351
  %1362 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1363 = load float, float* %1362, align 4
  %1364 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1365 = load float, float* %1364, align 4
  %1366 = fcmp ord float %1363, %1365
  br label %1719

; <label>:1367:                                   ; preds = %1193, %1034
  %1368 = phi i1 [ %1039, %1034 ], [ %1203, %1193 ]
  %1369 = phi float [ %1038, %1034 ], [ %1201, %1193 ]
  %1370 = phi float [ %1036, %1034 ], [ %1199, %1193 ]
  %1371 = phi i32 [ 0, %1034 ], [ %1197, %1193 ]
  %1372 = phi i32 [ %1031, %1034 ], [ %1196, %1193 ]
  %1373 = phi i32 [ %1030, %1034 ], [ %1195, %1193 ]
  %1374 = phi i32 [ %1029, %1034 ], [ %1194, %1193 ]
  %1375 = fcmp ogt float %1370, %1369
  %1376 = and i1 %1375, %1368
  br i1 %1376, label %1524, label %1377

; <label>:1377:                                   ; preds = %1367
  %1378 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1379 = load float, float* %1378, align 4
  %1380 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1381 = load float, float* %1380, align 4
  %1382 = fcmp ord float %1379, %1381
  br label %1736

; <label>:1383:                                   ; preds = %1193, %1049
  %1384 = phi i1 [ %1054, %1049 ], [ %1203, %1193 ]
  %1385 = phi float [ %1053, %1049 ], [ %1201, %1193 ]
  %1386 = phi float [ %1051, %1049 ], [ %1199, %1193 ]
  %1387 = phi i32 [ 0, %1049 ], [ %1197, %1193 ]
  %1388 = phi i32 [ %1046, %1049 ], [ %1196, %1193 ]
  %1389 = phi i32 [ %1045, %1049 ], [ %1195, %1193 ]
  %1390 = phi i32 [ %1044, %1049 ], [ %1194, %1193 ]
  %1391 = fcmp oge float %1386, %1385
  %1392 = and i1 %1391, %1384
  br i1 %1392, label %1524, label %1393

; <label>:1393:                                   ; preds = %1383
  %1394 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1395 = load float, float* %1394, align 4
  %1396 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1397 = load float, float* %1396, align 4
  %1398 = fcmp ord float %1395, %1397
  br label %1753

; <label>:1399:                                   ; preds = %1193, %1062
  %1400 = phi float [ %1066, %1062 ], [ %1201, %1193 ]
  %1401 = phi float [ %1064, %1062 ], [ %1199, %1193 ]
  %1402 = phi i32 [ 0, %1062 ], [ %1197, %1193 ]
  %1403 = phi i32 [ %1060, %1062 ], [ %1196, %1193 ]
  %1404 = phi i32 [ %1059, %1062 ], [ %1195, %1193 ]
  %1405 = phi i32 [ %1058, %1062 ], [ %1194, %1193 ]
  %1406 = fcmp ueq float %1401, %1400
  br i1 %1406, label %1407, label %1524

; <label>:1407:                                   ; preds = %1399
  %1408 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1409 = load float, float* %1408, align 4
  %1410 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1411 = load float, float* %1410, align 4
  br label %1770

; <label>:1412:                                   ; preds = %1193, %1074
  %1413 = phi float [ %1078, %1074 ], [ %1201, %1193 ]
  %1414 = phi float [ %1076, %1074 ], [ %1199, %1193 ]
  %1415 = phi i32 [ 0, %1074 ], [ %1197, %1193 ]
  %1416 = phi i32 [ %1072, %1074 ], [ %1196, %1193 ]
  %1417 = phi i32 [ %1071, %1074 ], [ %1195, %1193 ]
  %1418 = phi i32 [ %1070, %1074 ], [ %1194, %1193 ]
  %1419 = fcmp ule float %1414, %1413
  br i1 %1419, label %1524, label %1420

; <label>:1420:                                   ; preds = %1412
  %1421 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1422 = load float, float* %1421, align 4
  %1423 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1424 = load float, float* %1423, align 4
  br label %1784

; <label>:1425:                                   ; preds = %1193, %1086
  %1426 = phi float [ %1090, %1086 ], [ %1201, %1193 ]
  %1427 = phi float [ %1088, %1086 ], [ %1199, %1193 ]
  %1428 = phi i32 [ 0, %1086 ], [ %1197, %1193 ]
  %1429 = phi i32 [ %1084, %1086 ], [ %1196, %1193 ]
  %1430 = phi i32 [ %1083, %1086 ], [ %1195, %1193 ]
  %1431 = phi i32 [ %1082, %1086 ], [ %1194, %1193 ]
  %1432 = fcmp ult float %1427, %1426
  br i1 %1432, label %1524, label %1433

; <label>:1433:                                   ; preds = %1425
  %1434 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1435 = load float, float* %1434, align 4
  %1436 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1437 = load float, float* %1436, align 4
  br label %1798

; <label>:1438:                                   ; preds = %1193, %1098
  %1439 = phi float [ %1102, %1098 ], [ %1201, %1193 ]
  %1440 = phi float [ %1100, %1098 ], [ %1199, %1193 ]
  %1441 = phi i32 [ 0, %1098 ], [ %1197, %1193 ]
  %1442 = phi i32 [ %1096, %1098 ], [ %1196, %1193 ]
  %1443 = phi i32 [ %1095, %1098 ], [ %1195, %1193 ]
  %1444 = phi i32 [ %1094, %1098 ], [ %1194, %1193 ]
  %1445 = fcmp ueq float %1440, %1439
  br i1 %1445, label %1524, label %1446

; <label>:1446:                                   ; preds = %1438
  %1447 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1448 = load float, float* %1447, align 4
  %1449 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1450 = load float, float* %1449, align 4
  br label %1812

; <label>:1451:                                   ; preds = %1193
  br i1 %1202, label %1529, label %1524

; <label>:1452:                                   ; preds = %1193, %1111
  %1453 = phi float [ %1115, %1111 ], [ %1201, %1193 ]
  %1454 = phi float [ %1113, %1111 ], [ %1199, %1193 ]
  %1455 = phi i32 [ 0, %1111 ], [ %1197, %1193 ]
  %1456 = phi i32 [ %1109, %1111 ], [ %1196, %1193 ]
  %1457 = phi i32 [ %1108, %1111 ], [ %1195, %1193 ]
  %1458 = phi i32 [ %1107, %1111 ], [ %1194, %1193 ]
  %1459 = fcmp ugt float %1454, %1453
  br i1 %1459, label %1524, label %1460

; <label>:1460:                                   ; preds = %1452
  %1461 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1462 = load float, float* %1461, align 4
  %1463 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1464 = load float, float* %1463, align 4
  br label %1827

; <label>:1465:                                   ; preds = %1193, %1123
  %1466 = phi float [ %1127, %1123 ], [ %1201, %1193 ]
  %1467 = phi float [ %1125, %1123 ], [ %1199, %1193 ]
  %1468 = phi i32 [ 0, %1123 ], [ %1197, %1193 ]
  %1469 = phi i32 [ %1121, %1123 ], [ %1196, %1193 ]
  %1470 = phi i32 [ %1120, %1123 ], [ %1195, %1193 ]
  %1471 = phi i32 [ %1119, %1123 ], [ %1194, %1193 ]
  %1472 = fcmp uge float %1467, %1466
  br i1 %1472, label %1524, label %1473

; <label>:1473:                                   ; preds = %1465
  %1474 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1475 = load float, float* %1474, align 4
  %1476 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1477 = load float, float* %1476, align 4
  br label %1841

; <label>:1478:                                   ; preds = %1193, %1135
  %1479 = phi float [ %1139, %1135 ], [ %1201, %1193 ]
  %1480 = phi float [ %1137, %1135 ], [ %1199, %1193 ]
  %1481 = phi i32 [ 0, %1135 ], [ %1197, %1193 ]
  %1482 = phi i32 [ %1133, %1135 ], [ %1196, %1193 ]
  %1483 = phi i32 [ %1132, %1135 ], [ %1195, %1193 ]
  %1484 = phi i32 [ %1131, %1135 ], [ %1194, %1193 ]
  %1485 = fcmp une float %1480, %1479
  br i1 %1485, label %1524, label %1486

; <label>:1486:                                   ; preds = %1478
  %1487 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1488 = load float, float* %1487, align 4
  %1489 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1490 = load float, float* %1489, align 4
  br label %1855

; <label>:1491:                                   ; preds = %1193, %1193
  br i1 %1202, label %1524, label %1549

; <label>:1492:                                   ; preds = %1193, %1150
  %1493 = phi i1 [ %1155, %1150 ], [ %1203, %1193 ]
  %1494 = phi float [ %1154, %1150 ], [ %1201, %1193 ]
  %1495 = phi float [ %1152, %1150 ], [ %1199, %1193 ]
  %1496 = phi i32 [ 0, %1150 ], [ %1197, %1193 ]
  %1497 = phi i32 [ %1147, %1150 ], [ %1196, %1193 ]
  %1498 = phi i32 [ %1146, %1150 ], [ %1195, %1193 ]
  %1499 = phi i32 [ %1145, %1150 ], [ %1194, %1193 ]
  %1500 = fcmp ole float %1495, %1494
  %1501 = and i1 %1500, %1493
  br i1 %1501, label %1524, label %1502

; <label>:1502:                                   ; preds = %1492
  %1503 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1504 = load float, float* %1503, align 4
  %1505 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1506 = load float, float* %1505, align 4
  %1507 = fcmp ord float %1504, %1506
  br label %1870

; <label>:1508:                                   ; preds = %1193, %1165
  %1509 = phi i1 [ %1170, %1165 ], [ %1203, %1193 ]
  %1510 = phi float [ %1169, %1165 ], [ %1201, %1193 ]
  %1511 = phi float [ %1167, %1165 ], [ %1199, %1193 ]
  %1512 = phi i32 [ 0, %1165 ], [ %1197, %1193 ]
  %1513 = phi i32 [ %1162, %1165 ], [ %1196, %1193 ]
  %1514 = phi i32 [ %1161, %1165 ], [ %1195, %1193 ]
  %1515 = phi i32 [ %1160, %1165 ], [ %1194, %1193 ]
  %1516 = fcmp olt float %1511, %1510
  %1517 = and i1 %1516, %1509
  br i1 %1517, label %1524, label %1518

; <label>:1518:                                   ; preds = %1508
  %1519 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1520 = load float, float* %1519, align 4
  %1521 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1522 = load float, float* %1521, align 4
  %1523 = fcmp ord float %1520, %1522
  br label %1887

; <label>:1524:                                   ; preds = %1508, %1492, %1491, %1478, %1465, %1452, %1451, %1438, %1425, %1412, %1399, %1383, %1367, %1351, %1338, %1325, %1312, %1299, %1286, %1285, %1272, %1259, %1246, %1230, %1217, %1204, %1193, %1193, %1184, %1175
  %1525 = phi i32 [ %1512, %1508 ], [ %1496, %1492 ], [ %1197, %1491 ], [ %1481, %1478 ], [ %1468, %1465 ], [ %1455, %1452 ], [ %1197, %1451 ], [ %1441, %1438 ], [ %1428, %1425 ], [ %1415, %1412 ], [ %1402, %1399 ], [ %1387, %1383 ], [ %1371, %1367 ], [ %1355, %1351 ], [ %1341, %1338 ], [ %1328, %1325 ], [ %1315, %1312 ], [ %1302, %1299 ], [ %1289, %1286 ], [ %1197, %1285 ], [ %1275, %1272 ], [ %1262, %1259 ], [ %1249, %1246 ], [ %1234, %1230 ], [ %1220, %1217 ], [ %1207, %1204 ], [ %1197, %1193 ], [ %1197, %1193 ], [ 0, %1184 ], [ 0, %1175 ]
  %1526 = phi i32 [ %1513, %1508 ], [ %1497, %1492 ], [ %1196, %1491 ], [ %1482, %1478 ], [ %1469, %1465 ], [ %1456, %1452 ], [ %1196, %1451 ], [ %1442, %1438 ], [ %1429, %1425 ], [ %1416, %1412 ], [ %1403, %1399 ], [ %1388, %1383 ], [ %1372, %1367 ], [ %1356, %1351 ], [ %1342, %1338 ], [ %1329, %1325 ], [ %1316, %1312 ], [ %1303, %1299 ], [ %1290, %1286 ], [ %1196, %1285 ], [ %1276, %1272 ], [ %1263, %1259 ], [ %1250, %1246 ], [ %1235, %1230 ], [ %1221, %1217 ], [ %1208, %1204 ], [ %1196, %1193 ], [ %1196, %1193 ], [ %1187, %1184 ], [ %1178, %1175 ]
  %1527 = phi i32 [ %1514, %1508 ], [ %1498, %1492 ], [ %1195, %1491 ], [ %1483, %1478 ], [ %1470, %1465 ], [ %1457, %1452 ], [ %1195, %1451 ], [ %1443, %1438 ], [ %1430, %1425 ], [ %1417, %1412 ], [ %1404, %1399 ], [ %1389, %1383 ], [ %1373, %1367 ], [ %1357, %1351 ], [ %1343, %1338 ], [ %1330, %1325 ], [ %1317, %1312 ], [ %1304, %1299 ], [ %1291, %1286 ], [ %1195, %1285 ], [ %1277, %1272 ], [ %1264, %1259 ], [ %1251, %1246 ], [ %1236, %1230 ], [ %1222, %1217 ], [ %1209, %1204 ], [ %1195, %1193 ], [ %1195, %1193 ], [ %1186, %1184 ], [ %1177, %1175 ]
  %1528 = phi i32 [ %1515, %1508 ], [ %1499, %1492 ], [ %1194, %1491 ], [ %1484, %1478 ], [ %1471, %1465 ], [ %1458, %1452 ], [ %1194, %1451 ], [ %1444, %1438 ], [ %1431, %1425 ], [ %1418, %1412 ], [ %1405, %1399 ], [ %1390, %1383 ], [ %1374, %1367 ], [ %1358, %1351 ], [ %1344, %1338 ], [ %1331, %1325 ], [ %1318, %1312 ], [ %1305, %1299 ], [ %1292, %1286 ], [ %1194, %1285 ], [ %1278, %1272 ], [ %1265, %1259 ], [ %1252, %1246 ], [ %1237, %1230 ], [ %1223, %1217 ], [ %1210, %1204 ], [ %1194, %1193 ], [ %1194, %1193 ], [ %1185, %1184 ], [ %1176, %1175 ]
  br label %1549

; <label>:1529:                                   ; preds = %1451, %1175
  %1530 = phi i32 [ 0, %1175 ], [ %1197, %1451 ]
  %1531 = phi i32 [ %1178, %1175 ], [ %1196, %1451 ]
  %1532 = phi i32 [ %1177, %1175 ], [ %1195, %1451 ]
  %1533 = phi i32 [ %1176, %1175 ], [ %1194, %1451 ]
  %1534 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1535 = load float, float* %1534, align 4
  %1536 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1537 = load float, float* %1536, align 4
  %1538 = fcmp uno float %1535, %1537
  br i1 %1538, label %1910, label %1904

; <label>:1539:                                   ; preds = %1285, %1184
  %1540 = phi i32 [ 0, %1184 ], [ %1197, %1285 ]
  %1541 = phi i32 [ %1187, %1184 ], [ %1196, %1285 ]
  %1542 = phi i32 [ %1186, %1184 ], [ %1195, %1285 ]
  %1543 = phi i32 [ %1185, %1184 ], [ %1194, %1285 ]
  %1544 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1545 = load float, float* %1544, align 4
  %1546 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1547 = load float, float* %1546, align 4
  %1548 = fcmp uno float %1545, %1547
  br i1 %1548, label %1921, label %1904

; <label>:1549:                                   ; preds = %1524, %1491, %1193, %1193
  %1550 = phi i32 [ %1525, %1524 ], [ %1197, %1491 ], [ %1197, %1193 ], [ %1197, %1193 ]
  %1551 = phi i32 [ %1526, %1524 ], [ %1196, %1491 ], [ %1196, %1193 ], [ %1196, %1193 ]
  %1552 = phi i32 [ %1527, %1524 ], [ %1195, %1491 ], [ %1195, %1193 ], [ %1195, %1193 ]
  %1553 = phi i32 [ %1528, %1524 ], [ %1194, %1491 ], [ %1194, %1193 ], [ %1194, %1193 ]
  %1554 = phi i32 [ -1, %1524 ], [ 0, %1491 ], [ 0, %1193 ], [ 0, %1193 ]
  %1555 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1556 = load float, float* %1555, align 4
  %1557 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  %1558 = load float, float* %1557, align 4
  %1559 = fcmp uno float %1556, %1558
  %1560 = xor i1 %1559, true
  switch i8 %11, label %282 [
    i8 31, label %1904
    i8 1, label %1887
    i8 2, label %1870
    i8 3, label %1869
    i8 4, label %1855
    i8 5, label %1841
    i8 6, label %1827
    i8 7, label %1826
    i8 8, label %1812
    i8 9, label %1798
    i8 10, label %1784
    i8 11, label %1932
    i8 12, label %1770
    i8 13, label %1753
    i8 14, label %1736
    i8 15, label %1904
    i8 16, label %1719
    i8 17, label %1705
    i8 18, label %1691
    i8 19, label %1869
    i8 20, label %1677
    i8 21, label %1663
    i8 22, label %1649
    i8 23, label %1648
    i8 24, label %1634
    i8 25, label %1620
    i8 26, label %1606
    i8 27, label %1932
    i8 28, label %1589
    i8 29, label %1575
    i8 30, label %1561
  ]

; <label>:1561:                                   ; preds = %1549, %1212
  %1562 = phi float [ %1216, %1212 ], [ %1558, %1549 ]
  %1563 = phi float [ %1214, %1212 ], [ %1556, %1549 ]
  %1564 = phi i32 [ 0, %1212 ], [ %1554, %1549 ]
  %1565 = phi i32 [ %1210, %1212 ], [ %1553, %1549 ]
  %1566 = phi i32 [ %1209, %1212 ], [ %1552, %1549 ]
  %1567 = phi i32 [ %1208, %1212 ], [ %1551, %1549 ]
  %1568 = phi i32 [ %1207, %1212 ], [ %1550, %1549 ]
  %1569 = fcmp ogt float %1563, %1562
  br i1 %1569, label %1904, label %1570

; <label>:1570:                                   ; preds = %1561
  %1571 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1572 = load float, float* %1571, align 4
  %1573 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1574 = load float, float* %1573, align 4
  br label %1945

; <label>:1575:                                   ; preds = %1549, %1225
  %1576 = phi float [ %1229, %1225 ], [ %1558, %1549 ]
  %1577 = phi float [ %1227, %1225 ], [ %1556, %1549 ]
  %1578 = phi i32 [ 0, %1225 ], [ %1554, %1549 ]
  %1579 = phi i32 [ %1223, %1225 ], [ %1553, %1549 ]
  %1580 = phi i32 [ %1222, %1225 ], [ %1552, %1549 ]
  %1581 = phi i32 [ %1221, %1225 ], [ %1551, %1549 ]
  %1582 = phi i32 [ %1220, %1225 ], [ %1550, %1549 ]
  %1583 = fcmp ult float %1577, %1576
  br i1 %1583, label %1584, label %1904

; <label>:1584:                                   ; preds = %1575
  %1585 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1586 = load float, float* %1585, align 4
  %1587 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1588 = load float, float* %1587, align 4
  br label %1960

; <label>:1589:                                   ; preds = %1549, %1240
  %1590 = phi i1 [ %1245, %1240 ], [ %1560, %1549 ]
  %1591 = phi float [ %1244, %1240 ], [ %1558, %1549 ]
  %1592 = phi float [ %1242, %1240 ], [ %1556, %1549 ]
  %1593 = phi i32 [ 0, %1240 ], [ %1554, %1549 ]
  %1594 = phi i32 [ %1237, %1240 ], [ %1553, %1549 ]
  %1595 = phi i32 [ %1236, %1240 ], [ %1552, %1549 ]
  %1596 = phi i32 [ %1235, %1240 ], [ %1551, %1549 ]
  %1597 = phi i32 [ %1234, %1240 ], [ %1550, %1549 ]
  %1598 = fcmp une float %1592, %1591
  %1599 = and i1 %1598, %1590
  br i1 %1599, label %1904, label %1600

; <label>:1600:                                   ; preds = %1589
  %1601 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1602 = load float, float* %1601, align 4
  %1603 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1604 = load float, float* %1603, align 4
  %1605 = fcmp ord float %1602, %1604
  br label %1975

; <label>:1606:                                   ; preds = %1549, %1254
  %1607 = phi float [ %1258, %1254 ], [ %1558, %1549 ]
  %1608 = phi float [ %1256, %1254 ], [ %1556, %1549 ]
  %1609 = phi i32 [ 0, %1254 ], [ %1554, %1549 ]
  %1610 = phi i32 [ %1252, %1254 ], [ %1553, %1549 ]
  %1611 = phi i32 [ %1251, %1254 ], [ %1552, %1549 ]
  %1612 = phi i32 [ %1250, %1254 ], [ %1551, %1549 ]
  %1613 = phi i32 [ %1249, %1254 ], [ %1550, %1549 ]
  %1614 = fcmp ule float %1608, %1607
  br i1 %1614, label %1904, label %1615

; <label>:1615:                                   ; preds = %1606
  %1616 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1617 = load float, float* %1616, align 4
  %1618 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1619 = load float, float* %1618, align 4
  br label %1993

; <label>:1620:                                   ; preds = %1549, %1267
  %1621 = phi float [ %1271, %1267 ], [ %1558, %1549 ]
  %1622 = phi float [ %1269, %1267 ], [ %1556, %1549 ]
  %1623 = phi i32 [ 0, %1267 ], [ %1554, %1549 ]
  %1624 = phi i32 [ %1265, %1267 ], [ %1553, %1549 ]
  %1625 = phi i32 [ %1264, %1267 ], [ %1552, %1549 ]
  %1626 = phi i32 [ %1263, %1267 ], [ %1551, %1549 ]
  %1627 = phi i32 [ %1262, %1267 ], [ %1550, %1549 ]
  %1628 = fcmp ult float %1622, %1621
  br i1 %1628, label %1904, label %1629

; <label>:1629:                                   ; preds = %1620
  %1630 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1631 = load float, float* %1630, align 4
  %1632 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1633 = load float, float* %1632, align 4
  br label %2008

; <label>:1634:                                   ; preds = %1549, %1280
  %1635 = phi float [ %1284, %1280 ], [ %1558, %1549 ]
  %1636 = phi float [ %1282, %1280 ], [ %1556, %1549 ]
  %1637 = phi i32 [ 0, %1280 ], [ %1554, %1549 ]
  %1638 = phi i32 [ %1278, %1280 ], [ %1553, %1549 ]
  %1639 = phi i32 [ %1277, %1280 ], [ %1552, %1549 ]
  %1640 = phi i32 [ %1276, %1280 ], [ %1551, %1549 ]
  %1641 = phi i32 [ %1275, %1280 ], [ %1550, %1549 ]
  %1642 = fcmp ueq float %1636, %1635
  br i1 %1642, label %1904, label %1643

; <label>:1643:                                   ; preds = %1634
  %1644 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1645 = load float, float* %1644, align 4
  %1646 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1647 = load float, float* %1646, align 4
  br label %2023

; <label>:1648:                                   ; preds = %1549
  br i1 %1559, label %1921, label %1904

; <label>:1649:                                   ; preds = %1549, %1294
  %1650 = phi float [ %1298, %1294 ], [ %1558, %1549 ]
  %1651 = phi float [ %1296, %1294 ], [ %1556, %1549 ]
  %1652 = phi i32 [ 0, %1294 ], [ %1554, %1549 ]
  %1653 = phi i32 [ %1292, %1294 ], [ %1553, %1549 ]
  %1654 = phi i32 [ %1291, %1294 ], [ %1552, %1549 ]
  %1655 = phi i32 [ %1290, %1294 ], [ %1551, %1549 ]
  %1656 = phi i32 [ %1289, %1294 ], [ %1550, %1549 ]
  %1657 = fcmp ugt float %1651, %1650
  br i1 %1657, label %1904, label %1658

; <label>:1658:                                   ; preds = %1649
  %1659 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1660 = load float, float* %1659, align 4
  %1661 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1662 = load float, float* %1661, align 4
  br label %2039

; <label>:1663:                                   ; preds = %1549, %1307
  %1664 = phi float [ %1311, %1307 ], [ %1558, %1549 ]
  %1665 = phi float [ %1309, %1307 ], [ %1556, %1549 ]
  %1666 = phi i32 [ 0, %1307 ], [ %1554, %1549 ]
  %1667 = phi i32 [ %1305, %1307 ], [ %1553, %1549 ]
  %1668 = phi i32 [ %1304, %1307 ], [ %1552, %1549 ]
  %1669 = phi i32 [ %1303, %1307 ], [ %1551, %1549 ]
  %1670 = phi i32 [ %1302, %1307 ], [ %1550, %1549 ]
  %1671 = fcmp uge float %1665, %1664
  br i1 %1671, label %1904, label %1672

; <label>:1672:                                   ; preds = %1663
  %1673 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1674 = load float, float* %1673, align 4
  %1675 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1676 = load float, float* %1675, align 4
  br label %2054

; <label>:1677:                                   ; preds = %1549, %1320
  %1678 = phi float [ %1324, %1320 ], [ %1558, %1549 ]
  %1679 = phi float [ %1322, %1320 ], [ %1556, %1549 ]
  %1680 = phi i32 [ 0, %1320 ], [ %1554, %1549 ]
  %1681 = phi i32 [ %1318, %1320 ], [ %1553, %1549 ]
  %1682 = phi i32 [ %1317, %1320 ], [ %1552, %1549 ]
  %1683 = phi i32 [ %1316, %1320 ], [ %1551, %1549 ]
  %1684 = phi i32 [ %1315, %1320 ], [ %1550, %1549 ]
  %1685 = fcmp une float %1679, %1678
  br i1 %1685, label %1904, label %1686

; <label>:1686:                                   ; preds = %1677
  %1687 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1688 = load float, float* %1687, align 4
  %1689 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1690 = load float, float* %1689, align 4
  br label %2069

; <label>:1691:                                   ; preds = %1549, %1333
  %1692 = phi float [ %1337, %1333 ], [ %1558, %1549 ]
  %1693 = phi float [ %1335, %1333 ], [ %1556, %1549 ]
  %1694 = phi i32 [ 0, %1333 ], [ %1554, %1549 ]
  %1695 = phi i32 [ %1331, %1333 ], [ %1553, %1549 ]
  %1696 = phi i32 [ %1330, %1333 ], [ %1552, %1549 ]
  %1697 = phi i32 [ %1329, %1333 ], [ %1551, %1549 ]
  %1698 = phi i32 [ %1328, %1333 ], [ %1550, %1549 ]
  %1699 = fcmp ugt float %1693, %1692
  br i1 %1699, label %1700, label %1904

; <label>:1700:                                   ; preds = %1691
  %1701 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1702 = load float, float* %1701, align 4
  %1703 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1704 = load float, float* %1703, align 4
  br label %2084

; <label>:1705:                                   ; preds = %1549, %1346
  %1706 = phi float [ %1350, %1346 ], [ %1558, %1549 ]
  %1707 = phi float [ %1348, %1346 ], [ %1556, %1549 ]
  %1708 = phi i32 [ 0, %1346 ], [ %1554, %1549 ]
  %1709 = phi i32 [ %1344, %1346 ], [ %1553, %1549 ]
  %1710 = phi i32 [ %1343, %1346 ], [ %1552, %1549 ]
  %1711 = phi i32 [ %1342, %1346 ], [ %1551, %1549 ]
  %1712 = phi i32 [ %1341, %1346 ], [ %1550, %1549 ]
  %1713 = fcmp olt float %1707, %1706
  br i1 %1713, label %1904, label %1714

; <label>:1714:                                   ; preds = %1705
  %1715 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1716 = load float, float* %1715, align 4
  %1717 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1718 = load float, float* %1717, align 4
  br label %2099

; <label>:1719:                                   ; preds = %1549, %1361
  %1720 = phi i1 [ %1366, %1361 ], [ %1560, %1549 ]
  %1721 = phi float [ %1365, %1361 ], [ %1558, %1549 ]
  %1722 = phi float [ %1363, %1361 ], [ %1556, %1549 ]
  %1723 = phi i32 [ 0, %1361 ], [ %1554, %1549 ]
  %1724 = phi i32 [ %1358, %1361 ], [ %1553, %1549 ]
  %1725 = phi i32 [ %1357, %1361 ], [ %1552, %1549 ]
  %1726 = phi i32 [ %1356, %1361 ], [ %1551, %1549 ]
  %1727 = phi i32 [ %1355, %1361 ], [ %1550, %1549 ]
  %1728 = fcmp oeq float %1722, %1721
  %1729 = and i1 %1728, %1720
  br i1 %1729, label %1904, label %1730

; <label>:1730:                                   ; preds = %1719
  %1731 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1732 = load float, float* %1731, align 4
  %1733 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1734 = load float, float* %1733, align 4
  %1735 = fcmp ord float %1732, %1734
  br label %2114

; <label>:1736:                                   ; preds = %1549, %1377
  %1737 = phi i1 [ %1382, %1377 ], [ %1560, %1549 ]
  %1738 = phi float [ %1381, %1377 ], [ %1558, %1549 ]
  %1739 = phi float [ %1379, %1377 ], [ %1556, %1549 ]
  %1740 = phi i32 [ 0, %1377 ], [ %1554, %1549 ]
  %1741 = phi i32 [ %1374, %1377 ], [ %1553, %1549 ]
  %1742 = phi i32 [ %1373, %1377 ], [ %1552, %1549 ]
  %1743 = phi i32 [ %1372, %1377 ], [ %1551, %1549 ]
  %1744 = phi i32 [ %1371, %1377 ], [ %1550, %1549 ]
  %1745 = fcmp ogt float %1739, %1738
  %1746 = and i1 %1745, %1737
  br i1 %1746, label %1904, label %1747

; <label>:1747:                                   ; preds = %1736
  %1748 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1749 = load float, float* %1748, align 4
  %1750 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1751 = load float, float* %1750, align 4
  %1752 = fcmp ord float %1749, %1751
  br label %2132

; <label>:1753:                                   ; preds = %1549, %1393
  %1754 = phi i1 [ %1398, %1393 ], [ %1560, %1549 ]
  %1755 = phi float [ %1397, %1393 ], [ %1558, %1549 ]
  %1756 = phi float [ %1395, %1393 ], [ %1556, %1549 ]
  %1757 = phi i32 [ 0, %1393 ], [ %1554, %1549 ]
  %1758 = phi i32 [ %1390, %1393 ], [ %1553, %1549 ]
  %1759 = phi i32 [ %1389, %1393 ], [ %1552, %1549 ]
  %1760 = phi i32 [ %1388, %1393 ], [ %1551, %1549 ]
  %1761 = phi i32 [ %1387, %1393 ], [ %1550, %1549 ]
  %1762 = fcmp oge float %1756, %1755
  %1763 = and i1 %1762, %1754
  br i1 %1763, label %1904, label %1764

; <label>:1764:                                   ; preds = %1753
  %1765 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1766 = load float, float* %1765, align 4
  %1767 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1768 = load float, float* %1767, align 4
  %1769 = fcmp ord float %1766, %1768
  br label %2150

; <label>:1770:                                   ; preds = %1549, %1407
  %1771 = phi float [ %1411, %1407 ], [ %1558, %1549 ]
  %1772 = phi float [ %1409, %1407 ], [ %1556, %1549 ]
  %1773 = phi i32 [ 0, %1407 ], [ %1554, %1549 ]
  %1774 = phi i32 [ %1405, %1407 ], [ %1553, %1549 ]
  %1775 = phi i32 [ %1404, %1407 ], [ %1552, %1549 ]
  %1776 = phi i32 [ %1403, %1407 ], [ %1551, %1549 ]
  %1777 = phi i32 [ %1402, %1407 ], [ %1550, %1549 ]
  %1778 = fcmp ueq float %1772, %1771
  br i1 %1778, label %1779, label %1904

; <label>:1779:                                   ; preds = %1770
  %1780 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1781 = load float, float* %1780, align 4
  %1782 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1783 = load float, float* %1782, align 4
  br label %2168

; <label>:1784:                                   ; preds = %1549, %1420
  %1785 = phi float [ %1424, %1420 ], [ %1558, %1549 ]
  %1786 = phi float [ %1422, %1420 ], [ %1556, %1549 ]
  %1787 = phi i32 [ 0, %1420 ], [ %1554, %1549 ]
  %1788 = phi i32 [ %1418, %1420 ], [ %1553, %1549 ]
  %1789 = phi i32 [ %1417, %1420 ], [ %1552, %1549 ]
  %1790 = phi i32 [ %1416, %1420 ], [ %1551, %1549 ]
  %1791 = phi i32 [ %1415, %1420 ], [ %1550, %1549 ]
  %1792 = fcmp ule float %1786, %1785
  br i1 %1792, label %1904, label %1793

; <label>:1793:                                   ; preds = %1784
  %1794 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1795 = load float, float* %1794, align 4
  %1796 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1797 = load float, float* %1796, align 4
  br label %2183

; <label>:1798:                                   ; preds = %1549, %1433
  %1799 = phi float [ %1437, %1433 ], [ %1558, %1549 ]
  %1800 = phi float [ %1435, %1433 ], [ %1556, %1549 ]
  %1801 = phi i32 [ 0, %1433 ], [ %1554, %1549 ]
  %1802 = phi i32 [ %1431, %1433 ], [ %1553, %1549 ]
  %1803 = phi i32 [ %1430, %1433 ], [ %1552, %1549 ]
  %1804 = phi i32 [ %1429, %1433 ], [ %1551, %1549 ]
  %1805 = phi i32 [ %1428, %1433 ], [ %1550, %1549 ]
  %1806 = fcmp ult float %1800, %1799
  br i1 %1806, label %1904, label %1807

; <label>:1807:                                   ; preds = %1798
  %1808 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1809 = load float, float* %1808, align 4
  %1810 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1811 = load float, float* %1810, align 4
  br label %2198

; <label>:1812:                                   ; preds = %1549, %1446
  %1813 = phi float [ %1450, %1446 ], [ %1558, %1549 ]
  %1814 = phi float [ %1448, %1446 ], [ %1556, %1549 ]
  %1815 = phi i32 [ 0, %1446 ], [ %1554, %1549 ]
  %1816 = phi i32 [ %1444, %1446 ], [ %1553, %1549 ]
  %1817 = phi i32 [ %1443, %1446 ], [ %1552, %1549 ]
  %1818 = phi i32 [ %1442, %1446 ], [ %1551, %1549 ]
  %1819 = phi i32 [ %1441, %1446 ], [ %1550, %1549 ]
  %1820 = fcmp ueq float %1814, %1813
  br i1 %1820, label %1904, label %1821

; <label>:1821:                                   ; preds = %1812
  %1822 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1823 = load float, float* %1822, align 4
  %1824 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1825 = load float, float* %1824, align 4
  br label %2213

; <label>:1826:                                   ; preds = %1549
  br i1 %1559, label %1910, label %1904

; <label>:1827:                                   ; preds = %1549, %1460
  %1828 = phi float [ %1464, %1460 ], [ %1558, %1549 ]
  %1829 = phi float [ %1462, %1460 ], [ %1556, %1549 ]
  %1830 = phi i32 [ 0, %1460 ], [ %1554, %1549 ]
  %1831 = phi i32 [ %1458, %1460 ], [ %1553, %1549 ]
  %1832 = phi i32 [ %1457, %1460 ], [ %1552, %1549 ]
  %1833 = phi i32 [ %1456, %1460 ], [ %1551, %1549 ]
  %1834 = phi i32 [ %1455, %1460 ], [ %1550, %1549 ]
  %1835 = fcmp ugt float %1829, %1828
  br i1 %1835, label %1904, label %1836

; <label>:1836:                                   ; preds = %1827
  %1837 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1838 = load float, float* %1837, align 4
  %1839 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1840 = load float, float* %1839, align 4
  br label %2229

; <label>:1841:                                   ; preds = %1549, %1473
  %1842 = phi float [ %1477, %1473 ], [ %1558, %1549 ]
  %1843 = phi float [ %1475, %1473 ], [ %1556, %1549 ]
  %1844 = phi i32 [ 0, %1473 ], [ %1554, %1549 ]
  %1845 = phi i32 [ %1471, %1473 ], [ %1553, %1549 ]
  %1846 = phi i32 [ %1470, %1473 ], [ %1552, %1549 ]
  %1847 = phi i32 [ %1469, %1473 ], [ %1551, %1549 ]
  %1848 = phi i32 [ %1468, %1473 ], [ %1550, %1549 ]
  %1849 = fcmp uge float %1843, %1842
  br i1 %1849, label %1904, label %1850

; <label>:1850:                                   ; preds = %1841
  %1851 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1852 = load float, float* %1851, align 4
  %1853 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1854 = load float, float* %1853, align 4
  br label %2244

; <label>:1855:                                   ; preds = %1549, %1486
  %1856 = phi float [ %1490, %1486 ], [ %1558, %1549 ]
  %1857 = phi float [ %1488, %1486 ], [ %1556, %1549 ]
  %1858 = phi i32 [ 0, %1486 ], [ %1554, %1549 ]
  %1859 = phi i32 [ %1484, %1486 ], [ %1553, %1549 ]
  %1860 = phi i32 [ %1483, %1486 ], [ %1552, %1549 ]
  %1861 = phi i32 [ %1482, %1486 ], [ %1551, %1549 ]
  %1862 = phi i32 [ %1481, %1486 ], [ %1550, %1549 ]
  %1863 = fcmp une float %1857, %1856
  br i1 %1863, label %1904, label %1864

; <label>:1864:                                   ; preds = %1855
  %1865 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1866 = load float, float* %1865, align 4
  %1867 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1868 = load float, float* %1867, align 4
  br label %2259

; <label>:1869:                                   ; preds = %1549, %1549
  br i1 %1559, label %1904, label %1932

; <label>:1870:                                   ; preds = %1549, %1502
  %1871 = phi i1 [ %1507, %1502 ], [ %1560, %1549 ]
  %1872 = phi float [ %1506, %1502 ], [ %1558, %1549 ]
  %1873 = phi float [ %1504, %1502 ], [ %1556, %1549 ]
  %1874 = phi i32 [ 0, %1502 ], [ %1554, %1549 ]
  %1875 = phi i32 [ %1499, %1502 ], [ %1553, %1549 ]
  %1876 = phi i32 [ %1498, %1502 ], [ %1552, %1549 ]
  %1877 = phi i32 [ %1497, %1502 ], [ %1551, %1549 ]
  %1878 = phi i32 [ %1496, %1502 ], [ %1550, %1549 ]
  %1879 = fcmp ole float %1873, %1872
  %1880 = and i1 %1879, %1871
  br i1 %1880, label %1904, label %1881

; <label>:1881:                                   ; preds = %1870
  %1882 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1883 = load float, float* %1882, align 4
  %1884 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1885 = load float, float* %1884, align 4
  %1886 = fcmp ord float %1883, %1885
  br label %2275

; <label>:1887:                                   ; preds = %1549, %1518
  %1888 = phi i1 [ %1523, %1518 ], [ %1560, %1549 ]
  %1889 = phi float [ %1522, %1518 ], [ %1558, %1549 ]
  %1890 = phi float [ %1520, %1518 ], [ %1556, %1549 ]
  %1891 = phi i32 [ 0, %1518 ], [ %1554, %1549 ]
  %1892 = phi i32 [ %1515, %1518 ], [ %1553, %1549 ]
  %1893 = phi i32 [ %1514, %1518 ], [ %1552, %1549 ]
  %1894 = phi i32 [ %1513, %1518 ], [ %1551, %1549 ]
  %1895 = phi i32 [ %1512, %1518 ], [ %1550, %1549 ]
  %1896 = fcmp olt float %1890, %1889
  %1897 = and i1 %1896, %1888
  br i1 %1897, label %1904, label %1898

; <label>:1898:                                   ; preds = %1887
  %1899 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1900 = load float, float* %1899, align 4
  %1901 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1902 = load float, float* %1901, align 4
  %1903 = fcmp ord float %1900, %1902
  br label %2293

; <label>:1904:                                   ; preds = %1887, %1870, %1869, %1855, %1841, %1827, %1826, %1812, %1798, %1784, %1770, %1753, %1736, %1719, %1705, %1691, %1677, %1663, %1649, %1648, %1634, %1620, %1606, %1589, %1575, %1561, %1549, %1549, %1539, %1529
  %1905 = phi i32 [ %1891, %1887 ], [ %1874, %1870 ], [ %1554, %1869 ], [ %1858, %1855 ], [ %1844, %1841 ], [ %1830, %1827 ], [ %1554, %1826 ], [ %1815, %1812 ], [ %1801, %1798 ], [ %1787, %1784 ], [ %1773, %1770 ], [ %1757, %1753 ], [ %1740, %1736 ], [ %1723, %1719 ], [ %1708, %1705 ], [ %1694, %1691 ], [ %1680, %1677 ], [ %1666, %1663 ], [ %1652, %1649 ], [ %1554, %1648 ], [ %1637, %1634 ], [ %1623, %1620 ], [ %1609, %1606 ], [ %1593, %1589 ], [ %1578, %1575 ], [ %1564, %1561 ], [ %1554, %1549 ], [ %1554, %1549 ], [ 0, %1539 ], [ 0, %1529 ]
  %1906 = phi i32 [ %1892, %1887 ], [ %1875, %1870 ], [ %1553, %1869 ], [ %1859, %1855 ], [ %1845, %1841 ], [ %1831, %1827 ], [ %1553, %1826 ], [ %1816, %1812 ], [ %1802, %1798 ], [ %1788, %1784 ], [ %1774, %1770 ], [ %1758, %1753 ], [ %1741, %1736 ], [ %1724, %1719 ], [ %1709, %1705 ], [ %1695, %1691 ], [ %1681, %1677 ], [ %1667, %1663 ], [ %1653, %1649 ], [ %1553, %1648 ], [ %1638, %1634 ], [ %1624, %1620 ], [ %1610, %1606 ], [ %1594, %1589 ], [ %1579, %1575 ], [ %1565, %1561 ], [ %1553, %1549 ], [ %1553, %1549 ], [ %1543, %1539 ], [ %1533, %1529 ]
  %1907 = phi i32 [ %1893, %1887 ], [ %1876, %1870 ], [ %1552, %1869 ], [ %1860, %1855 ], [ %1846, %1841 ], [ %1832, %1827 ], [ %1552, %1826 ], [ %1817, %1812 ], [ %1803, %1798 ], [ %1789, %1784 ], [ %1775, %1770 ], [ %1759, %1753 ], [ %1742, %1736 ], [ %1725, %1719 ], [ %1710, %1705 ], [ %1696, %1691 ], [ %1682, %1677 ], [ %1668, %1663 ], [ %1654, %1649 ], [ %1552, %1648 ], [ %1639, %1634 ], [ %1625, %1620 ], [ %1611, %1606 ], [ %1595, %1589 ], [ %1580, %1575 ], [ %1566, %1561 ], [ %1552, %1549 ], [ %1552, %1549 ], [ %1542, %1539 ], [ %1532, %1529 ]
  %1908 = phi i32 [ %1894, %1887 ], [ %1877, %1870 ], [ %1551, %1869 ], [ %1861, %1855 ], [ %1847, %1841 ], [ %1833, %1827 ], [ %1551, %1826 ], [ %1818, %1812 ], [ %1804, %1798 ], [ %1790, %1784 ], [ %1776, %1770 ], [ %1760, %1753 ], [ %1743, %1736 ], [ %1726, %1719 ], [ %1711, %1705 ], [ %1697, %1691 ], [ %1683, %1677 ], [ %1669, %1663 ], [ %1655, %1649 ], [ %1551, %1648 ], [ %1640, %1634 ], [ %1626, %1620 ], [ %1612, %1606 ], [ %1596, %1589 ], [ %1581, %1575 ], [ %1567, %1561 ], [ %1551, %1549 ], [ %1551, %1549 ], [ %1541, %1539 ], [ %1531, %1529 ]
  %1909 = phi i32 [ %1895, %1887 ], [ %1878, %1870 ], [ %1550, %1869 ], [ %1862, %1855 ], [ %1848, %1841 ], [ %1834, %1827 ], [ %1550, %1826 ], [ %1819, %1812 ], [ %1805, %1798 ], [ %1791, %1784 ], [ %1777, %1770 ], [ %1761, %1753 ], [ %1744, %1736 ], [ %1727, %1719 ], [ %1712, %1705 ], [ %1698, %1691 ], [ %1684, %1677 ], [ %1670, %1663 ], [ %1656, %1649 ], [ %1550, %1648 ], [ %1641, %1634 ], [ %1627, %1620 ], [ %1613, %1606 ], [ %1597, %1589 ], [ %1582, %1575 ], [ %1568, %1561 ], [ %1550, %1549 ], [ %1550, %1549 ], [ %1540, %1539 ], [ %1530, %1529 ]
  br label %1932

; <label>:1910:                                   ; preds = %1826, %1529
  %1911 = phi i32 [ 0, %1529 ], [ %1554, %1826 ]
  %1912 = phi i32 [ %1533, %1529 ], [ %1553, %1826 ]
  %1913 = phi i32 [ %1532, %1529 ], [ %1552, %1826 ]
  %1914 = phi i32 [ %1531, %1529 ], [ %1551, %1826 ]
  %1915 = phi i32 [ %1530, %1529 ], [ %1550, %1826 ]
  %1916 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1917 = load float, float* %1916, align 4
  %1918 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1919 = load float, float* %1918, align 4
  %1920 = fcmp uno float %1917, %1919
  br i1 %1920, label %2318, label %2311

; <label>:1921:                                   ; preds = %1648, %1539
  %1922 = phi i32 [ 0, %1539 ], [ %1554, %1648 ]
  %1923 = phi i32 [ %1543, %1539 ], [ %1553, %1648 ]
  %1924 = phi i32 [ %1542, %1539 ], [ %1552, %1648 ]
  %1925 = phi i32 [ %1541, %1539 ], [ %1551, %1648 ]
  %1926 = phi i32 [ %1540, %1539 ], [ %1550, %1648 ]
  %1927 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1928 = load float, float* %1927, align 4
  %1929 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1930 = load float, float* %1929, align 4
  %1931 = fcmp uno float %1928, %1930
  br i1 %1931, label %2330, label %2311

; <label>:1932:                                   ; preds = %1904, %1869, %1549, %1549
  %1933 = phi i32 [ %1905, %1904 ], [ %1554, %1869 ], [ %1554, %1549 ], [ %1554, %1549 ]
  %1934 = phi i32 [ %1906, %1904 ], [ %1553, %1869 ], [ %1553, %1549 ], [ %1553, %1549 ]
  %1935 = phi i32 [ %1907, %1904 ], [ %1552, %1869 ], [ %1552, %1549 ], [ %1552, %1549 ]
  %1936 = phi i32 [ %1908, %1904 ], [ %1551, %1869 ], [ %1551, %1549 ], [ %1551, %1549 ]
  %1937 = phi i32 [ %1909, %1904 ], [ %1550, %1869 ], [ %1550, %1549 ], [ %1550, %1549 ]
  %1938 = phi i32 [ -1, %1904 ], [ 0, %1869 ], [ 0, %1549 ], [ 0, %1549 ]
  %1939 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1940 = load float, float* %1939, align 4
  %1941 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  %1942 = load float, float* %1941, align 4
  %1943 = fcmp uno float %1940, %1942
  %1944 = xor i1 %1943, true
  switch i8 %11, label %282 [
    i8 31, label %2311
    i8 1, label %2293
    i8 2, label %2275
    i8 3, label %2274
    i8 4, label %2259
    i8 5, label %2244
    i8 6, label %2229
    i8 7, label %2228
    i8 8, label %2213
    i8 9, label %2198
    i8 10, label %2183
    i8 11, label %2342
    i8 12, label %2168
    i8 13, label %2150
    i8 14, label %2132
    i8 15, label %2311
    i8 16, label %2114
    i8 17, label %2099
    i8 18, label %2084
    i8 19, label %2274
    i8 20, label %2069
    i8 21, label %2054
    i8 22, label %2039
    i8 23, label %2038
    i8 24, label %2023
    i8 25, label %2008
    i8 26, label %1993
    i8 27, label %2342
    i8 28, label %1975
    i8 29, label %1960
    i8 30, label %1945
  ]

; <label>:1945:                                   ; preds = %1932, %1570
  %1946 = phi float [ %1574, %1570 ], [ %1942, %1932 ]
  %1947 = phi float [ %1572, %1570 ], [ %1940, %1932 ]
  %1948 = phi i32 [ 0, %1570 ], [ %1938, %1932 ]
  %1949 = phi i32 [ %1568, %1570 ], [ %1937, %1932 ]
  %1950 = phi i32 [ %1567, %1570 ], [ %1936, %1932 ]
  %1951 = phi i32 [ %1566, %1570 ], [ %1935, %1932 ]
  %1952 = phi i32 [ %1565, %1570 ], [ %1934, %1932 ]
  %1953 = phi i32 [ %1564, %1570 ], [ %1933, %1932 ]
  %1954 = fcmp ogt float %1947, %1946
  br i1 %1954, label %2311, label %1955

; <label>:1955:                                   ; preds = %1945
  %1956 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1957 = load float, float* %1956, align 4
  %1958 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %1959 = load float, float* %1958, align 4
  br label %2356

; <label>:1960:                                   ; preds = %1932, %1584
  %1961 = phi float [ %1588, %1584 ], [ %1942, %1932 ]
  %1962 = phi float [ %1586, %1584 ], [ %1940, %1932 ]
  %1963 = phi i32 [ 0, %1584 ], [ %1938, %1932 ]
  %1964 = phi i32 [ %1582, %1584 ], [ %1937, %1932 ]
  %1965 = phi i32 [ %1581, %1584 ], [ %1936, %1932 ]
  %1966 = phi i32 [ %1580, %1584 ], [ %1935, %1932 ]
  %1967 = phi i32 [ %1579, %1584 ], [ %1934, %1932 ]
  %1968 = phi i32 [ %1578, %1584 ], [ %1933, %1932 ]
  %1969 = fcmp ult float %1962, %1961
  br i1 %1969, label %1970, label %2311

; <label>:1970:                                   ; preds = %1960
  %1971 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1972 = load float, float* %1971, align 4
  %1973 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %1974 = load float, float* %1973, align 4
  br label %2367

; <label>:1975:                                   ; preds = %1932, %1600
  %1976 = phi i1 [ %1605, %1600 ], [ %1944, %1932 ]
  %1977 = phi float [ %1604, %1600 ], [ %1942, %1932 ]
  %1978 = phi float [ %1602, %1600 ], [ %1940, %1932 ]
  %1979 = phi i32 [ 0, %1600 ], [ %1938, %1932 ]
  %1980 = phi i32 [ %1597, %1600 ], [ %1937, %1932 ]
  %1981 = phi i32 [ %1596, %1600 ], [ %1936, %1932 ]
  %1982 = phi i32 [ %1595, %1600 ], [ %1935, %1932 ]
  %1983 = phi i32 [ %1594, %1600 ], [ %1934, %1932 ]
  %1984 = phi i32 [ %1593, %1600 ], [ %1933, %1932 ]
  %1985 = fcmp une float %1978, %1977
  %1986 = and i1 %1985, %1976
  br i1 %1986, label %2311, label %1987

; <label>:1987:                                   ; preds = %1975
  %1988 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1989 = load float, float* %1988, align 4
  %1990 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %1991 = load float, float* %1990, align 4
  %1992 = fcmp ord float %1989, %1991
  br label %2378

; <label>:1993:                                   ; preds = %1932, %1615
  %1994 = phi float [ %1619, %1615 ], [ %1942, %1932 ]
  %1995 = phi float [ %1617, %1615 ], [ %1940, %1932 ]
  %1996 = phi i32 [ 0, %1615 ], [ %1938, %1932 ]
  %1997 = phi i32 [ %1613, %1615 ], [ %1937, %1932 ]
  %1998 = phi i32 [ %1612, %1615 ], [ %1936, %1932 ]
  %1999 = phi i32 [ %1611, %1615 ], [ %1935, %1932 ]
  %2000 = phi i32 [ %1610, %1615 ], [ %1934, %1932 ]
  %2001 = phi i32 [ %1609, %1615 ], [ %1933, %1932 ]
  %2002 = fcmp ule float %1995, %1994
  br i1 %2002, label %2311, label %2003

; <label>:2003:                                   ; preds = %1993
  %2004 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2005 = load float, float* %2004, align 4
  %2006 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2007 = load float, float* %2006, align 4
  br label %2391

; <label>:2008:                                   ; preds = %1932, %1629
  %2009 = phi float [ %1633, %1629 ], [ %1942, %1932 ]
  %2010 = phi float [ %1631, %1629 ], [ %1940, %1932 ]
  %2011 = phi i32 [ 0, %1629 ], [ %1938, %1932 ]
  %2012 = phi i32 [ %1627, %1629 ], [ %1937, %1932 ]
  %2013 = phi i32 [ %1626, %1629 ], [ %1936, %1932 ]
  %2014 = phi i32 [ %1625, %1629 ], [ %1935, %1932 ]
  %2015 = phi i32 [ %1624, %1629 ], [ %1934, %1932 ]
  %2016 = phi i32 [ %1623, %1629 ], [ %1933, %1932 ]
  %2017 = fcmp ult float %2010, %2009
  br i1 %2017, label %2311, label %2018

; <label>:2018:                                   ; preds = %2008
  %2019 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2020 = load float, float* %2019, align 4
  %2021 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2022 = load float, float* %2021, align 4
  br label %2402

; <label>:2023:                                   ; preds = %1932, %1643
  %2024 = phi float [ %1647, %1643 ], [ %1942, %1932 ]
  %2025 = phi float [ %1645, %1643 ], [ %1940, %1932 ]
  %2026 = phi i32 [ 0, %1643 ], [ %1938, %1932 ]
  %2027 = phi i32 [ %1641, %1643 ], [ %1937, %1932 ]
  %2028 = phi i32 [ %1640, %1643 ], [ %1936, %1932 ]
  %2029 = phi i32 [ %1639, %1643 ], [ %1935, %1932 ]
  %2030 = phi i32 [ %1638, %1643 ], [ %1934, %1932 ]
  %2031 = phi i32 [ %1637, %1643 ], [ %1933, %1932 ]
  %2032 = fcmp ueq float %2025, %2024
  br i1 %2032, label %2311, label %2033

; <label>:2033:                                   ; preds = %2023
  %2034 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2035 = load float, float* %2034, align 4
  %2036 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2037 = load float, float* %2036, align 4
  br label %2413

; <label>:2038:                                   ; preds = %1932
  br i1 %1943, label %2330, label %2311

; <label>:2039:                                   ; preds = %1932, %1658
  %2040 = phi float [ %1662, %1658 ], [ %1942, %1932 ]
  %2041 = phi float [ %1660, %1658 ], [ %1940, %1932 ]
  %2042 = phi i32 [ 0, %1658 ], [ %1938, %1932 ]
  %2043 = phi i32 [ %1656, %1658 ], [ %1937, %1932 ]
  %2044 = phi i32 [ %1655, %1658 ], [ %1936, %1932 ]
  %2045 = phi i32 [ %1654, %1658 ], [ %1935, %1932 ]
  %2046 = phi i32 [ %1653, %1658 ], [ %1934, %1932 ]
  %2047 = phi i32 [ %1652, %1658 ], [ %1933, %1932 ]
  %2048 = fcmp ugt float %2041, %2040
  br i1 %2048, label %2311, label %2049

; <label>:2049:                                   ; preds = %2039
  %2050 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2051 = load float, float* %2050, align 4
  %2052 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2053 = load float, float* %2052, align 4
  br label %2425

; <label>:2054:                                   ; preds = %1932, %1672
  %2055 = phi float [ %1676, %1672 ], [ %1942, %1932 ]
  %2056 = phi float [ %1674, %1672 ], [ %1940, %1932 ]
  %2057 = phi i32 [ 0, %1672 ], [ %1938, %1932 ]
  %2058 = phi i32 [ %1670, %1672 ], [ %1937, %1932 ]
  %2059 = phi i32 [ %1669, %1672 ], [ %1936, %1932 ]
  %2060 = phi i32 [ %1668, %1672 ], [ %1935, %1932 ]
  %2061 = phi i32 [ %1667, %1672 ], [ %1934, %1932 ]
  %2062 = phi i32 [ %1666, %1672 ], [ %1933, %1932 ]
  %2063 = fcmp uge float %2056, %2055
  br i1 %2063, label %2311, label %2064

; <label>:2064:                                   ; preds = %2054
  %2065 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2066 = load float, float* %2065, align 4
  %2067 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2068 = load float, float* %2067, align 4
  br label %2436

; <label>:2069:                                   ; preds = %1932, %1686
  %2070 = phi float [ %1690, %1686 ], [ %1942, %1932 ]
  %2071 = phi float [ %1688, %1686 ], [ %1940, %1932 ]
  %2072 = phi i32 [ 0, %1686 ], [ %1938, %1932 ]
  %2073 = phi i32 [ %1684, %1686 ], [ %1937, %1932 ]
  %2074 = phi i32 [ %1683, %1686 ], [ %1936, %1932 ]
  %2075 = phi i32 [ %1682, %1686 ], [ %1935, %1932 ]
  %2076 = phi i32 [ %1681, %1686 ], [ %1934, %1932 ]
  %2077 = phi i32 [ %1680, %1686 ], [ %1933, %1932 ]
  %2078 = fcmp une float %2071, %2070
  br i1 %2078, label %2311, label %2079

; <label>:2079:                                   ; preds = %2069
  %2080 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2081 = load float, float* %2080, align 4
  %2082 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2083 = load float, float* %2082, align 4
  br label %2447

; <label>:2084:                                   ; preds = %1932, %1700
  %2085 = phi float [ %1704, %1700 ], [ %1942, %1932 ]
  %2086 = phi float [ %1702, %1700 ], [ %1940, %1932 ]
  %2087 = phi i32 [ 0, %1700 ], [ %1938, %1932 ]
  %2088 = phi i32 [ %1698, %1700 ], [ %1937, %1932 ]
  %2089 = phi i32 [ %1697, %1700 ], [ %1936, %1932 ]
  %2090 = phi i32 [ %1696, %1700 ], [ %1935, %1932 ]
  %2091 = phi i32 [ %1695, %1700 ], [ %1934, %1932 ]
  %2092 = phi i32 [ %1694, %1700 ], [ %1933, %1932 ]
  %2093 = fcmp ugt float %2086, %2085
  br i1 %2093, label %2094, label %2311

; <label>:2094:                                   ; preds = %2084
  %2095 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2096 = load float, float* %2095, align 4
  %2097 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2098 = load float, float* %2097, align 4
  br label %2458

; <label>:2099:                                   ; preds = %1932, %1714
  %2100 = phi float [ %1718, %1714 ], [ %1942, %1932 ]
  %2101 = phi float [ %1716, %1714 ], [ %1940, %1932 ]
  %2102 = phi i32 [ 0, %1714 ], [ %1938, %1932 ]
  %2103 = phi i32 [ %1712, %1714 ], [ %1937, %1932 ]
  %2104 = phi i32 [ %1711, %1714 ], [ %1936, %1932 ]
  %2105 = phi i32 [ %1710, %1714 ], [ %1935, %1932 ]
  %2106 = phi i32 [ %1709, %1714 ], [ %1934, %1932 ]
  %2107 = phi i32 [ %1708, %1714 ], [ %1933, %1932 ]
  %2108 = fcmp olt float %2101, %2100
  br i1 %2108, label %2311, label %2109

; <label>:2109:                                   ; preds = %2099
  %2110 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2111 = load float, float* %2110, align 4
  %2112 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2113 = load float, float* %2112, align 4
  br label %2469

; <label>:2114:                                   ; preds = %1932, %1730
  %2115 = phi i1 [ %1735, %1730 ], [ %1944, %1932 ]
  %2116 = phi float [ %1734, %1730 ], [ %1942, %1932 ]
  %2117 = phi float [ %1732, %1730 ], [ %1940, %1932 ]
  %2118 = phi i32 [ 0, %1730 ], [ %1938, %1932 ]
  %2119 = phi i32 [ %1727, %1730 ], [ %1937, %1932 ]
  %2120 = phi i32 [ %1726, %1730 ], [ %1936, %1932 ]
  %2121 = phi i32 [ %1725, %1730 ], [ %1935, %1932 ]
  %2122 = phi i32 [ %1724, %1730 ], [ %1934, %1932 ]
  %2123 = phi i32 [ %1723, %1730 ], [ %1933, %1932 ]
  %2124 = fcmp oeq float %2117, %2116
  %2125 = and i1 %2124, %2115
  br i1 %2125, label %2311, label %2126

; <label>:2126:                                   ; preds = %2114
  %2127 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2128 = load float, float* %2127, align 4
  %2129 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2130 = load float, float* %2129, align 4
  %2131 = fcmp ord float %2128, %2130
  br label %2480

; <label>:2132:                                   ; preds = %1932, %1747
  %2133 = phi i1 [ %1752, %1747 ], [ %1944, %1932 ]
  %2134 = phi float [ %1751, %1747 ], [ %1942, %1932 ]
  %2135 = phi float [ %1749, %1747 ], [ %1940, %1932 ]
  %2136 = phi i32 [ 0, %1747 ], [ %1938, %1932 ]
  %2137 = phi i32 [ %1744, %1747 ], [ %1937, %1932 ]
  %2138 = phi i32 [ %1743, %1747 ], [ %1936, %1932 ]
  %2139 = phi i32 [ %1742, %1747 ], [ %1935, %1932 ]
  %2140 = phi i32 [ %1741, %1747 ], [ %1934, %1932 ]
  %2141 = phi i32 [ %1740, %1747 ], [ %1933, %1932 ]
  %2142 = fcmp ogt float %2135, %2134
  %2143 = and i1 %2142, %2133
  br i1 %2143, label %2311, label %2144

; <label>:2144:                                   ; preds = %2132
  %2145 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2146 = load float, float* %2145, align 4
  %2147 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2148 = load float, float* %2147, align 4
  %2149 = fcmp ord float %2146, %2148
  br label %2493

; <label>:2150:                                   ; preds = %1932, %1764
  %2151 = phi i1 [ %1769, %1764 ], [ %1944, %1932 ]
  %2152 = phi float [ %1768, %1764 ], [ %1942, %1932 ]
  %2153 = phi float [ %1766, %1764 ], [ %1940, %1932 ]
  %2154 = phi i32 [ 0, %1764 ], [ %1938, %1932 ]
  %2155 = phi i32 [ %1761, %1764 ], [ %1937, %1932 ]
  %2156 = phi i32 [ %1760, %1764 ], [ %1936, %1932 ]
  %2157 = phi i32 [ %1759, %1764 ], [ %1935, %1932 ]
  %2158 = phi i32 [ %1758, %1764 ], [ %1934, %1932 ]
  %2159 = phi i32 [ %1757, %1764 ], [ %1933, %1932 ]
  %2160 = fcmp oge float %2153, %2152
  %2161 = and i1 %2160, %2151
  br i1 %2161, label %2311, label %2162

; <label>:2162:                                   ; preds = %2150
  %2163 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2164 = load float, float* %2163, align 4
  %2165 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2166 = load float, float* %2165, align 4
  %2167 = fcmp ord float %2164, %2166
  br label %2506

; <label>:2168:                                   ; preds = %1932, %1779
  %2169 = phi float [ %1783, %1779 ], [ %1942, %1932 ]
  %2170 = phi float [ %1781, %1779 ], [ %1940, %1932 ]
  %2171 = phi i32 [ 0, %1779 ], [ %1938, %1932 ]
  %2172 = phi i32 [ %1777, %1779 ], [ %1937, %1932 ]
  %2173 = phi i32 [ %1776, %1779 ], [ %1936, %1932 ]
  %2174 = phi i32 [ %1775, %1779 ], [ %1935, %1932 ]
  %2175 = phi i32 [ %1774, %1779 ], [ %1934, %1932 ]
  %2176 = phi i32 [ %1773, %1779 ], [ %1933, %1932 ]
  %2177 = fcmp ueq float %2170, %2169
  br i1 %2177, label %2178, label %2311

; <label>:2178:                                   ; preds = %2168
  %2179 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2180 = load float, float* %2179, align 4
  %2181 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2182 = load float, float* %2181, align 4
  br label %2519

; <label>:2183:                                   ; preds = %1932, %1793
  %2184 = phi float [ %1797, %1793 ], [ %1942, %1932 ]
  %2185 = phi float [ %1795, %1793 ], [ %1940, %1932 ]
  %2186 = phi i32 [ 0, %1793 ], [ %1938, %1932 ]
  %2187 = phi i32 [ %1791, %1793 ], [ %1937, %1932 ]
  %2188 = phi i32 [ %1790, %1793 ], [ %1936, %1932 ]
  %2189 = phi i32 [ %1789, %1793 ], [ %1935, %1932 ]
  %2190 = phi i32 [ %1788, %1793 ], [ %1934, %1932 ]
  %2191 = phi i32 [ %1787, %1793 ], [ %1933, %1932 ]
  %2192 = fcmp ule float %2185, %2184
  br i1 %2192, label %2311, label %2193

; <label>:2193:                                   ; preds = %2183
  %2194 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2195 = load float, float* %2194, align 4
  %2196 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2197 = load float, float* %2196, align 4
  br label %2530

; <label>:2198:                                   ; preds = %1932, %1807
  %2199 = phi float [ %1811, %1807 ], [ %1942, %1932 ]
  %2200 = phi float [ %1809, %1807 ], [ %1940, %1932 ]
  %2201 = phi i32 [ 0, %1807 ], [ %1938, %1932 ]
  %2202 = phi i32 [ %1805, %1807 ], [ %1937, %1932 ]
  %2203 = phi i32 [ %1804, %1807 ], [ %1936, %1932 ]
  %2204 = phi i32 [ %1803, %1807 ], [ %1935, %1932 ]
  %2205 = phi i32 [ %1802, %1807 ], [ %1934, %1932 ]
  %2206 = phi i32 [ %1801, %1807 ], [ %1933, %1932 ]
  %2207 = fcmp ult float %2200, %2199
  br i1 %2207, label %2311, label %2208

; <label>:2208:                                   ; preds = %2198
  %2209 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2210 = load float, float* %2209, align 4
  %2211 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2212 = load float, float* %2211, align 4
  br label %2541

; <label>:2213:                                   ; preds = %1932, %1821
  %2214 = phi float [ %1825, %1821 ], [ %1942, %1932 ]
  %2215 = phi float [ %1823, %1821 ], [ %1940, %1932 ]
  %2216 = phi i32 [ 0, %1821 ], [ %1938, %1932 ]
  %2217 = phi i32 [ %1819, %1821 ], [ %1937, %1932 ]
  %2218 = phi i32 [ %1818, %1821 ], [ %1936, %1932 ]
  %2219 = phi i32 [ %1817, %1821 ], [ %1935, %1932 ]
  %2220 = phi i32 [ %1816, %1821 ], [ %1934, %1932 ]
  %2221 = phi i32 [ %1815, %1821 ], [ %1933, %1932 ]
  %2222 = fcmp ueq float %2215, %2214
  br i1 %2222, label %2311, label %2223

; <label>:2223:                                   ; preds = %2213
  %2224 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2225 = load float, float* %2224, align 4
  %2226 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2227 = load float, float* %2226, align 4
  br label %2552

; <label>:2228:                                   ; preds = %1932
  br i1 %1943, label %2318, label %2311

; <label>:2229:                                   ; preds = %1932, %1836
  %2230 = phi float [ %1840, %1836 ], [ %1942, %1932 ]
  %2231 = phi float [ %1838, %1836 ], [ %1940, %1932 ]
  %2232 = phi i32 [ 0, %1836 ], [ %1938, %1932 ]
  %2233 = phi i32 [ %1834, %1836 ], [ %1937, %1932 ]
  %2234 = phi i32 [ %1833, %1836 ], [ %1936, %1932 ]
  %2235 = phi i32 [ %1832, %1836 ], [ %1935, %1932 ]
  %2236 = phi i32 [ %1831, %1836 ], [ %1934, %1932 ]
  %2237 = phi i32 [ %1830, %1836 ], [ %1933, %1932 ]
  %2238 = fcmp ugt float %2231, %2230
  br i1 %2238, label %2311, label %2239

; <label>:2239:                                   ; preds = %2229
  %2240 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2241 = load float, float* %2240, align 4
  %2242 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2243 = load float, float* %2242, align 4
  br label %2564

; <label>:2244:                                   ; preds = %1932, %1850
  %2245 = phi float [ %1854, %1850 ], [ %1942, %1932 ]
  %2246 = phi float [ %1852, %1850 ], [ %1940, %1932 ]
  %2247 = phi i32 [ 0, %1850 ], [ %1938, %1932 ]
  %2248 = phi i32 [ %1848, %1850 ], [ %1937, %1932 ]
  %2249 = phi i32 [ %1847, %1850 ], [ %1936, %1932 ]
  %2250 = phi i32 [ %1846, %1850 ], [ %1935, %1932 ]
  %2251 = phi i32 [ %1845, %1850 ], [ %1934, %1932 ]
  %2252 = phi i32 [ %1844, %1850 ], [ %1933, %1932 ]
  %2253 = fcmp uge float %2246, %2245
  br i1 %2253, label %2311, label %2254

; <label>:2254:                                   ; preds = %2244
  %2255 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2256 = load float, float* %2255, align 4
  %2257 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2258 = load float, float* %2257, align 4
  br label %2575

; <label>:2259:                                   ; preds = %1932, %1864
  %2260 = phi float [ %1868, %1864 ], [ %1942, %1932 ]
  %2261 = phi float [ %1866, %1864 ], [ %1940, %1932 ]
  %2262 = phi i32 [ 0, %1864 ], [ %1938, %1932 ]
  %2263 = phi i32 [ %1862, %1864 ], [ %1937, %1932 ]
  %2264 = phi i32 [ %1861, %1864 ], [ %1936, %1932 ]
  %2265 = phi i32 [ %1860, %1864 ], [ %1935, %1932 ]
  %2266 = phi i32 [ %1859, %1864 ], [ %1934, %1932 ]
  %2267 = phi i32 [ %1858, %1864 ], [ %1933, %1932 ]
  %2268 = fcmp une float %2261, %2260
  br i1 %2268, label %2311, label %2269

; <label>:2269:                                   ; preds = %2259
  %2270 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2271 = load float, float* %2270, align 4
  %2272 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2273 = load float, float* %2272, align 4
  br label %2586

; <label>:2274:                                   ; preds = %1932, %1932
  br i1 %1943, label %2311, label %2342

; <label>:2275:                                   ; preds = %1932, %1881
  %2276 = phi i1 [ %1886, %1881 ], [ %1944, %1932 ]
  %2277 = phi float [ %1885, %1881 ], [ %1942, %1932 ]
  %2278 = phi float [ %1883, %1881 ], [ %1940, %1932 ]
  %2279 = phi i32 [ 0, %1881 ], [ %1938, %1932 ]
  %2280 = phi i32 [ %1878, %1881 ], [ %1937, %1932 ]
  %2281 = phi i32 [ %1877, %1881 ], [ %1936, %1932 ]
  %2282 = phi i32 [ %1876, %1881 ], [ %1935, %1932 ]
  %2283 = phi i32 [ %1875, %1881 ], [ %1934, %1932 ]
  %2284 = phi i32 [ %1874, %1881 ], [ %1933, %1932 ]
  %2285 = fcmp ole float %2278, %2277
  %2286 = and i1 %2285, %2276
  br i1 %2286, label %2311, label %2287

; <label>:2287:                                   ; preds = %2275
  %2288 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2289 = load float, float* %2288, align 4
  %2290 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2291 = load float, float* %2290, align 4
  %2292 = fcmp ord float %2289, %2291
  br label %2598

; <label>:2293:                                   ; preds = %1932, %1898
  %2294 = phi i1 [ %1903, %1898 ], [ %1944, %1932 ]
  %2295 = phi float [ %1902, %1898 ], [ %1942, %1932 ]
  %2296 = phi float [ %1900, %1898 ], [ %1940, %1932 ]
  %2297 = phi i32 [ 0, %1898 ], [ %1938, %1932 ]
  %2298 = phi i32 [ %1895, %1898 ], [ %1937, %1932 ]
  %2299 = phi i32 [ %1894, %1898 ], [ %1936, %1932 ]
  %2300 = phi i32 [ %1893, %1898 ], [ %1935, %1932 ]
  %2301 = phi i32 [ %1892, %1898 ], [ %1934, %1932 ]
  %2302 = phi i32 [ %1891, %1898 ], [ %1933, %1932 ]
  %2303 = fcmp olt float %2296, %2295
  %2304 = and i1 %2303, %2294
  br i1 %2304, label %2311, label %2305

; <label>:2305:                                   ; preds = %2293
  %2306 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2307 = load float, float* %2306, align 4
  %2308 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2309 = load float, float* %2308, align 4
  %2310 = fcmp ord float %2307, %2309
  br label %2611

; <label>:2311:                                   ; preds = %2293, %2275, %2274, %2259, %2244, %2229, %2228, %2213, %2198, %2183, %2168, %2150, %2132, %2114, %2099, %2084, %2069, %2054, %2039, %2038, %2023, %2008, %1993, %1975, %1960, %1945, %1932, %1932, %1921, %1910
  %2312 = phi i32 [ %2297, %2293 ], [ %2279, %2275 ], [ %1938, %2274 ], [ %2262, %2259 ], [ %2247, %2244 ], [ %2232, %2229 ], [ %1938, %2228 ], [ %2216, %2213 ], [ %2201, %2198 ], [ %2186, %2183 ], [ %2171, %2168 ], [ %2154, %2150 ], [ %2136, %2132 ], [ %2118, %2114 ], [ %2102, %2099 ], [ %2087, %2084 ], [ %2072, %2069 ], [ %2057, %2054 ], [ %2042, %2039 ], [ %1938, %2038 ], [ %2026, %2023 ], [ %2011, %2008 ], [ %1996, %1993 ], [ %1979, %1975 ], [ %1963, %1960 ], [ %1948, %1945 ], [ %1938, %1932 ], [ %1938, %1932 ], [ 0, %1921 ], [ 0, %1910 ]
  %2313 = phi i32 [ %2298, %2293 ], [ %2280, %2275 ], [ %1937, %2274 ], [ %2263, %2259 ], [ %2248, %2244 ], [ %2233, %2229 ], [ %1937, %2228 ], [ %2217, %2213 ], [ %2202, %2198 ], [ %2187, %2183 ], [ %2172, %2168 ], [ %2155, %2150 ], [ %2137, %2132 ], [ %2119, %2114 ], [ %2103, %2099 ], [ %2088, %2084 ], [ %2073, %2069 ], [ %2058, %2054 ], [ %2043, %2039 ], [ %1937, %2038 ], [ %2027, %2023 ], [ %2012, %2008 ], [ %1997, %1993 ], [ %1980, %1975 ], [ %1964, %1960 ], [ %1949, %1945 ], [ %1937, %1932 ], [ %1937, %1932 ], [ %1926, %1921 ], [ %1915, %1910 ]
  %2314 = phi i32 [ %2299, %2293 ], [ %2281, %2275 ], [ %1936, %2274 ], [ %2264, %2259 ], [ %2249, %2244 ], [ %2234, %2229 ], [ %1936, %2228 ], [ %2218, %2213 ], [ %2203, %2198 ], [ %2188, %2183 ], [ %2173, %2168 ], [ %2156, %2150 ], [ %2138, %2132 ], [ %2120, %2114 ], [ %2104, %2099 ], [ %2089, %2084 ], [ %2074, %2069 ], [ %2059, %2054 ], [ %2044, %2039 ], [ %1936, %2038 ], [ %2028, %2023 ], [ %2013, %2008 ], [ %1998, %1993 ], [ %1981, %1975 ], [ %1965, %1960 ], [ %1950, %1945 ], [ %1936, %1932 ], [ %1936, %1932 ], [ %1925, %1921 ], [ %1914, %1910 ]
  %2315 = phi i32 [ %2300, %2293 ], [ %2282, %2275 ], [ %1935, %2274 ], [ %2265, %2259 ], [ %2250, %2244 ], [ %2235, %2229 ], [ %1935, %2228 ], [ %2219, %2213 ], [ %2204, %2198 ], [ %2189, %2183 ], [ %2174, %2168 ], [ %2157, %2150 ], [ %2139, %2132 ], [ %2121, %2114 ], [ %2105, %2099 ], [ %2090, %2084 ], [ %2075, %2069 ], [ %2060, %2054 ], [ %2045, %2039 ], [ %1935, %2038 ], [ %2029, %2023 ], [ %2014, %2008 ], [ %1999, %1993 ], [ %1982, %1975 ], [ %1966, %1960 ], [ %1951, %1945 ], [ %1935, %1932 ], [ %1935, %1932 ], [ %1924, %1921 ], [ %1913, %1910 ]
  %2316 = phi i32 [ %2301, %2293 ], [ %2283, %2275 ], [ %1934, %2274 ], [ %2266, %2259 ], [ %2251, %2244 ], [ %2236, %2229 ], [ %1934, %2228 ], [ %2220, %2213 ], [ %2205, %2198 ], [ %2190, %2183 ], [ %2175, %2168 ], [ %2158, %2150 ], [ %2140, %2132 ], [ %2122, %2114 ], [ %2106, %2099 ], [ %2091, %2084 ], [ %2076, %2069 ], [ %2061, %2054 ], [ %2046, %2039 ], [ %1934, %2038 ], [ %2030, %2023 ], [ %2015, %2008 ], [ %2000, %1993 ], [ %1983, %1975 ], [ %1967, %1960 ], [ %1952, %1945 ], [ %1934, %1932 ], [ %1934, %1932 ], [ %1923, %1921 ], [ %1912, %1910 ]
  %2317 = phi i32 [ %2302, %2293 ], [ %2284, %2275 ], [ %1933, %2274 ], [ %2267, %2259 ], [ %2252, %2244 ], [ %2237, %2229 ], [ %1933, %2228 ], [ %2221, %2213 ], [ %2206, %2198 ], [ %2191, %2183 ], [ %2176, %2168 ], [ %2159, %2150 ], [ %2141, %2132 ], [ %2123, %2114 ], [ %2107, %2099 ], [ %2092, %2084 ], [ %2077, %2069 ], [ %2062, %2054 ], [ %2047, %2039 ], [ %1933, %2038 ], [ %2031, %2023 ], [ %2016, %2008 ], [ %2001, %1993 ], [ %1984, %1975 ], [ %1968, %1960 ], [ %1953, %1945 ], [ %1933, %1932 ], [ %1933, %1932 ], [ %1922, %1921 ], [ %1911, %1910 ]
  br label %2342

; <label>:2318:                                   ; preds = %2228, %1910
  %2319 = phi i32 [ 0, %1910 ], [ %1938, %2228 ]
  %2320 = phi i32 [ %1915, %1910 ], [ %1937, %2228 ]
  %2321 = phi i32 [ %1914, %1910 ], [ %1936, %2228 ]
  %2322 = phi i32 [ %1913, %1910 ], [ %1935, %2228 ]
  %2323 = phi i32 [ %1912, %1910 ], [ %1934, %2228 ]
  %2324 = phi i32 [ %1911, %1910 ], [ %1933, %2228 ]
  %2325 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2326 = load float, float* %2325, align 4
  %2327 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2328 = load float, float* %2327, align 4
  %2329 = fcmp uno float %2326, %2328
  br i1 %2329, label %71, label %2624

; <label>:2330:                                   ; preds = %2038, %1921
  %2331 = phi i32 [ 0, %1921 ], [ %1938, %2038 ]
  %2332 = phi i32 [ %1926, %1921 ], [ %1937, %2038 ]
  %2333 = phi i32 [ %1925, %1921 ], [ %1936, %2038 ]
  %2334 = phi i32 [ %1924, %1921 ], [ %1935, %2038 ]
  %2335 = phi i32 [ %1923, %1921 ], [ %1934, %2038 ]
  %2336 = phi i32 [ %1922, %1921 ], [ %1933, %2038 ]
  %2337 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2338 = load float, float* %2337, align 4
  %2339 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2340 = load float, float* %2339, align 4
  %2341 = fcmp uno float %2338, %2340
  br i1 %2341, label %71, label %2624

; <label>:2342:                                   ; preds = %2311, %2274, %1932, %1932
  %2343 = phi i32 [ %2312, %2311 ], [ %1938, %2274 ], [ %1938, %1932 ], [ %1938, %1932 ]
  %2344 = phi i32 [ %2313, %2311 ], [ %1937, %2274 ], [ %1937, %1932 ], [ %1937, %1932 ]
  %2345 = phi i32 [ %2314, %2311 ], [ %1936, %2274 ], [ %1936, %1932 ], [ %1936, %1932 ]
  %2346 = phi i32 [ %2315, %2311 ], [ %1935, %2274 ], [ %1935, %1932 ], [ %1935, %1932 ]
  %2347 = phi i32 [ %2316, %2311 ], [ %1934, %2274 ], [ %1934, %1932 ], [ %1934, %1932 ]
  %2348 = phi i32 [ %2317, %2311 ], [ %1933, %2274 ], [ %1933, %1932 ], [ %1933, %1932 ]
  %2349 = phi i32 [ -1, %2311 ], [ 0, %2274 ], [ 0, %1932 ], [ 0, %1932 ]
  %2350 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %2351 = load float, float* %2350, align 4
  %2352 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  %2353 = load float, float* %2352, align 4
  %2354 = fcmp uno float %2351, %2353
  %2355 = xor i1 %2354, true
  switch i8 %11, label %282 [
    i8 31, label %2624
    i8 1, label %2611
    i8 2, label %2598
    i8 3, label %2597
    i8 4, label %2586
    i8 5, label %2575
    i8 6, label %2564
    i8 7, label %2563
    i8 8, label %2552
    i8 9, label %2541
    i8 10, label %2530
    i8 11, label %71
    i8 12, label %2519
    i8 13, label %2506
    i8 14, label %2493
    i8 15, label %2624
    i8 16, label %2480
    i8 17, label %2469
    i8 18, label %2458
    i8 19, label %2597
    i8 20, label %2447
    i8 21, label %2436
    i8 22, label %2425
    i8 23, label %2424
    i8 24, label %2413
    i8 25, label %2402
    i8 26, label %2391
    i8 27, label %71
    i8 28, label %2378
    i8 29, label %2367
    i8 30, label %2356
  ]

; <label>:2356:                                   ; preds = %2342, %1955
  %2357 = phi float [ %1959, %1955 ], [ %2353, %2342 ]
  %2358 = phi float [ %1957, %1955 ], [ %2351, %2342 ]
  %2359 = phi i32 [ 0, %1955 ], [ %2349, %2342 ]
  %2360 = phi i32 [ %1953, %1955 ], [ %2348, %2342 ]
  %2361 = phi i32 [ %1952, %1955 ], [ %2347, %2342 ]
  %2362 = phi i32 [ %1951, %1955 ], [ %2346, %2342 ]
  %2363 = phi i32 [ %1950, %1955 ], [ %2345, %2342 ]
  %2364 = phi i32 [ %1949, %1955 ], [ %2344, %2342 ]
  %2365 = phi i32 [ %1948, %1955 ], [ %2343, %2342 ]
  %2366 = fcmp ogt float %2358, %2357
  br i1 %2366, label %2624, label %71

; <label>:2367:                                   ; preds = %2342, %1970
  %2368 = phi float [ %1974, %1970 ], [ %2353, %2342 ]
  %2369 = phi float [ %1972, %1970 ], [ %2351, %2342 ]
  %2370 = phi i32 [ 0, %1970 ], [ %2349, %2342 ]
  %2371 = phi i32 [ %1968, %1970 ], [ %2348, %2342 ]
  %2372 = phi i32 [ %1967, %1970 ], [ %2347, %2342 ]
  %2373 = phi i32 [ %1966, %1970 ], [ %2346, %2342 ]
  %2374 = phi i32 [ %1965, %1970 ], [ %2345, %2342 ]
  %2375 = phi i32 [ %1964, %1970 ], [ %2344, %2342 ]
  %2376 = phi i32 [ %1963, %1970 ], [ %2343, %2342 ]
  %2377 = fcmp ult float %2369, %2368
  br i1 %2377, label %71, label %2624

; <label>:2378:                                   ; preds = %2342, %1987
  %2379 = phi i1 [ %1992, %1987 ], [ %2355, %2342 ]
  %2380 = phi float [ %1991, %1987 ], [ %2353, %2342 ]
  %2381 = phi float [ %1989, %1987 ], [ %2351, %2342 ]
  %2382 = phi i32 [ 0, %1987 ], [ %2349, %2342 ]
  %2383 = phi i32 [ %1984, %1987 ], [ %2348, %2342 ]
  %2384 = phi i32 [ %1983, %1987 ], [ %2347, %2342 ]
  %2385 = phi i32 [ %1982, %1987 ], [ %2346, %2342 ]
  %2386 = phi i32 [ %1981, %1987 ], [ %2345, %2342 ]
  %2387 = phi i32 [ %1980, %1987 ], [ %2344, %2342 ]
  %2388 = phi i32 [ %1979, %1987 ], [ %2343, %2342 ]
  %2389 = fcmp une float %2381, %2380
  %2390 = and i1 %2389, %2379
  br i1 %2390, label %2624, label %71

; <label>:2391:                                   ; preds = %2342, %2003
  %2392 = phi float [ %2007, %2003 ], [ %2353, %2342 ]
  %2393 = phi float [ %2005, %2003 ], [ %2351, %2342 ]
  %2394 = phi i32 [ 0, %2003 ], [ %2349, %2342 ]
  %2395 = phi i32 [ %2001, %2003 ], [ %2348, %2342 ]
  %2396 = phi i32 [ %2000, %2003 ], [ %2347, %2342 ]
  %2397 = phi i32 [ %1999, %2003 ], [ %2346, %2342 ]
  %2398 = phi i32 [ %1998, %2003 ], [ %2345, %2342 ]
  %2399 = phi i32 [ %1997, %2003 ], [ %2344, %2342 ]
  %2400 = phi i32 [ %1996, %2003 ], [ %2343, %2342 ]
  %2401 = fcmp ule float %2393, %2392
  br i1 %2401, label %2624, label %71

; <label>:2402:                                   ; preds = %2342, %2018
  %2403 = phi float [ %2022, %2018 ], [ %2353, %2342 ]
  %2404 = phi float [ %2020, %2018 ], [ %2351, %2342 ]
  %2405 = phi i32 [ 0, %2018 ], [ %2349, %2342 ]
  %2406 = phi i32 [ %2016, %2018 ], [ %2348, %2342 ]
  %2407 = phi i32 [ %2015, %2018 ], [ %2347, %2342 ]
  %2408 = phi i32 [ %2014, %2018 ], [ %2346, %2342 ]
  %2409 = phi i32 [ %2013, %2018 ], [ %2345, %2342 ]
  %2410 = phi i32 [ %2012, %2018 ], [ %2344, %2342 ]
  %2411 = phi i32 [ %2011, %2018 ], [ %2343, %2342 ]
  %2412 = fcmp ult float %2404, %2403
  br i1 %2412, label %2624, label %71

; <label>:2413:                                   ; preds = %2342, %2033
  %2414 = phi float [ %2037, %2033 ], [ %2353, %2342 ]
  %2415 = phi float [ %2035, %2033 ], [ %2351, %2342 ]
  %2416 = phi i32 [ 0, %2033 ], [ %2349, %2342 ]
  %2417 = phi i32 [ %2031, %2033 ], [ %2348, %2342 ]
  %2418 = phi i32 [ %2030, %2033 ], [ %2347, %2342 ]
  %2419 = phi i32 [ %2029, %2033 ], [ %2346, %2342 ]
  %2420 = phi i32 [ %2028, %2033 ], [ %2345, %2342 ]
  %2421 = phi i32 [ %2027, %2033 ], [ %2344, %2342 ]
  %2422 = phi i32 [ %2026, %2033 ], [ %2343, %2342 ]
  %2423 = fcmp ueq float %2415, %2414
  br i1 %2423, label %2624, label %71

; <label>:2424:                                   ; preds = %2342
  br i1 %2354, label %71, label %2624

; <label>:2425:                                   ; preds = %2342, %2049
  %2426 = phi float [ %2053, %2049 ], [ %2353, %2342 ]
  %2427 = phi float [ %2051, %2049 ], [ %2351, %2342 ]
  %2428 = phi i32 [ 0, %2049 ], [ %2349, %2342 ]
  %2429 = phi i32 [ %2047, %2049 ], [ %2348, %2342 ]
  %2430 = phi i32 [ %2046, %2049 ], [ %2347, %2342 ]
  %2431 = phi i32 [ %2045, %2049 ], [ %2346, %2342 ]
  %2432 = phi i32 [ %2044, %2049 ], [ %2345, %2342 ]
  %2433 = phi i32 [ %2043, %2049 ], [ %2344, %2342 ]
  %2434 = phi i32 [ %2042, %2049 ], [ %2343, %2342 ]
  %2435 = fcmp ugt float %2427, %2426
  br i1 %2435, label %2624, label %71

; <label>:2436:                                   ; preds = %2342, %2064
  %2437 = phi float [ %2068, %2064 ], [ %2353, %2342 ]
  %2438 = phi float [ %2066, %2064 ], [ %2351, %2342 ]
  %2439 = phi i32 [ 0, %2064 ], [ %2349, %2342 ]
  %2440 = phi i32 [ %2062, %2064 ], [ %2348, %2342 ]
  %2441 = phi i32 [ %2061, %2064 ], [ %2347, %2342 ]
  %2442 = phi i32 [ %2060, %2064 ], [ %2346, %2342 ]
  %2443 = phi i32 [ %2059, %2064 ], [ %2345, %2342 ]
  %2444 = phi i32 [ %2058, %2064 ], [ %2344, %2342 ]
  %2445 = phi i32 [ %2057, %2064 ], [ %2343, %2342 ]
  %2446 = fcmp uge float %2438, %2437
  br i1 %2446, label %2624, label %71

; <label>:2447:                                   ; preds = %2342, %2079
  %2448 = phi float [ %2083, %2079 ], [ %2353, %2342 ]
  %2449 = phi float [ %2081, %2079 ], [ %2351, %2342 ]
  %2450 = phi i32 [ 0, %2079 ], [ %2349, %2342 ]
  %2451 = phi i32 [ %2077, %2079 ], [ %2348, %2342 ]
  %2452 = phi i32 [ %2076, %2079 ], [ %2347, %2342 ]
  %2453 = phi i32 [ %2075, %2079 ], [ %2346, %2342 ]
  %2454 = phi i32 [ %2074, %2079 ], [ %2345, %2342 ]
  %2455 = phi i32 [ %2073, %2079 ], [ %2344, %2342 ]
  %2456 = phi i32 [ %2072, %2079 ], [ %2343, %2342 ]
  %2457 = fcmp une float %2449, %2448
  br i1 %2457, label %2624, label %71

; <label>:2458:                                   ; preds = %2342, %2094
  %2459 = phi float [ %2098, %2094 ], [ %2353, %2342 ]
  %2460 = phi float [ %2096, %2094 ], [ %2351, %2342 ]
  %2461 = phi i32 [ 0, %2094 ], [ %2349, %2342 ]
  %2462 = phi i32 [ %2092, %2094 ], [ %2348, %2342 ]
  %2463 = phi i32 [ %2091, %2094 ], [ %2347, %2342 ]
  %2464 = phi i32 [ %2090, %2094 ], [ %2346, %2342 ]
  %2465 = phi i32 [ %2089, %2094 ], [ %2345, %2342 ]
  %2466 = phi i32 [ %2088, %2094 ], [ %2344, %2342 ]
  %2467 = phi i32 [ %2087, %2094 ], [ %2343, %2342 ]
  %2468 = fcmp ugt float %2460, %2459
  br i1 %2468, label %71, label %2624

; <label>:2469:                                   ; preds = %2342, %2109
  %2470 = phi float [ %2113, %2109 ], [ %2353, %2342 ]
  %2471 = phi float [ %2111, %2109 ], [ %2351, %2342 ]
  %2472 = phi i32 [ 0, %2109 ], [ %2349, %2342 ]
  %2473 = phi i32 [ %2107, %2109 ], [ %2348, %2342 ]
  %2474 = phi i32 [ %2106, %2109 ], [ %2347, %2342 ]
  %2475 = phi i32 [ %2105, %2109 ], [ %2346, %2342 ]
  %2476 = phi i32 [ %2104, %2109 ], [ %2345, %2342 ]
  %2477 = phi i32 [ %2103, %2109 ], [ %2344, %2342 ]
  %2478 = phi i32 [ %2102, %2109 ], [ %2343, %2342 ]
  %2479 = fcmp olt float %2471, %2470
  br i1 %2479, label %2624, label %71

; <label>:2480:                                   ; preds = %2342, %2126
  %2481 = phi i1 [ %2131, %2126 ], [ %2355, %2342 ]
  %2482 = phi float [ %2130, %2126 ], [ %2353, %2342 ]
  %2483 = phi float [ %2128, %2126 ], [ %2351, %2342 ]
  %2484 = phi i32 [ 0, %2126 ], [ %2349, %2342 ]
  %2485 = phi i32 [ %2123, %2126 ], [ %2348, %2342 ]
  %2486 = phi i32 [ %2122, %2126 ], [ %2347, %2342 ]
  %2487 = phi i32 [ %2121, %2126 ], [ %2346, %2342 ]
  %2488 = phi i32 [ %2120, %2126 ], [ %2345, %2342 ]
  %2489 = phi i32 [ %2119, %2126 ], [ %2344, %2342 ]
  %2490 = phi i32 [ %2118, %2126 ], [ %2343, %2342 ]
  %2491 = fcmp oeq float %2483, %2482
  %2492 = and i1 %2491, %2481
  br i1 %2492, label %2624, label %71

; <label>:2493:                                   ; preds = %2342, %2144
  %2494 = phi i1 [ %2149, %2144 ], [ %2355, %2342 ]
  %2495 = phi float [ %2148, %2144 ], [ %2353, %2342 ]
  %2496 = phi float [ %2146, %2144 ], [ %2351, %2342 ]
  %2497 = phi i32 [ 0, %2144 ], [ %2349, %2342 ]
  %2498 = phi i32 [ %2141, %2144 ], [ %2348, %2342 ]
  %2499 = phi i32 [ %2140, %2144 ], [ %2347, %2342 ]
  %2500 = phi i32 [ %2139, %2144 ], [ %2346, %2342 ]
  %2501 = phi i32 [ %2138, %2144 ], [ %2345, %2342 ]
  %2502 = phi i32 [ %2137, %2144 ], [ %2344, %2342 ]
  %2503 = phi i32 [ %2136, %2144 ], [ %2343, %2342 ]
  %2504 = fcmp ogt float %2496, %2495
  %2505 = and i1 %2504, %2494
  br i1 %2505, label %2624, label %71

; <label>:2506:                                   ; preds = %2342, %2162
  %2507 = phi i1 [ %2167, %2162 ], [ %2355, %2342 ]
  %2508 = phi float [ %2166, %2162 ], [ %2353, %2342 ]
  %2509 = phi float [ %2164, %2162 ], [ %2351, %2342 ]
  %2510 = phi i32 [ 0, %2162 ], [ %2349, %2342 ]
  %2511 = phi i32 [ %2159, %2162 ], [ %2348, %2342 ]
  %2512 = phi i32 [ %2158, %2162 ], [ %2347, %2342 ]
  %2513 = phi i32 [ %2157, %2162 ], [ %2346, %2342 ]
  %2514 = phi i32 [ %2156, %2162 ], [ %2345, %2342 ]
  %2515 = phi i32 [ %2155, %2162 ], [ %2344, %2342 ]
  %2516 = phi i32 [ %2154, %2162 ], [ %2343, %2342 ]
  %2517 = fcmp oge float %2509, %2508
  %2518 = and i1 %2517, %2507
  br i1 %2518, label %2624, label %71

; <label>:2519:                                   ; preds = %2342, %2178
  %2520 = phi float [ %2182, %2178 ], [ %2353, %2342 ]
  %2521 = phi float [ %2180, %2178 ], [ %2351, %2342 ]
  %2522 = phi i32 [ 0, %2178 ], [ %2349, %2342 ]
  %2523 = phi i32 [ %2176, %2178 ], [ %2348, %2342 ]
  %2524 = phi i32 [ %2175, %2178 ], [ %2347, %2342 ]
  %2525 = phi i32 [ %2174, %2178 ], [ %2346, %2342 ]
  %2526 = phi i32 [ %2173, %2178 ], [ %2345, %2342 ]
  %2527 = phi i32 [ %2172, %2178 ], [ %2344, %2342 ]
  %2528 = phi i32 [ %2171, %2178 ], [ %2343, %2342 ]
  %2529 = fcmp ueq float %2521, %2520
  br i1 %2529, label %71, label %2624

; <label>:2530:                                   ; preds = %2342, %2193
  %2531 = phi float [ %2197, %2193 ], [ %2353, %2342 ]
  %2532 = phi float [ %2195, %2193 ], [ %2351, %2342 ]
  %2533 = phi i32 [ 0, %2193 ], [ %2349, %2342 ]
  %2534 = phi i32 [ %2191, %2193 ], [ %2348, %2342 ]
  %2535 = phi i32 [ %2190, %2193 ], [ %2347, %2342 ]
  %2536 = phi i32 [ %2189, %2193 ], [ %2346, %2342 ]
  %2537 = phi i32 [ %2188, %2193 ], [ %2345, %2342 ]
  %2538 = phi i32 [ %2187, %2193 ], [ %2344, %2342 ]
  %2539 = phi i32 [ %2186, %2193 ], [ %2343, %2342 ]
  %2540 = fcmp ule float %2532, %2531
  br i1 %2540, label %2624, label %71

; <label>:2541:                                   ; preds = %2342, %2208
  %2542 = phi float [ %2212, %2208 ], [ %2353, %2342 ]
  %2543 = phi float [ %2210, %2208 ], [ %2351, %2342 ]
  %2544 = phi i32 [ 0, %2208 ], [ %2349, %2342 ]
  %2545 = phi i32 [ %2206, %2208 ], [ %2348, %2342 ]
  %2546 = phi i32 [ %2205, %2208 ], [ %2347, %2342 ]
  %2547 = phi i32 [ %2204, %2208 ], [ %2346, %2342 ]
  %2548 = phi i32 [ %2203, %2208 ], [ %2345, %2342 ]
  %2549 = phi i32 [ %2202, %2208 ], [ %2344, %2342 ]
  %2550 = phi i32 [ %2201, %2208 ], [ %2343, %2342 ]
  %2551 = fcmp ult float %2543, %2542
  br i1 %2551, label %2624, label %71

; <label>:2552:                                   ; preds = %2342, %2223
  %2553 = phi float [ %2227, %2223 ], [ %2353, %2342 ]
  %2554 = phi float [ %2225, %2223 ], [ %2351, %2342 ]
  %2555 = phi i32 [ 0, %2223 ], [ %2349, %2342 ]
  %2556 = phi i32 [ %2221, %2223 ], [ %2348, %2342 ]
  %2557 = phi i32 [ %2220, %2223 ], [ %2347, %2342 ]
  %2558 = phi i32 [ %2219, %2223 ], [ %2346, %2342 ]
  %2559 = phi i32 [ %2218, %2223 ], [ %2345, %2342 ]
  %2560 = phi i32 [ %2217, %2223 ], [ %2344, %2342 ]
  %2561 = phi i32 [ %2216, %2223 ], [ %2343, %2342 ]
  %2562 = fcmp ueq float %2554, %2553
  br i1 %2562, label %2624, label %71

; <label>:2563:                                   ; preds = %2342
  br i1 %2354, label %71, label %2624

; <label>:2564:                                   ; preds = %2342, %2239
  %2565 = phi float [ %2243, %2239 ], [ %2353, %2342 ]
  %2566 = phi float [ %2241, %2239 ], [ %2351, %2342 ]
  %2567 = phi i32 [ 0, %2239 ], [ %2349, %2342 ]
  %2568 = phi i32 [ %2237, %2239 ], [ %2348, %2342 ]
  %2569 = phi i32 [ %2236, %2239 ], [ %2347, %2342 ]
  %2570 = phi i32 [ %2235, %2239 ], [ %2346, %2342 ]
  %2571 = phi i32 [ %2234, %2239 ], [ %2345, %2342 ]
  %2572 = phi i32 [ %2233, %2239 ], [ %2344, %2342 ]
  %2573 = phi i32 [ %2232, %2239 ], [ %2343, %2342 ]
  %2574 = fcmp ugt float %2566, %2565
  br i1 %2574, label %2624, label %71

; <label>:2575:                                   ; preds = %2342, %2254
  %2576 = phi float [ %2258, %2254 ], [ %2353, %2342 ]
  %2577 = phi float [ %2256, %2254 ], [ %2351, %2342 ]
  %2578 = phi i32 [ 0, %2254 ], [ %2349, %2342 ]
  %2579 = phi i32 [ %2252, %2254 ], [ %2348, %2342 ]
  %2580 = phi i32 [ %2251, %2254 ], [ %2347, %2342 ]
  %2581 = phi i32 [ %2250, %2254 ], [ %2346, %2342 ]
  %2582 = phi i32 [ %2249, %2254 ], [ %2345, %2342 ]
  %2583 = phi i32 [ %2248, %2254 ], [ %2344, %2342 ]
  %2584 = phi i32 [ %2247, %2254 ], [ %2343, %2342 ]
  %2585 = fcmp uge float %2577, %2576
  br i1 %2585, label %2624, label %71

; <label>:2586:                                   ; preds = %2342, %2269
  %2587 = phi float [ %2273, %2269 ], [ %2353, %2342 ]
  %2588 = phi float [ %2271, %2269 ], [ %2351, %2342 ]
  %2589 = phi i32 [ 0, %2269 ], [ %2349, %2342 ]
  %2590 = phi i32 [ %2267, %2269 ], [ %2348, %2342 ]
  %2591 = phi i32 [ %2266, %2269 ], [ %2347, %2342 ]
  %2592 = phi i32 [ %2265, %2269 ], [ %2346, %2342 ]
  %2593 = phi i32 [ %2264, %2269 ], [ %2345, %2342 ]
  %2594 = phi i32 [ %2263, %2269 ], [ %2344, %2342 ]
  %2595 = phi i32 [ %2262, %2269 ], [ %2343, %2342 ]
  %2596 = fcmp une float %2588, %2587
  br i1 %2596, label %2624, label %71

; <label>:2597:                                   ; preds = %2342, %2342
  br i1 %2354, label %2624, label %71

; <label>:2598:                                   ; preds = %2342, %2287
  %2599 = phi i1 [ %2292, %2287 ], [ %2355, %2342 ]
  %2600 = phi float [ %2291, %2287 ], [ %2353, %2342 ]
  %2601 = phi float [ %2289, %2287 ], [ %2351, %2342 ]
  %2602 = phi i32 [ 0, %2287 ], [ %2349, %2342 ]
  %2603 = phi i32 [ %2284, %2287 ], [ %2348, %2342 ]
  %2604 = phi i32 [ %2283, %2287 ], [ %2347, %2342 ]
  %2605 = phi i32 [ %2282, %2287 ], [ %2346, %2342 ]
  %2606 = phi i32 [ %2281, %2287 ], [ %2345, %2342 ]
  %2607 = phi i32 [ %2280, %2287 ], [ %2344, %2342 ]
  %2608 = phi i32 [ %2279, %2287 ], [ %2343, %2342 ]
  %2609 = fcmp ole float %2601, %2600
  %2610 = and i1 %2609, %2599
  br i1 %2610, label %2624, label %71

; <label>:2611:                                   ; preds = %2342, %2305
  %2612 = phi i1 [ %2310, %2305 ], [ %2355, %2342 ]
  %2613 = phi float [ %2309, %2305 ], [ %2353, %2342 ]
  %2614 = phi float [ %2307, %2305 ], [ %2351, %2342 ]
  %2615 = phi i32 [ 0, %2305 ], [ %2349, %2342 ]
  %2616 = phi i32 [ %2302, %2305 ], [ %2348, %2342 ]
  %2617 = phi i32 [ %2301, %2305 ], [ %2347, %2342 ]
  %2618 = phi i32 [ %2300, %2305 ], [ %2346, %2342 ]
  %2619 = phi i32 [ %2299, %2305 ], [ %2345, %2342 ]
  %2620 = phi i32 [ %2298, %2305 ], [ %2344, %2342 ]
  %2621 = phi i32 [ %2297, %2305 ], [ %2343, %2342 ]
  %2622 = fcmp olt float %2614, %2613
  %2623 = and i1 %2622, %2612
  br i1 %2623, label %2624, label %71

; <label>:2624:                                   ; preds = %2611, %2598, %2597, %2586, %2575, %2564, %2563, %2552, %2541, %2530, %2519, %2506, %2493, %2480, %2469, %2458, %2447, %2436, %2425, %2424, %2413, %2402, %2391, %2378, %2367, %2356, %2342, %2342, %2330, %2318
  %2625 = phi i32 [ %2615, %2611 ], [ %2602, %2598 ], [ %2349, %2597 ], [ %2589, %2586 ], [ %2578, %2575 ], [ %2567, %2564 ], [ %2349, %2563 ], [ %2555, %2552 ], [ %2544, %2541 ], [ %2533, %2530 ], [ %2522, %2519 ], [ %2510, %2506 ], [ %2497, %2493 ], [ %2484, %2480 ], [ %2472, %2469 ], [ %2461, %2458 ], [ %2450, %2447 ], [ %2439, %2436 ], [ %2428, %2425 ], [ %2349, %2424 ], [ %2416, %2413 ], [ %2405, %2402 ], [ %2394, %2391 ], [ %2382, %2378 ], [ %2370, %2367 ], [ %2359, %2356 ], [ %2349, %2342 ], [ %2349, %2342 ], [ 0, %2330 ], [ 0, %2318 ]
  %2626 = phi i32 [ %2616, %2611 ], [ %2603, %2598 ], [ %2348, %2597 ], [ %2590, %2586 ], [ %2579, %2575 ], [ %2568, %2564 ], [ %2348, %2563 ], [ %2556, %2552 ], [ %2545, %2541 ], [ %2534, %2530 ], [ %2523, %2519 ], [ %2511, %2506 ], [ %2498, %2493 ], [ %2485, %2480 ], [ %2473, %2469 ], [ %2462, %2458 ], [ %2451, %2447 ], [ %2440, %2436 ], [ %2429, %2425 ], [ %2348, %2424 ], [ %2417, %2413 ], [ %2406, %2402 ], [ %2395, %2391 ], [ %2383, %2378 ], [ %2371, %2367 ], [ %2360, %2356 ], [ %2348, %2342 ], [ %2348, %2342 ], [ %2336, %2330 ], [ %2324, %2318 ]
  %2627 = phi i32 [ %2617, %2611 ], [ %2604, %2598 ], [ %2347, %2597 ], [ %2591, %2586 ], [ %2580, %2575 ], [ %2569, %2564 ], [ %2347, %2563 ], [ %2557, %2552 ], [ %2546, %2541 ], [ %2535, %2530 ], [ %2524, %2519 ], [ %2512, %2506 ], [ %2499, %2493 ], [ %2486, %2480 ], [ %2474, %2469 ], [ %2463, %2458 ], [ %2452, %2447 ], [ %2441, %2436 ], [ %2430, %2425 ], [ %2347, %2424 ], [ %2418, %2413 ], [ %2407, %2402 ], [ %2396, %2391 ], [ %2384, %2378 ], [ %2372, %2367 ], [ %2361, %2356 ], [ %2347, %2342 ], [ %2347, %2342 ], [ %2335, %2330 ], [ %2323, %2318 ]
  %2628 = phi i32 [ %2618, %2611 ], [ %2605, %2598 ], [ %2346, %2597 ], [ %2592, %2586 ], [ %2581, %2575 ], [ %2570, %2564 ], [ %2346, %2563 ], [ %2558, %2552 ], [ %2547, %2541 ], [ %2536, %2530 ], [ %2525, %2519 ], [ %2513, %2506 ], [ %2500, %2493 ], [ %2487, %2480 ], [ %2475, %2469 ], [ %2464, %2458 ], [ %2453, %2447 ], [ %2442, %2436 ], [ %2431, %2425 ], [ %2346, %2424 ], [ %2419, %2413 ], [ %2408, %2402 ], [ %2397, %2391 ], [ %2385, %2378 ], [ %2373, %2367 ], [ %2362, %2356 ], [ %2346, %2342 ], [ %2346, %2342 ], [ %2334, %2330 ], [ %2322, %2318 ]
  %2629 = phi i32 [ %2619, %2611 ], [ %2606, %2598 ], [ %2345, %2597 ], [ %2593, %2586 ], [ %2582, %2575 ], [ %2571, %2564 ], [ %2345, %2563 ], [ %2559, %2552 ], [ %2548, %2541 ], [ %2537, %2530 ], [ %2526, %2519 ], [ %2514, %2506 ], [ %2501, %2493 ], [ %2488, %2480 ], [ %2476, %2469 ], [ %2465, %2458 ], [ %2454, %2447 ], [ %2443, %2436 ], [ %2432, %2425 ], [ %2345, %2424 ], [ %2420, %2413 ], [ %2409, %2402 ], [ %2398, %2391 ], [ %2386, %2378 ], [ %2374, %2367 ], [ %2363, %2356 ], [ %2345, %2342 ], [ %2345, %2342 ], [ %2333, %2330 ], [ %2321, %2318 ]
  %2630 = phi i32 [ %2620, %2611 ], [ %2607, %2598 ], [ %2344, %2597 ], [ %2594, %2586 ], [ %2583, %2575 ], [ %2572, %2564 ], [ %2344, %2563 ], [ %2560, %2552 ], [ %2549, %2541 ], [ %2538, %2530 ], [ %2527, %2519 ], [ %2515, %2506 ], [ %2502, %2493 ], [ %2489, %2480 ], [ %2477, %2469 ], [ %2466, %2458 ], [ %2455, %2447 ], [ %2444, %2436 ], [ %2433, %2425 ], [ %2344, %2424 ], [ %2421, %2413 ], [ %2410, %2402 ], [ %2399, %2391 ], [ %2387, %2378 ], [ %2375, %2367 ], [ %2364, %2356 ], [ %2344, %2342 ], [ %2344, %2342 ], [ %2332, %2330 ], [ %2320, %2318 ]
  %2631 = phi i32 [ %2621, %2611 ], [ %2608, %2598 ], [ %2343, %2597 ], [ %2595, %2586 ], [ %2584, %2575 ], [ %2573, %2564 ], [ %2343, %2563 ], [ %2561, %2552 ], [ %2550, %2541 ], [ %2539, %2530 ], [ %2528, %2519 ], [ %2516, %2506 ], [ %2503, %2493 ], [ %2490, %2480 ], [ %2478, %2469 ], [ %2467, %2458 ], [ %2456, %2447 ], [ %2445, %2436 ], [ %2434, %2425 ], [ %2343, %2424 ], [ %2422, %2413 ], [ %2411, %2402 ], [ %2400, %2391 ], [ %2388, %2378 ], [ %2376, %2367 ], [ %2365, %2356 ], [ %2343, %2342 ], [ %2343, %2342 ], [ %2331, %2330 ], [ %2319, %2318 ]
  br label %71
}

define %struct.Memory* @routine_vcmpps_ymm_ymm_ymm_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %9 to %"class.std::bitset"*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %11 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %10, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %11 to %"class.std::bitset"*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %14 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPSI3VnWI8vec256_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %12, i8* %13, i8* %14, i64 10)
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 1
  store i64 %19, i64* %PC
  ret %struct.Memory* %17
}

define i32 @main() {
entry:
  %state = alloca %struct.State
  %mem = alloca %struct.Memory
  %addr1 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 1, i32 0, i32 0
  %addr2 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 3, i32 0, i32 0
  %addr3 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 5, i32 0, i32 0
  %addr4 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 7, i32 0, i32 0
  %addr5 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 9, i32 0, i32 0
  %addr6 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 11, i32 0, i32 0
  %addr7 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 13, i32 0, i32 0
  %addr8 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 15, i32 0, i32 0
  %addr9 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 100, i64* %addr1, align 8
  store i64 200, i64* %addr2, align 8
  store i64 300, i64* %addr3, align 8
  store i64 400, i64* %addr4, align 8
  store i64 500, i64* %addr5, align 8
  store i64 600, i64* %addr6, align 8
  store i64 700, i64* %addr7, align 8
  store i64 800, i64* %addr8, align 8
  store i64 900, i64* %addr9, align 8
  %call = call %struct.Memory* @routine_vcmpps_ymm_ymm_ymm_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}