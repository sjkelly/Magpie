module aluminium(){
	color([1,1,1]*0.95) for(i=[1:$children]) children(i-1);
}
module aluminum(){
	color([1,1,1]*0.95) for(i=[1:$children]) children(i-1);
}
module bzp(){
	color([0.7,0.7,1]) for(i=[1:$children]) children(i-1);
}
module stainless(){
	color([1,1,1]*0.6) for(i=[1:$children]) children(i-1);
}
module stainless_steel(){
	color([1,1,1]*0.6) for(i=[1:$children]) children(i-1);
}
module steel(){
	color([1,1,1]*0.5) for(i=[1:$children]) children(i-1);
}
module urethane(){
	color([166/255,119/255,73/255]) for(i=[1:$children]) children(i-1);
}
module mdf(){
	color([152/255,119/255,61/255]) for(i=[1:$children]) children(i-1);
}
module wood(){
	color([219/255,176/255,102/255]) for(i=[1:$children]) children(i-1);
}
