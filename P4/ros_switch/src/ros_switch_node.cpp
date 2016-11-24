/****************************************************************/
/* Demonstrative code Vlad Estivill-Castro, (c)2016		*/
/****************************************************************/

#include "ros_switch/subsumbtion_stack.h"

  
 int main(int argc, char **argv)
 {
 
       subsumbtion_stack  *subscriber = new subsumbtion_stack();

        subscriber->run(argc, argv);
 
 return 0;
 }
