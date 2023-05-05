//Example made by M2MakerLab 


/* [Parameters group (aka "Tab")] */

//Variable Description (Optional)
//Variable_name = default value //Variable value options 

//Textbox
cube_name = "example cube";

//Spinbox
Square_side_lenght = 5;
//Square_side_lenght = 5; // 0.5 

//Slider (default step size 1)
cube_height = 8; //[1:30]

//Slider custom step size (0.05)
cube_top_scale = 1; // [0:0.05:4]

//Combo box for string
cube_color = "red"; //[green, blue, cyan, purple, orange, gray]

//Labeled combo box for numbers
cube_twist = 0; //[0:No twist, 20:Light twist, 60:Medium twist, 150:Heavy twist, 350:Extreme twist]

//Checkbox
Add_hole = false;


//Mesh resolution
$fn = 100;

//Here object code starts and parameters declaration ends 
color(cube_color)
linear_extrude(height= cube_height, 
               twist = cube_twist, 
               scale = cube_top_scale)
     if (Add_hole) //if add_hole is checked, add hole
       {
        difference(){
            square ([Square_side_lenght*1.4, Square_side_lenght*1.4], center = true);
    square([Square_side_lenght, Square_side_lenght],center = true);}
       }else{  //add_hole not checked
           square ([Square_side_lenght*1.4, Square_side_lenght*1.4], center = true);}
                


//For other parameters types/options see here: https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Customizer 
