/*
 * Variables for Thingiverse Customizer
 * ==================================================================
 *
 */

// The number of AA cells in your battery holder
Cell_Count =4;
Cell_Diameter = 19;
Cell_Length = 70;
Contact_Offset = 5;
Use_Flanges = true;
/*
 * Library function: edge
 * ==================================================================
 *
 * Used to make roundes edges on objects
 *
 */
module edge(radius, height)
{
	difference()
	{
		translate([radius/2-0.5, radius/2-0.5, 0])
			cube([radius+1, radius+1, height], center = true);

		translate([radius, radius, 0])
			cylinder(h = height+1, r1 = radius, r2 = radius, center = true, $fn = 100);
	}
}

module make_single_cell(cells, i) {
    // battery cradle
    translate([0, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 18/2+10/2])
    rotate(90, [0, 1, 0])
        cylinder(r=Cell_Diameter/2, h=Cell_Length + 3.5, center=true, $fn = 100);


    

    // spring cut-out
    translate([(Cell_Length + Contact_Offset)/2-1/2 + .75, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, (Cell_Diameter + 1)/2+10/2])
        cube(size=[.5, 5.5, 30], center=true);




    // POSTIVE SIDE
    
    // circular hole for contact/spring
    translate([(Cell_Length + 5)/2-2/2, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, ((Cell_Diameter + 1)/2+10/2) - .2])
        rotate(90, [0, 1, 0])
        cylinder(r=5, h=2, center=true, $fn = 100);
    // square to coincide with cylinder cutout
    translate([(Cell_Length + Contact_Offset)/2-2/2, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, ((Cell_Diameter + 1)/2+10/2) + 6])
        cube(size=[2, 10, 12], center=true);

    // pocket for contact to fit in
    translate([((Cell_Length + Contact_Offset)/2-2/2) + 1.15, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, (20/2+10/2) -1.25])
        cube(size=[.7, 11.1, 12], center=true);

    translate([-((Cell_Length + 5)/2-1/2) - .75, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, (Cell_Diameter + 1)/2+10/2])
        cube(size=[.5, 5.5, 30], center=true);


    // NEGATIVE SIDE

    // circular hole for contact/spring
    translate([-((Cell_Length + Contact_Offset)/2-2/2), -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, (20/2+10/2) - .2])
        rotate(90, [0, 1, 0])
        cylinder(r=5, h=2, center=true, $fn = 100);
    // square to coincide with cylinder cutout
    translate([-((Cell_Length + Contact_Offset)/2-2/2), -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, (20/2+10/2) + 6])
        cube(size=[2, 10, 12], center=true);


    // pocket for contact to fit in
    translate([-((Cell_Length + Contact_Offset)/2-2/2) -1.15, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, (20/2+10/2) - 1.15])
        cube(size=[.7, 11.1, 12], center=true);
        
    // cutout for little protruding part on negative contact
    if(i % 2 == 0) {
        translate([-((Cell_Length + Contact_Offset)/2-2/2) -1.75, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 20/2+10/2 + 4])
            cube(size=[.5, 11.1/2, 12], center=true);
    } else {
        translate([(Cell_Length + Contact_Offset)/2-2/2 + 1.75, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 20/2+10/2 + 4])
            cube(size=[.5, 11.1/2, 12], center=true);
    }
        
    
    evenNumberOfCells = cells % 2 == 0;

    // solder flange cut-out
    translate([(Cell_Length/2+3-7/2), -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 3/2])
        cube(size=[7, 5.5, 5], center=true);
    
    if(i == 0) {
        translate([(Cell_Length/2)-4, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 3/2])
            cylinder(r=5.5/2, h=5, center=true, $fn = Cell_Length);
    }

