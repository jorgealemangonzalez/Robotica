int argc =0; static char *argv[1];
std::string node_name="start_on_command";
char * cstr = new char [node_name.length()+1];
std::strcpy (cstr, node_name.c_str());
argv[0]= cstr;

ros::init(argc, argv, "start_on_command");
n=new ros::NodeHandle();

client = 
n->serviceClient<status_report::ShallStop>("shall_stop");
