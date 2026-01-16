/* MATLAB GENERATED SOURCE FILE: POT_FILTER_biquad_df1.c */
#include "POT_FILTER_biquad_df1.h"
// Filter state
uint32_t POT_FILTER_STATE_UINT[4*POT_FILTER_NUM_STAGES] = {
  #include "POT_FILTER_state_init.csv"
};
float32_t *POT_FILTER_STATE = (float32_t*)POT_FILTER_STATE_UINT;
// Filter coefficients
uint32_t POT_FILTER_COEFFS_UINT[5*POT_FILTER_NUM_STAGES] = {
  #include "POT_FILTER_coeffs.csv"
};
float32_t *POT_FILTER_COEFFS = (float32_t*)POT_FILTER_COEFFS_UINT;
// Filter instance
arm_biquad_casd_df1_inst_f32 POT_FILTER;
