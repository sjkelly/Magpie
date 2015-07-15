use <materials.scad>;

module material(type){
	if(type == "Aluminium" || type == "Aluminum") aluminum() for(i=[1:$children]) children(i-1);
	if(type == "BZP") bzp() for(i=[1:$children]) children(i-1); 
}	
