/**                                                                     
 *  /file guwhiteboardtypelist_c_generated.h                            
 *                                                                      
 *  Created by Carl Lusty in 2013.                                      
 *  Copyright (c) 2013 Carl Lusty                                       
 *  All rights reserved.                                                
 */                                                                     


#ifndef _GUWHITEBOARD_TYPELIST_C_H_                                     
#define _GUWHITEBOARD_TYPELIST_C_H_                                     


#define WANT_WB_STRINGS

#define GSW_NUM_TYPES_DEFINED 53

#if GSW_NUM_TYPES_DEFINED > GSW_NUM_RESERVED
#error *** Error: gusimplewhiteboard: The number of defined types exceeds the total number of reserved types allowed. Increase GSW_NUM_RESERVED to solve this.
#endif
//Generated on: Mon Jul 28 18:08:36 2014
//Generated by user: carl

        typedef enum wb_types      
        {                                                               
                kwb_reserved_SubscribeToAllTypes_v = 0,	///<Global subscription type. Do not add content to this type, it is for global subscriptions only
                kPrint_v = 1,                kSay_v = 2,                kSpeech_v = 3,                kQSay_v = 4,                kQSpeech_v = 5,                kSpeechOutput_v = 6,
                kGCGameState_v = 7,
                kWALK_Command_v = 8,
                kWALK_Status_v = 9,
                kMOTION_Commands_v = 10,
                kMOTION_Status_v = 11,
                kHAL_HeadTarget_v = 12,
                kSENSORS_FootSensors_v = 13,
                kSENSORS_BodySensors_v = 14,
                kSENSORS_LedsSensors_v = 15,
                kSENSORS_LegJointTemps_v = 16,
                kSENSORS_TorsoJointTemps_v = 17,
                kSENSORS_LegJointSensors_v = 18,
                kSENSORS_TorsoJointSensors_v = 19,
                kSENSORS_SonarSensors_v = 20,
                kFSM_Control_v = 21,
                kFSM_Status_v = 22,
                kFSM_Names_v = 23,
                kSoloTypeExample_v = 24,	///<This is an example of a type definition that does not generate anything other than a wb type
                kFilteredGoalSighting_v = 25,
                kNAO_State_v = 26,
                kUDPRN_v = 27,
                kPlayerNumber_v = 28,
                kManuallyPenalized_v = 29,
                kVision_Control_v = 30,
                kVision_Status_v = 31,
                kFFTStatus_v = 32,
                kFSOsighting_v = 33,
                kTopParticles_v = 34,
                kFilteredBallSighting_v = 35,
                kPF_ControlStatus_Modes_v = 36,
                kWEBOTS_NXT_bridge_v = 37,
                kWEBOTS_NXT_encoders_v = 38,
                kWEBOTS_NXT_camera_v = 39,
                kWEBOTS_NXT_walk_isRunning_v = 40,
                kWEBOTS_NXT_deadReakoning_walk_v = 41,
                kWEBOTS_NXT_colorLine_walk_v = 42,
                kWEBOTS_NXT_gridMotions_v = 43,
                kVisionBall_v = 44,
                kVisionGoals_v = 45,
                kWalkData_v = 46,
                kTeleoperationControlStatus_v = 47,
                kTeleoperationConnection_v = 48,
                kUDPWBNumber_v = 49,
                kWEBOTS_NXT_bumper_v = 50,
                kWEBOTS_NXT_vector_bridge_v = 51,
                kVisionLines_v = 52
        } WBTypes;

        extern const char *WBTypes_stringValues[];
#endif                          