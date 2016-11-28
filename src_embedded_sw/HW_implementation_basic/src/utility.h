/* Custom type to store 12-bits variables.
 * Usage:
 * 		int12 var;
 *   	var.x = 2047;
 */

struct int12{
    int data : 12;
};


int ceil_div(int num, int den)
{
	int i = 0;
	while(1) {
		if(num <= (den*i)) {
			return i;
		}
		i++;
	}
}
