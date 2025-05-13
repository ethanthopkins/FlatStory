/// @desc Get Player Input
switch (state)
{
	case oPlayerState.idle: scPlayerIdle(); break;
	case oPlayerState.crouch: scPlayerCrouch(); break;
	case oPlayerState.crawlInside: scPlayerCrawlInside(); break;
	case oPlayerState.walk: scPlayerWalk(); break;
	case oPlayerState.run: scPlayerRun(); break;
	case oPlayerState.saw: scPlayerSaw(); break;
	case oPlayerState.hidden: scPlayerHidden(); break;
	case oPlayerState.talk: scPlayerTalk(); break;
	case oPlayerState.battle: scPlayerBattle(); break;
	case oPlayerState.death: scPlayerDeath(); break;
	case oPlayerState.transition: scPlayerTransition(); break;
}