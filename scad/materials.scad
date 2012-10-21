module aluminium(){
	color([1,1,1]*0.95) for(i=[1:$children]) child(i-1);
}
module bzp(){
    color([0.7,0.7,1]) for(i=[1:$children]) child(i-1);
}
module stainless(){
    color([1,1,1]*0.6) for(i=[1:$children]) child(i-1);
}
module steel(){
    color([1,1,1]*0.5) for(i=[1:$children]) child(i-1);
}
