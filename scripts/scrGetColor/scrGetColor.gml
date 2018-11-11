// Convert integer data into greyscale color

var val = argument0;
var r = (val + 1) * 127.5;
r = round(r);

rr = 0;
rg = 0;
rb = 0;

if (r < ca) {
	ret = c_gray;
	ret = 1;
	//rr = map(r, 0, ca, 30, 100);
	//rg = rr;
	//rb = rr;
} else if (r < cg) {
	ret = c_green;
	ret = 2;
	//rr = map(r, ca, cg, 100, 0);
	//rg = map(r, ca, cg, 100, 255);
	//rb = map(r, ca, cg, 100, 0);
} else if (r < cy) {
	ret = c_yellow;
	ret = 3;
	//rr = map(r, cg, cy, 0, 255);
	//rg = map(r, cg, cy, 255, 255);
	//rb = map(r, cg, cy, 0, 0);
} else if (r < cb) {
	ret = c_blue;
	ret = 4;
	//rr = map(r, cy, cb, 255, 0);
	//rg = map(r, cy, cb, 255, 0);
	//rb = map(r, cy, cb, 0, 255);
} else {
	ret = c_black;
	ret = 4;
	//rr = map(r, cb, 255, 0, 0);
	//rg = map(r, cb, 255, 0, 0);
	//rb = map(r, cb, 255, 255, 0);
}

// ret = make_color_rgb(rr, rg, rb);
return ret;