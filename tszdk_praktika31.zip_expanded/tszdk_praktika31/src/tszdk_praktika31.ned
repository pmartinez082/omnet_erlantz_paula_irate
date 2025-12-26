package tszdk_praktika3;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth10M;
import inet.node.ethernet.EthernetSwitch;
import inet.node.inet.MulticastRouter;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;
import inet.node.ethernet.Eth100M;
import inet.node.inet.WirelessHost;
import inet.node.wireless.AccessPoint;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import ned.IdealChannel;
import inet.node.inet.AccessPoint;



channel Eth100MLong extends Eth100M
{
    length = 100m;
}

channel Core200G extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = uniform(4.7us, 5.1us);
}

channel Core300G extends ned.DatarateChannel
{
    datarate = 300Mbps;
    delay = uniform(4.7us, 5.1us);

}
channel Core100G extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = uniform(4.7us, 5.1us);

}
channel ONT_Rout_Eth_PC extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = uniform(1.5ms, 2.5ms);

}
channel ONT_Rout_WiFi_PC extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = uniform(4ms, 6ms);
}


network tszdk_praktika2
{
    @display("bgb=8140,4360,#A6AADB;i=background/terrain;i2=status/;bgi=background/auzoak");
    types:
    submodules:

        // =======================
        // Auzoa_16(DeustuAbando)
        // =======================
        auzoa_1lan1host1: StandardHost {
            @display("p=1622.5726,766.8876");
        }
        auzoa_1lan1host2: StandardHost {
            @display("p=1247.2013,1174.5488");
        }
        auzoa_1lan1host3: StandardHost {
            @display("p=2022.1614,807.25006");
        }
        auzoa_1switch1: EthernetSwitch {
            @display("p=1751.7327,1118.0413");
        }

        auzoa_1lan2host1: StandardHost {
            @display("p=750.74255,411.6975");
        }
        auzoa_1lan2host2: StandardHost {
            @display("p=863.75757,912.19257");
        }
        auzoa_1lan2host3: StandardHost {
            @display("p=1396.5426,411.6975");
        }
        auzoa_1switch2: EthernetSwitch {
            @display("p=1126.1138,665.98126");
        }

        auzoa_6lan1host1: StandardHost {
            @display("p=1812.2764,1775.9501");
        }
        auzoa_6lan1host2: StandardHost {
            @display("p=2232.0464,1897.0376");
        }
        auzoa_6lan1host3: StandardHost {
            @display("p=2001.9801,1436.905");
        }
        auzoa_6switch1: EthernetSwitch {
            @display("p=2006.0164,1824.3851");
        }

        auzoa_6lan2host1: StandardHost {
            @display("p=2607.4177,1642.7539");
        }
        auzoa_6lan2host2: StandardHost {
            @display("p=2316.8076,1315.8176");
        }
        auzoa_6lan2host3: StandardHost {
            @display("p=2207.8289,1618.5364");
        }
        auzoa_6switch2: EthernetSwitch {
            @display("p=2458.0764,1779.9863");
        }

        auzoa_16router: Router {
            @display("p=1816.3126,1376.3613");
        }

        // auzoa_16AP: AccessPoint {
        //    @display("p=1400.5789,1319.8539");
        //}
        //auzoa_16lan3host1: WirelessHost {
        //    @display("p=185.6675,637.7275");
        //}
        // =======================
        // Auzoa_78 (ErrekaldeBasurto)
        // =======================
        auzoa_7lan1host1: StandardHost {
            @display("p=1804.2039,3745.6401");
        }
        auzoa_7lan1host2: StandardHost {
            @display("p=1222.9838,3321.834");
        }
        auzoa_7lan1host3: StandardHost {
            @display("p=1384.4338,2986.8252");
        }
        auzoa_7switch1: EthernetSwitch {
            @display("p=1767.8776,3398.5227");
        }

        auzoa_7lan2host1: StandardHost {
            @display("p=1852.6389,2728.5051");
        }
        auzoa_7lan2host2: StandardHost {
            @display("p=1800.1676,2276.445");
        }
        auzoa_7lan2host3: StandardHost {
            @display("p=2236.0825,2127.1038");
        }
        auzoa_7switch2: EthernetSwitch {
            @display("p=2062.524,2393.4963");
        }

        auzoa_8lan1host1: StandardHost {
            @display("p=823.395,2454.04");
        }
        auzoa_8lan1host2: StandardHost {
            @display("p=657.9088,3140.2026");
        }
        auzoa_8lan1host3: StandardHost {
            @display("p=343.08127,2998.9338");
        }
        auzoa_8switch1: EthernetSwitch {
            @display("p=605.43756,2744.6501");
        }

        auzoa_8lan2host1: StandardHost {
            @display("p=524.7125,1134.1863");
        }
        auzoa_8lan2host2: StandardHost {
            @display("p=859.7213,2058.4875");
        }
        auzoa_8lan2host3: StandardHost {
            @display("p=952.55505,1533.7751");
        }
        auzoa_8switch2: EthernetSwitch {
            @display("p=674.0538,1658.8988");
        }

        auzoa_78router: Router {
            @display("p=1404.6151,2579.1638");
        }

        // =======================
        // Auzoa_45 (BegoñaIbaiondo)
        // =======================
        auzoa_4lan1host1: StandardHost {
            @display("p=3229.0002,2502.475");
        }
        auzoa_4lan1host2: StandardHost {
            @display("p=3927.2715,2211.8652");
        }
        auzoa_4lan1host3: StandardHost {
            @display("p=3523.6465,2353.1338");
        }
        auzoa_4switch1: EthernetSwitch {
            @display("p=3749.6765,2397.5327");
        }

        auzoa_4lan2host1: StandardHost {
            @display("p=3455.0303,2143.2488");
        }
        auzoa_4lan2host2: StandardHost {
            @display("p=3136.1665,2353.1338");
        }
        auzoa_4lan2host3: StandardHost {
            @display("p=3136.1665,1771.9138");
        }
        auzoa_4switch2: EthernetSwitch {
            @display("p=3273.399,2110.959");
        }

        auzoa_5lan1host1: StandardHost {
            @display("p=2486.33,2228.0103");
        }
        auzoa_5lan1host2: StandardHost {
            @display("p=2930.3176,1586.2463");
        }
        auzoa_5lan1host3: StandardHost {
            @display("p=2938.3901,2199.7563");
        }
        auzoa_5switch1: EthernetSwitch {
            @display("p=2813.2664,1989.8713");
        }

        auzoa_5lan2host1: StandardHost {
            @display("p=2425.7864,3475.2114");
        }
        auzoa_5lan2host2: StandardHost {
            @display("p=2829.4114,2974.7163");
        }
        auzoa_5lan2host3: StandardHost {
            @display("p=2671.9976,3289.544");
        }
        auzoa_5switch2: EthernetSwitch {
            @display("p=2478.2576,3031.2239");
        }

        auzoa_5lan3host1: StandardHost {
            @display("p=3354.124,3672.9878");
        }
        auzoa_5lan3host2: StandardHost {
            @display("p=2506.5115,3826.3652");
        }
        auzoa_5lan3host3: StandardHost {
            @display("p=3216.8914,4108.903");
        }
        auzoa_5switch3: EthernetSwitch {
            @display("p=2914.1726,3943.4165");
        }

        auzoa_45router: Router {
            @display("p=2990.8613,2506.5115");
        }

        //auzoa_45AP: AccessPoint {
        //    @display("p=2206,2994");
        //}
        //auzoa_5wlan1host1: WirelessHost {
        //    @display("p=2092,3226");
        //}
        //auzoa_5wlan1host2: WirelessHost {
        //    @display("p=1889,3033");
        //}

        // =======================
        // Auzoa_23 (UribarriOtxar)
        // =======================
        auzoa_2lan1host1: StandardHost {
            @display("p=2619.5264,1251.2375");
        }
        auzoa_2lan1host2: StandardHost {
            @display("p=3241.109,1444.9775");
        }
        auzoa_2lan1host3: StandardHost {
            @display("p=2466.149,847.61255");
        }
        auzoa_2switch1: EthernetSwitch {
            @display("p=2898.0276,1295.6362");
        }

        auzoa_2lan2host1: StandardHost {
            @display("p=3051.4053,1069.6063");
        }
        auzoa_2lan2host2: StandardHost {
            @display("p=3107.9126,387.48");
        }
        auzoa_2lan2host3: StandardHost {
            @display("p=3455.0303,613.51");
        }
        auzoa_2switch2: EthernetSwitch {
            @display("p=3358.1602,900.0838");
        }

        auzoa_3lan1host1: StandardHost {
            @display("p=3790.039,1340.035");
        }
        auzoa_3lan1host2: StandardHost {
            @display("p=4100.83,1146.295");
        }
        auzoa_3lan1host3: StandardHost {
            @display("p=4560.963,1408.6514");
        }
        auzoa_3switch1: EthernetSwitch {
            @display("p=4129.084,1376.3613");
        }

        auzoa_3lan2host1: StandardHost {
            @display("p=3531.719,1606.4276");
        }
        auzoa_3lan2host2: StandardHost {
            @display("p=3725.459,2151.3213");
        }
        auzoa_3lan2host3: StandardHost {
            @display("p=4064.504,1884.9288");
        }
        auzoa_3switch2: EthernetSwitch {
            @display("p=3685.0964,1872.8201");
        }

        auzoa_23router: Router {
            @display("p=3471.1753,1263.3463");
        }

        //auzoa_23AP: AccessPoint {
        //    @display("p=4003.96,1194.73");
        //}
        //auzoa_23lan3host1: WirelessHost {
        //    @display("p=3814.2563,1444.9775");
        //}
        //auzoa_23lan3host2: WirelessHost {
        //    @display("p=4161.3735,1444.9775");
        //}
        // =======================
        // Backbone y Datacenter
        // =======================
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=150,400");
        }
        backbonerouter1: Router {
            @display("p=1356.18,2066.56;i=abstract/router2");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=2000,-314");
        }
        visualizer: IntegratedCanvasVisualizer {
            @display("p=1616,-323");
        }

        backbonerouter2: Router {
            @display("p=2599.3452,2462.1125;i=abstract/router2");
        }

        dataCenterRouter16: Router {
            @display("p=2147.2852,343.08127");
        }
        dataCenterSwitch16: EthernetSwitch {
            @display("p=1981.7988,125.12376");
        }
        server1_16: StandardHost {
            @display("p=1267.3824,96.87");
        }
        server2_16: StandardHost {
            @display("p=2575.1277,117.051254");
        }

        dataCenterRouter78: Router {
            @display("p=609.4738,3693.169");
        }
        dataCenterSwitch78: EthernetSwitch {
            @display("p=403.62503,4125.048");
        }
        server1_78: StandardHost {
            @display("p=1005.0263,4032.214");
        }
        server2_78: StandardHost {
            @display("p=205.84875,3277.4353");
        }

        dataCenterRouter45: Router {
            @display("p=4169.4463,2514.584");
        }
        dataCenterSwitch45: EthernetSwitch {
            @display("p=4468.129,2752.7227");
        }
        server1_45: StandardHost {
            @display("p=3753.7126,2926.2815");
        }
        server2_45: StandardHost {
            @display("p=4912.1167,2571.0913");
        }

        dataCenterRouter23: Router {
            @display("p=4007.9966,758.81506");
        }
        dataCenterSwitch23: EthernetSwitch {
            @display("p=4367.2227,536.8213");
        }
        server1_23: StandardHost {
            @display("p=4347.0415,226.03001");
        }
        server2_23: StandardHost {
            @display("p=4746.6304,694.23505");
        }
    connections:
        // Backbone

        // Datacenter
       // dataCenterRouter.ethg++ <--> Eth10M <--> dataCenterSwitch.ethg++;
        //server1.ethg++ <--> Eth10M <--> dataCenterSwitch.ethg++;
        //server2.ethg++ <--> Eth10M <--> dataCenterSwitch.ethg++;

		// =======================
        // Auzoa_16(DeustuAbando)
        // =======================
        auzoa_6switch1.ethg++ <--> Core200G <--> auzoa_16router.ethg++;
        auzoa_6switch2.ethg++ <--> Core200G <--> auzoa_16router.ethg++;
        auzoa_6lan2host2.ethg++ <--> Core200G <--> auzoa_6switch2.ethg++;
        auzoa_6lan2host3.ethg++ <--> Core200G <--> auzoa_6switch2.ethg++;
        auzoa_6lan2host1.ethg++ <--> Core200G <--> auzoa_6switch2.ethg++;
        auzoa_6lan1host2.ethg++ <--> Core200G <--> auzoa_6switch1.ethg++;
        auzoa_6lan1host1.ethg++ <--> Core200G <--> auzoa_6switch1.ethg++;
        auzoa_6lan1host3.ethg++ <--> Core200G <--> auzoa_6switch1.ethg++;
        auzoa_1lan1host1.ethg++ <--> Core200G <--> auzoa_1switch1.ethg++;
        auzoa_1lan1host2.ethg++ <--> Core200G <--> auzoa_1switch1.ethg++;
        auzoa_1lan1host3.ethg++ <--> Core200G <--> auzoa_1switch1.ethg++;
        auzoa_1lan2host2.ethg++ <--> Core200G <--> auzoa_1switch2.ethg++;
        auzoa_1lan2host3.ethg++ <--> Core200G <--> auzoa_1switch2.ethg++;
        auzoa_1lan2host1.ethg++ <--> Core200G <--> auzoa_1switch2.ethg++;
        auzoa_1switch1.ethg++ <--> Core200G <--> auzoa_16router.ethg++;
        auzoa_1switch2.ethg++ <--> Core200G <--> auzoa_16router.ethg++;

        // =======================
        // Auzoa_78 (ErrekaldeBasurto)
        // =======================
        auzoa_8switch1.ethg++ <--> Core200G <--> auzoa_78router.ethg++;
        auzoa_8switch2.ethg++ <--> Core200G <--> auzoa_78router.ethg++;
        auzoa_8lan2host2.ethg++ <--> Core200G <--> auzoa_8switch2.ethg++;
        auzoa_8lan2host3.ethg++ <--> Core200G <--> auzoa_8switch2.ethg++;
        auzoa_8lan2host1.ethg++ <--> Core200G <--> auzoa_8switch2.ethg++;
        auzoa_8switch1.ethg++ <--> Core200G <--> auzoa_8lan1host1.ethg++;
        auzoa_8lan1host2.ethg++ <--> Core200G <--> auzoa_8switch1.ethg++;
        auzoa_8lan1host3.ethg++ <--> Core200G <--> auzoa_8switch1.ethg++;
        auzoa_7switch2.ethg++ <--> Core200G <--> auzoa_78router.ethg++;
        auzoa_7switch1.ethg++ <--> Core200G <--> auzoa_78router.ethg++;
        auzoa_7lan1host1.ethg++ <--> Core200G <--> auzoa_7switch1.ethg++;
        auzoa_7lan1host2.ethg++ <--> Core200G <--> auzoa_7switch1.ethg++;
        auzoa_7lan1host3.ethg++ <--> Core200G <--> auzoa_7switch1.ethg++;
        auzoa_7lan2host1.ethg++ <--> Core200G <--> auzoa_7switch2.ethg++;
        auzoa_7lan2host3.ethg++ <--> Core200G <--> auzoa_7switch2.ethg++;
        auzoa_7lan2host2.ethg++ <--> Core200G <--> auzoa_7switch2.ethg++;

        // =======================
        // Auzoa_45 (BegoñaIbaiondo)
        // =======================
        auzoa_5switch3.ethg++ <--> ONT_Rout_Eth_PC <--> auzoa_5lan3host1.ethg++;
        auzoa_5switch3.ethg++ <--> Core100G <--> auzoa_45router.ethg++;
        auzoa_5switch2.ethg++ <--> Core100G <--> auzoa_45router.ethg++;
        auzoa_5switch1.ethg++ <--> Core100G <--> auzoa_45router.ethg++;
        auzoa_5lan2host1.ethg++ <--> Core100G <--> auzoa_5switch2.ethg++;
        auzoa_5lan2host3.ethg++ <--> Core100G <--> auzoa_5switch2.ethg++;
        auzoa_5lan2host2.ethg++ <--> Core100G <--> auzoa_5switch2.ethg++;
        auzoa_5switch3.ethg++ <--> Core100G <--> auzoa_5lan3host3.ethg++;
        auzoa_5switch3.ethg++ <--> Core100G <--> auzoa_5lan3host2.ethg++;
        auzoa_5lan1host1.ethg++ <--> ONT_Rout_Eth_PC <--> auzoa_5switch1.ethg++;
        auzoa_5lan1host3.ethg++ <--> Core100G <--> auzoa_5switch1.ethg++;
        auzoa_5lan1host2.ethg++ <--> ONT_Rout_WiFi_PC <--> auzoa_5switch1.ethg++;
        auzoa_4lan2host1.ethg++ <--> Core100G <--> auzoa_4switch2.ethg++;
        auzoa_4lan2host3.ethg++ <--> Core100G <--> auzoa_4switch2.ethg++;
        auzoa_4lan2host2.ethg++ <--> Core100G <--> auzoa_4switch2.ethg++;
        auzoa_4lan1host2.ethg++ <--> Core100G <--> auzoa_4switch1.ethg++;
        auzoa_4lan1host3.ethg++ <--> Core100G <--> auzoa_4switch1.ethg++;
        auzoa_4lan1host1.ethg++ <--> Core100G <--> auzoa_4switch1.ethg++;
        auzoa_4switch2.ethg++ <--> Core100G <--> auzoa_45router.ethg++;
        auzoa_4switch1.ethg++ <--> Core100G <--> auzoa_45router.ethg++;

        // =======================
        // Auzoa_23 (UribarriOtxar)
        // =======================
        auzoa_3switch1.ethg++ <--> Core200G <--> auzoa_23router.ethg++;
        auzoa_3switch2.ethg++ <--> Core200G <--> auzoa_23router.ethg++;
        auzoa_2switch1.ethg++ <--> Core200G <--> auzoa_23router.ethg++;
        auzoa_2switch2.ethg++ <--> Core200G <--> auzoa_23router.ethg++;
        auzoa_3lan1host1.ethg++ <--> Core200G <--> auzoa_3switch1.ethg++;
        auzoa_3lan1host3.ethg++ <--> Core200G <--> auzoa_3switch1.ethg++;
        auzoa_3lan1host2.ethg++ <--> Core200G <--> auzoa_3switch1.ethg++;
        auzoa_2lan2host2.ethg++ <--> Core200G <--> auzoa_2switch2.ethg++;
        auzoa_2lan2host3.ethg++ <--> Core200G <--> auzoa_2switch2.ethg++;
        auzoa_2lan2host1.ethg++ <--> Core200G <--> auzoa_2switch2.ethg++;
        auzoa_2lan1host1.ethg++ <--> Core200G <--> auzoa_2switch1.ethg++;
        auzoa_2lan1host3.ethg++ <--> Core200G <--> auzoa_2switch1.ethg++;
        auzoa_2lan1host2.ethg++ <--> Core200G <--> auzoa_2switch1.ethg++;
        auzoa_3lan2host1.ethg++ <--> Core200G <--> auzoa_3switch2.ethg++;
        auzoa_3lan2host2.ethg++ <--> Core200G <--> auzoa_3switch2.ethg++;
        auzoa_3lan2host3.ethg++ <--> Core200G <--> auzoa_3switch2.ethg++;

        // =======================
        // BackboneRouters (200G)
        // =======================
        backbonerouter1.ethg++ <--> Core200G <--> auzoa_78router.ethg++;
        auzoa_16router.ethg++ <--> Core200G <--> backbonerouter1.ethg++;
        auzoa_45router.ethg++ <--> Core200G <--> backbonerouter1.ethg++;
        auzoa_23router.ethg++ <--> Core200G <--> backbonerouter1.ethg++;

        auzoa_45router.ethg++ <--> Core200G <--> backbonerouter2.ethg++;
        auzoa_78router.ethg++ <--> Core200G <--> backbonerouter2.ethg++;
        auzoa_23router.ethg++ <--> Core200G <--> backbonerouter2.ethg++;
        auzoa_16router.ethg++ <--> Core200G <--> backbonerouter2.ethg++;

        backbonerouter1.ethg++ <--> Core200G <--> backbonerouter2.ethg++;


		// =======================
        // Datacenters
        // =======================
        auzoa_45router.ethg++ <--> Core200G <--> dataCenterRouter45.ethg++;
        dataCenterSwitch45.ethg++ <--> Core200G <--> dataCenterRouter45.ethg++;
        server2_45.ethg++ <--> Core200G <--> dataCenterSwitch45.ethg++;
        server1_45.ethg++ <--> Core200G <--> dataCenterSwitch45.ethg++;
        auzoa_23router.ethg++ <--> Core200G <--> dataCenterRouter23.ethg++;
        dataCenterRouter23.ethg++ <--> Core200G <--> dataCenterSwitch23.ethg++;
        server1_23.ethg++ <--> Core200G <--> dataCenterSwitch23.ethg++;
        server2_23.ethg++ <--> Core200G <--> dataCenterSwitch23.ethg++;
        dataCenterRouter78.ethg++ <--> Core200G <--> auzoa_78router.ethg++;
        dataCenterSwitch78.ethg++ <--> Core200G <--> dataCenterRouter78.ethg++;
        server2_78.ethg++ <--> Core200G <--> dataCenterSwitch78.ethg++;
        server1_78.ethg++ <--> Core200G <--> dataCenterSwitch78.ethg++;
        dataCenterRouter16.ethg++ <--> Core200G <--> auzoa_16router.ethg++;
        dataCenterSwitch16.ethg++ <--> Core200G <--> dataCenterRouter16.ethg++;
        server2_16.ethg++ <--> Core200G <--> dataCenterSwitch16.ethg++;
        server1_16.ethg++ <--> Core200G <--> dataCenterSwitch16.ethg++;
        //auzoa_5switch2.ethg++ <--> Core200G <--> auzoa_45AP.ethg++;
}
