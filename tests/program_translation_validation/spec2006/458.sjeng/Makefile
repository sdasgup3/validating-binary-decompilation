.PHONY: binary objdump mcsema  calc_attackers is_attacked nk_attacked init_book choose_book_move ProcessHoldings text_to_piece SwitchColor SwitchPromoted addHolding removeHolding DropaddHolding DropremoveHolding printHolding is_draw storeECache checkECache reset_ecache alloc_ecache free_ecache setup_epd_line check_solution run_epd_testsuite run_autotest initialize_eval eval losers_eval l_pawn_mobility l_rook_mobility l_bishop_mobility l_knight_mobility l_king_mobility check_legal gen push_pawn push_pawn_simple push_knighT push_slidE push_king push_king_castle try_drop add_move add_capture in_check f_in_check extended_in_check make unmake check_phase King Queen rook_mobility bishop_mobility Rook Bishop Knight Pawn ErrorIt std_eval ResetHandValue BegForPartner GreetPartner HandlePartner HandlePtell CheckBadFlow Xmalloc Xfree freenodes pn_eval suicide_pn_eval losers_pn_eval std_pn_eval select_most_proving set_proof_and_disproof_numbers develop_node update_ancestors pn2_eval proofnumberscan proofnumbersearch proofnumbercheck read_rcfile order_moves perft qsearch remove_one search search_root think tree setup_attackers findlowest see suicide_eval suicide_mid_eval s_pawn_mobility black_saccers white_saccers s_rook_mobility s_bishop_mobility s_knight_mobility s_king_mobility main clear_tt clear_dp_tt initialize_zobrist initialize_hash QStoreTT StoreTT LearnStoreTT ProbeTT QProbeTT alloc_hash free_hash allocate_time comp_to_san comp_to_coord display_board init_game reset_piece_square is_move perft_debug rinput verify_coord hash_extract_pv stringize_pv post_thinking rtime rdifftime post_fail_thinking post_fh_thinking post_fl_thinking post_stat_thinking print_move rdelay check_piece_square start_up toggle_bool tree_debug interrupt PutPiece reset_board seedMT reloadMT randomMT

ifndef BIN_OPT
  BIN_OPT=O0
  INDIR=binary/
else
  ifeq (${BIN_OPT},O0)
    INDIR=binary/
  else
    INDIR=binary_${BIN_OPT}/
  endif
endif


