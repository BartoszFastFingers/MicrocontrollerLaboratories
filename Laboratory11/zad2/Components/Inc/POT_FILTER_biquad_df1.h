/* MATLAB GENERATED  HEADER FILE: POT_FILTER_biquad_df1.h */
#ifndef INC_POT_FILTER_H_
#define INC_POT_FILTER_H_

#include "arm_math.h"

#define POT_FILTER_NUM_STAGES  1
#define POT_FILTER_BLOCK_SIZE  1
// Filter state
extern float32_t *POT_FILTER_STATE;
// Filter coefficients
extern float32_t *POT_FILTER_COEFFS;
// Filter instance
extern arm_biquad_casd_df1_inst_f32 POT_FILTER;
#endif // INC_POT_FILTER_H_
