% this is a demo for UWB DS-TWR 

dist = 7; %m

tof_t = dist / (3 * 1e8) % theorcical time of fligth in seconds (s)
tof_t_ns = tof_t * 1e9  % theoratical time of flight in nano seconds (ns)

t1 = 4 * 1e0; % ns
t2 = 310 * 1e0; % ns
t3 = 965 * 1e0; % ns

Tp = t1;
Rp = Tp + tof_t_ns;

Tr = t2;
Rr = t2 + tof_t_ns;

Tf = t3;
Rf = t3 + tof_t_ns;

ad = Rr - Tp;
bp = Tr - Rp;
bd = Rf - Tr;
ap = Tf - Rr;

tof_e = (ad * bd - ap * bp) / (ad + bd + ap + bp)