all: binary objdump mcsema  calc_attackers is_attacked nk_attacked init_book choose_book_move ProcessHoldings text_to_piece SwitchColor SwitchPromoted addHolding removeHolding DropaddHolding DropremoveHolding printHolding is_draw storeECache checkECache reset_ecache alloc_ecache free_ecache setup_epd_line check_solution run_epd_testsuite run_autotest initialize_eval eval losers_eval l_pawn_mobility l_rook_mobility l_bishop_mobility l_knight_mobility l_king_mobility check_legal gen push_pawn push_pawn_simple push_knighT push_slidE push_king push_king_castle try_drop add_move add_capture in_check f_in_check extended_in_check make unmake check_phase King Queen rook_mobility bishop_mobility Rook Bishop Knight Pawn ErrorIt std_eval ResetHandValue BegForPartner GreetPartner HandlePartner HandlePtell CheckBadFlow Xmalloc Xfree freenodes pn_eval suicide_pn_eval losers_pn_eval std_pn_eval select_most_proving set_proof_and_disproof_numbers develop_node update_ancestors pn2_eval proofnumberscan proofnumbersearch proofnumbercheck read_rcfile order_moves perft qsearch remove_one search search_root think tree setup_attackers findlowest see suicide_eval suicide_mid_eval s_pawn_mobility black_saccers white_saccers s_rook_mobility s_bishop_mobility s_knight_mobility s_king_mobility main clear_tt clear_dp_tt initialize_zobrist initialize_hash QStoreTT StoreTT LearnStoreTT ProbeTT QProbeTT alloc_hash free_hash allocate_time comp_to_san comp_to_coord display_board init_game reset_piece_square is_move perft_debug rinput verify_coord hash_extract_pv stringize_pv post_thinking rtime rdifftime post_fail_thinking post_fh_thinking post_fl_thinking post_stat_thinking print_move rdelay check_piece_square start_up toggle_bool tree_debug interrupt PutPiece reset_board seedMT reloadMT randomMT
compd: calc_attackers is_attacked nk_attacked init_book choose_book_move ProcessHoldings text_to_piece SwitchColor SwitchPromoted addHolding removeHolding DropaddHolding DropremoveHolding printHolding is_draw storeECache checkECache reset_ecache alloc_ecache free_ecache setup_epd_line check_solution run_epd_testsuite run_autotest initialize_eval eval losers_eval l_pawn_mobility l_rook_mobility l_bishop_mobility l_knight_mobility l_king_mobility check_legal gen push_pawn push_pawn_simple push_knighT push_slidE push_king push_king_castle try_drop add_move add_capture in_check f_in_check extended_in_check make unmake check_phase King Queen rook_mobility bishop_mobility Rook Bishop Knight Pawn ErrorIt std_eval ResetHandValue BegForPartner GreetPartner HandlePartner HandlePtell CheckBadFlow Xmalloc Xfree freenodes pn_eval suicide_pn_eval losers_pn_eval std_pn_eval select_most_proving set_proof_and_disproof_numbers develop_node update_ancestors pn2_eval proofnumberscan proofnumbersearch proofnumbercheck read_rcfile order_moves perft qsearch remove_one search search_root think tree setup_attackers findlowest see suicide_eval suicide_mid_eval s_pawn_mobility black_saccers white_saccers s_rook_mobility s_bishop_mobility s_knight_mobility s_king_mobility main clear_tt clear_dp_tt initialize_zobrist initialize_hash QStoreTT StoreTT LearnStoreTT ProbeTT QProbeTT alloc_hash free_hash allocate_time comp_to_san comp_to_coord display_board init_game reset_piece_square is_move perft_debug rinput verify_coord hash_extract_pv stringize_pv post_thinking rtime rdifftime post_fail_thinking post_fh_thinking post_fl_thinking post_stat_thinking print_move rdelay check_piece_square start_up toggle_bool tree_debug interrupt PutPiece reset_board seedMT reloadMT randomMT
compd_opt: calc_attackers is_attacked nk_attacked init_book choose_book_move ProcessHoldings text_to_piece SwitchColor SwitchPromoted addHolding removeHolding DropaddHolding DropremoveHolding printHolding is_draw storeECache checkECache reset_ecache alloc_ecache free_ecache setup_epd_line check_solution run_epd_testsuite run_autotest initialize_eval eval losers_eval l_pawn_mobility l_rook_mobility l_bishop_mobility l_knight_mobility l_king_mobility check_legal gen push_pawn push_pawn_simple push_knighT push_slidE push_king push_king_castle try_drop add_move add_capture in_check f_in_check extended_in_check make unmake check_phase King Queen rook_mobility bishop_mobility Rook Bishop Knight Pawn ErrorIt std_eval ResetHandValue BegForPartner GreetPartner HandlePartner HandlePtell CheckBadFlow Xmalloc Xfree freenodes pn_eval suicide_pn_eval losers_pn_eval std_pn_eval select_most_proving set_proof_and_disproof_numbers develop_node update_ancestors pn2_eval proofnumberscan proofnumbersearch proofnumbercheck read_rcfile order_moves perft qsearch remove_one search search_root think tree setup_attackers findlowest see suicide_eval suicide_mid_eval s_pawn_mobility black_saccers white_saccers s_rook_mobility s_bishop_mobility s_knight_mobility s_king_mobility main clear_tt clear_dp_tt initialize_zobrist initialize_hash QStoreTT StoreTT LearnStoreTT ProbeTT QProbeTT alloc_hash free_hash allocate_time comp_to_san comp_to_coord display_board init_game reset_piece_square is_move perft_debug rinput verify_coord hash_extract_pv stringize_pv post_thinking rtime rdifftime post_fail_thinking post_fh_thinking post_fl_thinking post_stat_thinking print_move rdelay check_piece_square start_up toggle_bool tree_debug interrupt PutPiece reset_board seedMT reloadMT randomMT
match: calc_attackers is_attacked nk_attacked init_book choose_book_move ProcessHoldings text_to_piece SwitchColor SwitchPromoted addHolding removeHolding DropaddHolding DropremoveHolding printHolding is_draw storeECache checkECache reset_ecache alloc_ecache free_ecache setup_epd_line check_solution run_epd_testsuite run_autotest initialize_eval eval losers_eval l_pawn_mobility l_rook_mobility l_bishop_mobility l_knight_mobility l_king_mobility check_legal gen push_pawn push_pawn_simple push_knighT push_slidE push_king push_king_castle try_drop add_move add_capture in_check f_in_check extended_in_check make unmake check_phase King Queen rook_mobility bishop_mobility Rook Bishop Knight Pawn ErrorIt std_eval ResetHandValue BegForPartner GreetPartner HandlePartner HandlePtell CheckBadFlow Xmalloc Xfree freenodes pn_eval suicide_pn_eval losers_pn_eval std_pn_eval select_most_proving set_proof_and_disproof_numbers develop_node update_ancestors pn2_eval proofnumberscan proofnumbersearch proofnumbercheck read_rcfile order_moves perft qsearch remove_one search search_root think tree setup_attackers findlowest see suicide_eval suicide_mid_eval s_pawn_mobility black_saccers white_saccers s_rook_mobility s_bishop_mobility s_knight_mobility s_king_mobility main clear_tt clear_dp_tt initialize_zobrist initialize_hash QStoreTT StoreTT LearnStoreTT ProbeTT QProbeTT alloc_hash free_hash allocate_time comp_to_san comp_to_coord display_board init_game reset_piece_square is_move perft_debug rinput verify_coord hash_extract_pv stringize_pv post_thinking rtime rdifftime post_fail_thinking post_fh_thinking post_fl_thinking post_stat_thinking print_move rdelay check_piece_square start_up toggle_bool tree_debug interrupt PutPiece reset_board seedMT reloadMT randomMT

