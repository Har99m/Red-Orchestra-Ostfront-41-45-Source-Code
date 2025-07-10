//===================================================================
// Sdkfz251PassengerTwo
//
// Copyright (C) 2004 John "Ramm-Jaeger"  Gibson
//
// Sdkfz251 passenger that rides in back
//===================================================================
class Sdkfz251PassengerTwo extends ROPassengerPawn;

defaultproperties
{
     PositionInArray=2
     CameraBone="passenger_l_2"
     bDesiredBehindView=False
     DrivePos=(X=0.000000,Y=0.000000,Z=0.000000)
     DriveAnim="VHalftrack_Rider2_idle"
     FPCamViewOffset=(X=0.000000,Z=0.000000)
     VehiclePositionString="in a SDKFZ-251 transport"
     VehicleNameString="SDKFZ-251 passenger"
}
