

if (place_meeting(x, y+1, obj_Solid)) //landing
{ 

    Current_State = Player_States.ON_GROUND;
    Num_Jumps = 0;
    Gravity = Init_Grav;
    
    
} else {
    Current_State = Player_States.ON_AIR;
    if (V_Speed < Min_Jump_Height) {
        V_Speed += Gravity;
    }
    if (V_Speed >= 0 and Num_Jumps == Max_Jumps) {
        Gravity = 1.5;
    }
}

if (Key_Jump and Num_Jumps < Max_Jumps) //Jumping
{
    V_Speed = -Jump_Force;
    Num_Jumps++;
    
}

if (!Key_Jump_Hold and V_Speed < 0) {
    V_Speed = max(0, -Jump_Force*0.2);
}

