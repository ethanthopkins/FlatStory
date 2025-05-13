// Script assets have changed for v2.3.0 see
// https://help.yoyoGameManagers.com/hc/en-us/articles/360005277377 for more information
function scFlashLight(){
	if (instance_exists(oLightSpot)) instance_destroy(oLightSpot) else instance_create_layer(x,y,"light",oLightSpot);
}