binary:
	mkdir -p ${INDIR}
	/usr/bin/clang-6.0 -${BIN_OPT} -lm -lpthread src/test.ll -o ${INDIR}test

reloc_binary:
	/usr/bin/clang-6.0 -Wl,-emit-relocs -${BIN_OPT} -lm -lpthread src/test.ll -o ${INDIR}test.reloc

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll
	../../../scripts/remove_definitions.pl --file ${INDIR}test.mcsema.ll --out ${INDIR}test.mcsema.calls_renamed.ll
	opt -S  -inline   ${INDIR}test.mcsema.calls_renamed.ll -o ${INDIR}test.mcsema.inline.ll


calc_attackers:
	@echo
	${MAKE} -C calc_attackers $(MAKECMDGOALS)
is_attacked:
	@echo
	${MAKE} -C is_attacked $(MAKECMDGOALS)
nk_attacked:
	@echo
	${MAKE} -C nk_attacked $(MAKECMDGOALS)
init_book:
	@echo
	${MAKE} -C init_book $(MAKECMDGOALS)
choose_book_move:
	@echo
	${MAKE} -C choose_book_move $(MAKECMDGOALS)
ProcessHoldings:
	@echo
	${MAKE} -C ProcessHoldings $(MAKECMDGOALS)
text_to_piece:
	@echo
	${MAKE} -C text_to_piece $(MAKECMDGOALS)
SwitchColor:
	@echo
	${MAKE} -C SwitchColor $(MAKECMDGOALS)
SwitchPromoted:
	@echo
	${MAKE} -C SwitchPromoted $(MAKECMDGOALS)
addHolding:
	@echo
	${MAKE} -C addHolding $(MAKECMDGOALS)
removeHolding:
	@echo
	${MAKE} -C removeHolding $(MAKECMDGOALS)
DropaddHolding:
	@echo
	${MAKE} -C DropaddHolding $(MAKECMDGOALS)
DropremoveHolding:
	@echo
	${MAKE} -C DropremoveHolding $(MAKECMDGOALS)
printHolding:
	@echo
	${MAKE} -C printHolding $(MAKECMDGOALS)
is_draw:
	@echo
	${MAKE} -C is_draw $(MAKECMDGOALS)
storeECache:
	@echo
	${MAKE} -C storeECache $(MAKECMDGOALS)
checkECache:
	@echo
	${MAKE} -C checkECache $(MAKECMDGOALS)
reset_ecache:
	@echo
	${MAKE} -C reset_ecache $(MAKECMDGOALS)
