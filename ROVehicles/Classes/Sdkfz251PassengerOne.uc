//===================================================================
// Sdkfz251PassengerOne
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Sdkfz251 passenger that rides in back
//===================================================================

class Sdkfz251PassengerOne extends ROPassengerPawn;

defaultproperties
{
     PositionInArray=1
     CameraBone="passenger_l_1"
     bDesiredBehindView=False
     DrivePos=(X=0.000000,Y=0.000000,Z=0.000000)
     DriveAnim="VHalftrack_Rider1_idle"
     FPCamViewOffset=(X=0.000000,Z=0.000000)
     VehiclePositionString="in a SDKFZ-251 transport"
     VehicleNameString="SDKFZ-251 passenger"
}
