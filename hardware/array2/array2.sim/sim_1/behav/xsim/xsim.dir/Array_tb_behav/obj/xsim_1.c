/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_73(char*, char *);
extern void execute_76(char*, char *);
extern void execute_202(char*, char *);
extern void execute_203(char*, char *);
extern void execute_204(char*, char *);
extern void execute_205(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_93(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_96(char*, char *);
extern void execute_105(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void execute_108(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_129(char*, char *);
extern void execute_130(char*, char *);
extern void execute_131(char*, char *);
extern void execute_132(char*, char *);
extern void execute_141(char*, char *);
extern void execute_142(char*, char *);
extern void execute_143(char*, char *);
extern void execute_144(char*, char *);
extern void execute_153(char*, char *);
extern void execute_154(char*, char *);
extern void execute_155(char*, char *);
extern void execute_156(char*, char *);
extern void execute_165(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void execute_168(char*, char *);
extern void execute_177(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
extern void execute_180(char*, char *);
extern void execute_189(char*, char *);
extern void execute_190(char*, char *);
extern void execute_191(char*, char *);
extern void execute_192(char*, char *);
extern void execute_7(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_9(char*, char *);
extern void execute_14(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void execute_102(char*, char *);
extern void execute_12(char*, char *);
extern void execute_13(char*, char *);
extern void execute_16(char*, char *);
extern void execute_21(char*, char *);
extern void execute_112(char*, char *);
extern void execute_113(char*, char *);
extern void execute_114(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_23(char*, char *);
extern void execute_28(char*, char *);
extern void execute_124(char*, char *);
extern void execute_125(char*, char *);
extern void execute_126(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_30(char*, char *);
extern void execute_35(char*, char *);
extern void execute_136(char*, char *);
extern void execute_137(char*, char *);
extern void execute_138(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_37(char*, char *);
extern void execute_42(char*, char *);
extern void execute_148(char*, char *);
extern void execute_149(char*, char *);
extern void execute_150(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_44(char*, char *);
extern void execute_49(char*, char *);
extern void execute_160(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_51(char*, char *);
extern void execute_56(char*, char *);
extern void execute_172(char*, char *);
extern void execute_173(char*, char *);
extern void execute_174(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_58(char*, char *);
extern void execute_63(char*, char *);
extern void execute_184(char*, char *);
extern void execute_185(char*, char *);
extern void execute_186(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_65(char*, char *);
extern void execute_70(char*, char *);
extern void execute_197(char*, char *);
extern void execute_198(char*, char *);
extern void execute_199(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_72(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_206(char*, char *);
extern void execute_207(char*, char *);
extern void execute_208(char*, char *);
extern void execute_209(char*, char *);
extern void execute_210(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void vlog_transfunc_eventcallback_2state(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[126] = {(funcp)execute_73, (funcp)execute_76, (funcp)execute_202, (funcp)execute_203, (funcp)execute_204, (funcp)execute_205, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_82, (funcp)execute_83, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_93, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_105, (funcp)execute_106, (funcp)execute_107, (funcp)execute_108, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_120, (funcp)execute_129, (funcp)execute_130, (funcp)execute_131, (funcp)execute_132, (funcp)execute_141, (funcp)execute_142, (funcp)execute_143, (funcp)execute_144, (funcp)execute_153, (funcp)execute_154, (funcp)execute_155, (funcp)execute_156, (funcp)execute_165, (funcp)execute_166, (funcp)execute_167, (funcp)execute_168, (funcp)execute_177, (funcp)execute_178, (funcp)execute_179, (funcp)execute_180, (funcp)execute_189, (funcp)execute_190, (funcp)execute_191, (funcp)execute_192, (funcp)execute_7, (funcp)execute_88, (funcp)execute_89, (funcp)execute_90, (funcp)execute_5, (funcp)execute_6, (funcp)execute_9, (funcp)execute_14, (funcp)execute_100, (funcp)execute_101, (funcp)execute_102, (funcp)execute_12, (funcp)execute_13, (funcp)execute_16, (funcp)execute_21, (funcp)execute_112, (funcp)execute_113, (funcp)execute_114, (funcp)execute_19, (funcp)execute_20, (funcp)execute_23, (funcp)execute_28, (funcp)execute_124, (funcp)execute_125, (funcp)execute_126, (funcp)execute_26, (funcp)execute_27, (funcp)execute_30, (funcp)execute_35, (funcp)execute_136, (funcp)execute_137, (funcp)execute_138, (funcp)execute_33, (funcp)execute_34, (funcp)execute_37, (funcp)execute_42, (funcp)execute_148, (funcp)execute_149, (funcp)execute_150, (funcp)execute_40, (funcp)execute_41, (funcp)execute_44, (funcp)execute_49, (funcp)execute_160, (funcp)execute_161, (funcp)execute_162, (funcp)execute_47, (funcp)execute_48, (funcp)execute_51, (funcp)execute_56, (funcp)execute_172, (funcp)execute_173, (funcp)execute_174, (funcp)execute_54, (funcp)execute_55, (funcp)execute_58, (funcp)execute_63, (funcp)execute_184, (funcp)execute_185, (funcp)execute_186, (funcp)execute_61, (funcp)execute_62, (funcp)execute_65, (funcp)execute_70, (funcp)execute_197, (funcp)execute_198, (funcp)execute_199, (funcp)execute_68, (funcp)execute_69, (funcp)execute_72, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_206, (funcp)execute_207, (funcp)execute_208, (funcp)execute_209, (funcp)execute_210, (funcp)vlog_transfunc_eventcallback, (funcp)vlog_transfunc_eventcallback_2state};
const int NumRelocateId= 126;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Array_tb_behav/xsim.reloc",  (void **)funcTab, 126);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Array_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Array_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Array_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Array_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Array_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