alloc_ecache:
	@echo
	${MAKE} -C alloc_ecache $(MAKECMDGOALS)
free_ecache:
	@echo
	${MAKE} -C free_ecache $(MAKECMDGOALS)
setup_epd_line:
	@echo
	${MAKE} -C setup_epd_line $(MAKECMDGOALS)
check_solution:
	@echo
	${MAKE} -C check_solution $(MAKECMDGOALS)
run_epd_testsuite:
	@echo
	${MAKE} -C run_epd_testsuite $(MAKECMDGOALS)
run_autotest:
	@echo
	${MAKE} -C run_autotest $(MAKECMDGOALS)
initialize_eval:
	@echo
	${MAKE} -C initialize_eval $(MAKECMDGOALS)
eval:
	@echo
	${MAKE} -C eval $(MAKECMDGOALS)
losers_eval:
	@echo
	${MAKE} -C losers_eval $(MAKECMDGOALS)
l_pawn_mobility:
	@echo
	${MAKE} -C l_pawn_mobility $(MAKECMDGOALS)
l_rook_mobility:
	@echo
	${MAKE} -C l_rook_mobility $(MAKECMDGOALS)
l_bishop_mobility:
	@echo
	${MAKE} -C l_bishop_mobility $(MAKECMDGOALS)
l_knight_mobility:
	@echo
	${MAKE} -C l_knight_mobility $(MAKECMDGOALS)
l_king_mobility:
	@echo
	${MAKE} -C l_king_mobility $(MAKECMDGOALS)
check_legal:
	@echo
	${MAKE} -C check_legal $(MAKECMDGOALS)
gen:
	@echo
	${MAKE} -C gen $(MAKECMDGOALS)
push_pawn:
	@echo
	${MAKE} -C push_pawn $(MAKECMDGOALS)
push_pawn_simple:
	@echo
	${MAKE} -C push_pawn_simple $(MAKECMDGOALS)
push_knighT:
	@echo
	${MAKE} -C push_knighT $(MAKECMDGOALS)
push_slidE:
	@echo
	${MAKE} -C push_slidE $(MAKECMDGOALS)
push_king:
	@echo
	${MAKE} -C push_king $(MAKECMDGOALS)
push_king_castle:
	@echo
	${MAKE} -C push_king_castle $(MAKECMDGOALS)
try_drop:
	@echo
	${MAKE} -C try_drop $(MAKECMDGOALS)
add_move:
	@echo
	${MAKE} -C add_move $(MAKECMDGOALS)
add_capture:
	@echo
	${MAKE} -C add_capture $(MAKECMDGOALS)
in_check:
	@echo
	${MAKE} -C in_check $(MAKECMDGOALS)
f_in_check:
	@echo
	${MAKE} -C f_in_check $(MAKECMDGOALS)
extended_in_check:
	@echo
	${MAKE} -C extended_in_check $(MAKECMDGOALS)
make:
	@echo
	${MAKE} -C make $(MAKECMDGOALS)
unmake:
	@echo
	${MAKE} -C unmake $(MAKECMDGOALS)
check_phase:
	@echo
	${MAKE} -C check_phase $(MAKECMDGOALS)
King:
	@echo
	${MAKE} -C King $(MAKECMDGOALS)
Queen:
	@echo
	${MAKE} -C Queen $(MAKECMDGOALS)
rook_mobility:
	@echo
	${MAKE} -C rook_mobility $(MAKECMDGOALS)
bishop_mobility:
	@echo
	${MAKE} -C bishop_mobility $(MAKECMDGOALS)
Rook:
	@echo
	${MAKE} -C Rook $(MAKECMDGOALS)
Bishop:
	@echo
	${MAKE} -C Bishop $(MAKECMDGOALS)
Knight:
	@echo
	${MAKE} -C Knight $(MAKECMDGOALS)
Pawn:
	@echo
	${MAKE} -C Pawn $(MAKECMDGOALS)
ErrorIt:
	@echo
	${MAKE} -C ErrorIt $(MAKECMDGOALS)
std_eval:
	@echo
	${MAKE} -C std_eval $(MAKECMDGOALS)
ResetHandValue:
	@echo
	${MAKE} -C ResetHandValue $(MAKECMDGOALS)
