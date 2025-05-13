//SENSES
var sight = eSight();
var heard = eHearing();

if (!sight) && (!heard) {
	if (awareness > 0) {
		awareness -= awarenessDecreaseSpeed;	
	}
}

////show_debug_message(awareness);
////show_debug_message(heard);
//show_debug_message(state);

//STATES
switch state 
{
	case eState.patrol: ePatrol(); break;
	case eState.search: eSearch(); break;
	case eState.investigate: eInvestigate(); break;
	case eState.checkHidingSpot: eCheckHidingSpot(); break;
	case eState.chase: eChase(); break;
	case eState.checkLastPosition: eCheckLastPostion(); break;
	case eState.attack: eAttack(); break;
	case eState.returnToPatrol: eReturnToPatrol(); break;
}

eDirection = (round(direction/90))*90;