    translate([-(Cell_Length/2+3-7/2), -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 3/2])
        cube(size=[7, 5.5, 5], center=true);
    if(i == cells-1){
        if(evenNumberOfCells) {
            translate([(Cell_Length/2)-4, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*(cells - 1), 3/2])
                cylinder(r=5.5/2, h=5, center=true, $fn = Cell_Length);
        } else {
            translate([-(Cell_Length/2)+4, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 3/2])
                cylinder(r=5.5/2, h=5, center=true, $fn = Cell_Length);
        }
    }
    // polarity markings
    if(i % 2 == 0) {
        translate([25, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 4/2+4.2])
            cube(size=[6, 2, 4], center=true);
        translate([25, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 4/2+4.2])
            cube(size=[2, 6, 4], center=true);
        translate([-25, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 4/2+4.2])
            cube(size=[2, 6, 4], center=true);
    } else {
        translate([-25, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 4/2+4.2])
            cube(size=[6, 2, 4], center=true);
        translate([-25, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 4/2+4.2])
            cube(size=[2, 6, 4], center=true);
        translate([25, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*i, 4/2+4.2])
            cube(size=[2, 6, 4], center=true);
    }


}

module battery_box(cells)
{
	difference()
	{
		union()
		{
			//translate([0, 0, 10/2])
			//	cube(size=[50+2+8, 15*cells, 10], center=true);

			translate([0, 0, 12/2])
				cube(size=[Cell_Length+2+8, Cell_Diameter*cells, 8], center=true);
	
			translate([Cell_Length/2+3+2/2, 0, 23/2])
				cube(size=[2, Cell_Diameter*cells, 19], center=true);

			translate([-(Cell_Length/2+3+2/2), 0, 23/2])
				cube(size=[2, Cell_Diameter*cells, 19], center=true);
            

			translate([-(Cell_Length/2+3-2/2) - .75, 0, 11.5/2+10/2])
				cube(size=[2, Cell_Diameter*cells, 13.5], center=true);

			translate([(Cell_Length/2+3-2/2) + .75, 0, 11.5/2+10/2])
				cube(size=[2, Cell_Diameter*cells, 13.5], center=true);
			

			// mounting flanges	
            if(Use_Flanges) {
                translate([30, cells*Cell_Diameter/2+4/2, 3/2+2])
                    cube(size=[7, 4, 3], center=true);

                translate([30, cells*Cell_Diameter/2+4, 3/2+2])
                    cylinder(r=7/2, h=3, center=true, $fn = (Cell_Length + 10));

                translate([-30, cells*Cell_Diameter/2+4/2, 3/2+2])
                    cube(size=[7, 4, 3], center=true);

                translate([-30, cells*Cell_Diameter/2+4, 3/2+2])
                    cylinder(r=7/2, h=3, center=true, $fn = (Cell_Length + 10));

                translate([30, -(cells*Cell_Diameter/2+4/2), 3/2+2])
                    cube(size=[7, 4, 3], center=true);

                translate([30, -(cells*Cell_Diameter/2+4), 3/2+2])
                    cylinder(r=7/2, h=3, center=true, $fn = (Cell_Length + 10));

                translate([-30, -(cells*Cell_Diameter/2+4/2), 3/2+2])
                    cube(size=[7, 4, 3], center=true);

                translate([-30, -(cells*Cell_Diameter/2+4), 3/2+2])
                    cylinder(r=7/2, h=3, center=true, $fn = (Cell_Length + 10));
            }
            
            translate([0, ((cells*Cell_Diameter)/2), 11.5])
                cube(size=[Cell_Length+2+8, 2, 19], center=true);
            translate([0, -((cells*Cell_Diameter)/2), 11.5])
                cube(size=[Cell_Length+2+8, 2, 19], center=true);
		}
        
        // mounting holes
        translate([30, cells*Cell_Diameter/2+4, 3/2])
            cylinder(r=3.3/2, h=10, center=true, $fn = 30);

        translate([-30, cells*Cell_Diameter/2+4, 3/2])
            cylinder(r=3.3/2, h=10, center=true, $fn = 30);

        translate([30, -(cells*Cell_Diameter/2+4), 3/2])
            cylinder(r=3.3/2, h=10, center=true, $fn = 30);

        translate([-30, -(cells*Cell_Diameter/2+4), 3/2])
            cylinder(r=3.3/2, h=10, center=true, $fn = 30);
        
		for (i=[0:cells-1])
		{
            make_single_cell(cells, i);
		}
		
		if (cells>=2)
		{
            translate([(Cell_Length/2+3-7/2), 0, 3/2])
                cube(size=[7, (cells*Cell_Diameter) - Cell_Diameter, 5], center=true);
            
            translate([-(Cell_Length/2+3-7/2), 0, 3/2])
                cube(size=[7, (cells*Cell_Diameter) - Cell_Diameter, 5], center=true);
		}
		
        


        
        
		// bottom cut-out for output wires
		translate([Cell_Length/4, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*0, 2.5/2])
			cube(size=[Cell_Length/2, 2, 5.5], center=true);			

		translate([3/2, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*0+1, 2.5/2])
			edge(4, 5.5);

		translate([3/2, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*0-1, 2.5/2])
		rotate(-90, [0, 0, 1])
			edge(4, 5.5);
        
        evenNumberOfCells = cells % 2 == 0;
        
        cellForOutputX = evenNumberOfCells ? Cell_Length/4 : -Cell_Length/4;
        cellForOutputFlangeX = evenNumberOfCells ? 3/2 : -3/2;

		translate([cellForOutputX, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*(cells - 1), 2.5/2])
			cube(size=[Cell_Length/2, 2, 5.5], center=true);			
	
		
        if(!evenNumberOfCells)
        {
            translate([cellForOutputFlangeX, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*(cells - 1)+1, 2.5/2])
            rotate(90, [0, 0, 1])
                edge(4, 5.5);
            
            translate([cellForOutputFlangeX, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*(cells - 1)-1, 2.5/2])
            rotate(180, [0, 0, 1])
                edge(4, 5.5);
        } else {
            translate([cellForOutputFlangeX, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*(cells - 1)+1, 2.5/2])
            edge(4, 5.5);
            
            translate([cellForOutputFlangeX, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*(cells - 1)-1, 2.5/2])
            rotate(-90, [0, 0, 1])
                edge(4, 5.5);            
            
        }
	

		// bottom polarity marking (+)
		translate([7, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*0-4.5, 1.5/2])
			cube(size=[4, 1.5, 1.6], center=true);

		translate([7, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*0-4.5, 1.5/2])
			cube(size=[1.5, 4, 1.6], center=true);

		// bottom polarity marking (-)
		translate([-7, -cells*Cell_Diameter/2+Cell_Diameter/2+Cell_Diameter*(cells-1)+4.5, 1.5/2])
			cube(size=[4, 1.5, 1.6], center=true);
		


		// bottom cut-out for output wire
		translate([0, 0, 2.5/2])
			cube(size=[4, cells*Cell_Diameter+5, 5.5], center=true);

		
		// cutout to ease battery removal
		translate([0, 0, 20/2+10/2])
		rotate(90, [1, 0, 0])
			cylinder(r=20/2, h=cells*15+2, center=true, $fn = 100);
		

		// rounded corners on end plates
        /*
		translate([0, -cells*Cell_Diameter/2, 21])
		rotate(90, [0, 1, 0])
			edge(4, Cell_Length + 8 + 8 + 5);

		translate([0, cells*Cell_Diameter/2, 21])
		rotate(90, [0, 1, 0])
		rotate(-90, [0, 0, 1])
			edge(4, Cell_Length+8+8+5);

		translate([0, -cells*Cell_Diameter/2, 18.5])
		rotate(90, [0, 1, 0])
			edge(4, Cell_Length+6);

		translate([0, cells*Cell_Diameter/2, 18.5])
		rotate(90, [0, 1, 0])
		rotate(-90, [0, 0, 1])
			edge(4, Cell_Length+6);
        */
	}
}

battery_box(Cell_Count);