BegForPartner:
	@echo
	${MAKE} -C BegForPartner $(MAKECMDGOALS)
GreetPartner:
	@echo
	${MAKE} -C GreetPartner $(MAKECMDGOALS)
HandlePartner:
	@echo
	${MAKE} -C HandlePartner $(MAKECMDGOALS)
HandlePtell:
	@echo
	${MAKE} -C HandlePtell $(MAKECMDGOALS)
CheckBadFlow:
	@echo
	${MAKE} -C CheckBadFlow $(MAKECMDGOALS)
Xmalloc:
	@echo
	${MAKE} -C Xmalloc $(MAKECMDGOALS)
Xfree:
	@echo
	${MAKE} -C Xfree $(MAKECMDGOALS)
freenodes:
	@echo
	${MAKE} -C freenodes $(MAKECMDGOALS)
pn_eval:
	@echo
	${MAKE} -C pn_eval $(MAKECMDGOALS)
suicide_pn_eval:
	@echo
	${MAKE} -C suicide_pn_eval $(MAKECMDGOALS)
losers_pn_eval:
	@echo
	${MAKE} -C losers_pn_eval $(MAKECMDGOALS)
std_pn_eval:
	@echo
	${MAKE} -C std_pn_eval $(MAKECMDGOALS)
select_most_proving:
	@echo
	${MAKE} -C select_most_proving $(MAKECMDGOALS)
set_proof_and_disproof_numbers:
	@echo
	${MAKE} -C set_proof_and_disproof_numbers $(MAKECMDGOALS)
develop_node:
	@echo
	${MAKE} -C develop_node $(MAKECMDGOALS)
update_ancestors:
	@echo
	${MAKE} -C update_ancestors $(MAKECMDGOALS)
pn2_eval:
	@echo
	${MAKE} -C pn2_eval $(MAKECMDGOALS)
proofnumberscan:
	@echo
	${MAKE} -C proofnumberscan $(MAKECMDGOALS)
proofnumbersearch:
	@echo
	${MAKE} -C proofnumbersearch $(MAKECMDGOALS)
proofnumbercheck:
	@echo
	${MAKE} -C proofnumbercheck $(MAKECMDGOALS)
read_rcfile:
	@echo
	${MAKE} -C read_rcfile $(MAKECMDGOALS)
order_moves:
	@echo
	${MAKE} -C order_moves $(MAKECMDGOALS)
perft:
	@echo
	${MAKE} -C perft $(MAKECMDGOALS)
qsearch:
	@echo
	${MAKE} -C qsearch $(MAKECMDGOALS)
remove_one:
	@echo
	${MAKE} -C remove_one $(MAKECMDGOALS)
search:
	@echo
	${MAKE} -C search $(MAKECMDGOALS)
search_root:
	@echo
	${MAKE} -C search_root $(MAKECMDGOALS)
think:
	@echo
	${MAKE} -C think $(MAKECMDGOALS)
tree:
	@echo
	${MAKE} -C tree $(MAKECMDGOALS)
setup_attackers:
	@echo
	${MAKE} -C setup_attackers $(MAKECMDGOALS)
findlowest:
	@echo
	${MAKE} -C findlowest $(MAKECMDGOALS)
see:
	@echo
	${MAKE} -C see $(MAKECMDGOALS)
suicide_eval:
	@echo
	${MAKE} -C suicide_eval $(MAKECMDGOALS)
suicide_mid_eval:
	@echo
	${MAKE} -C suicide_mid_eval $(MAKECMDGOALS)
s_pawn_mobility:
	@echo
	${MAKE} -C s_pawn_mobility $(MAKECMDGOALS)
black_saccers:
	@echo
	${MAKE} -C black_saccers $(MAKECMDGOALS)
white_saccers:
	@echo
	${MAKE} -C white_saccers $(MAKECMDGOALS)
s_rook_mobility:
	@echo
	${MAKE} -C s_rook_mobility $(MAKECMDGOALS)
s_bishop_mobility:
	@echo
	${MAKE} -C s_bishop_mobility $(MAKECMDGOALS)
s_knight_mobility:
	@echo
	${MAKE} -C s_knight_mobility $(MAKECMDGOALS)
s_king_mobility:
	@echo
	${MAKE} -C s_king_mobility $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clear_tt:
	@echo
	${MAKE} -C clear_tt $(MAKECMDGOALS)
clear_dp_tt:
	@echo
	${MAKE} -C clear_dp_tt $(MAKECMDGOALS)
initialize_zobrist:
	@echo
	${MAKE} -C initialize_zobrist $(MAKECMDGOALS)
initialize_hash:
	@echo
	${MAKE} -C initialize_hash $(MAKECMDGOALS)
QStoreTT:
	@echo
	${MAKE} -C QStoreTT $(MAKECMDGOALS)
StoreTT:
	@echo
	${MAKE} -C StoreTT $(MAKECMDGOALS)
LearnStoreTT:
	@echo
	${MAKE} -C LearnStoreTT $(MAKECMDGOALS)
ProbeTT:
	@echo
	${MAKE} -C ProbeTT $(MAKECMDGOALS)
QProbeTT:
	@echo
	${MAKE} -C QProbeTT $(MAKECMDGOALS)
alloc_hash:
	@echo
	${MAKE} -C alloc_hash $(MAKECMDGOALS)
free_hash:
	@echo
	${MAKE} -C free_hash $(MAKECMDGOALS)
allocate_time:
	@echo
	${MAKE} -C allocate_time $(MAKECMDGOALS)
comp_to_san:
	@echo
	${MAKE} -C comp_to_san $(MAKECMDGOALS)
comp_to_coord:
	@echo
	${MAKE} -C comp_to_coord $(MAKECMDGOALS)
display_board:
	@echo
	${MAKE} -C display_board $(MAKECMDGOALS)
init_game:
	@echo
	${MAKE} -C init_game $(MAKECMDGOALS)
reset_piece_square:
	@echo
	${MAKE} -C reset_piece_square $(MAKECMDGOALS)
is_move:
	@echo
	${MAKE} -C is_move $(MAKECMDGOALS)
perft_debug:
	@echo
	${MAKE} -C perft_debug $(MAKECMDGOALS)
rinput:
	@echo
	${MAKE} -C rinput $(MAKECMDGOALS)
verify_coord:
	@echo
	${MAKE} -C verify_coord $(MAKECMDGOALS)
hash_extract_pv:
	@echo
	${MAKE} -C hash_extract_pv $(MAKECMDGOALS)
stringize_pv:
	@echo
	${MAKE} -C stringize_pv $(MAKECMDGOALS)
post_thinking:
	@echo
	${MAKE} -C post_thinking $(MAKECMDGOALS)
rtime:
	@echo
	${MAKE} -C rtime $(MAKECMDGOALS)
rdifftime:
	@echo
	${MAKE} -C rdifftime $(MAKECMDGOALS)
post_fail_thinking:
	@echo
	${MAKE} -C post_fail_thinking $(MAKECMDGOALS)
post_fh_thinking:
	@echo
	${MAKE} -C post_fh_thinking $(MAKECMDGOALS)
post_fl_thinking:
	@echo
	${MAKE} -C post_fl_thinking $(MAKECMDGOALS)
post_stat_thinking:
	@echo
	${MAKE} -C post_stat_thinking $(MAKECMDGOALS)
print_move:
	@echo
	${MAKE} -C print_move $(MAKECMDGOALS)
rdelay:
	@echo
	${MAKE} -C rdelay $(MAKECMDGOALS)
check_piece_square:
	@echo
	${MAKE} -C check_piece_square $(MAKECMDGOALS)
start_up:
	@echo
	${MAKE} -C start_up $(MAKECMDGOALS)
toggle_bool:
	@echo
	${MAKE} -C toggle_bool $(MAKECMDGOALS)
tree_debug:
	@echo
	${MAKE} -C tree_debug $(MAKECMDGOALS)
interrupt:
	@echo
	${MAKE} -C interrupt $(MAKECMDGOALS)
PutPiece:
	@echo
	${MAKE} -C PutPiece $(MAKECMDGOALS)
reset_board:
	@echo
	${MAKE} -C reset_board $(MAKECMDGOALS)
seedMT:
	@echo
	${MAKE} -C seedMT $(MAKECMDGOALS)
reloadMT:
	@echo
	${MAKE} -C reloadMT $(MAKECMDGOALS)
randomMT:
	@echo
	${MAKE} -C randomMT $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
