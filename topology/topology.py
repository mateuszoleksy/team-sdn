from mininet.topo import Topo


class MonTopo(Topo):
    """s1 = core; s2..s4 = edge, 3 hosts each.
    Ports: on s1, port k -> s(k+1); on edge switches, port 1 = uplink to s1."""

    def build(self, bw=100):
        core = self.addSwitch("s1")
        for i in range(3):
            edge = self.addSwitch(f"s{i + 2}")
            self.addLink(core, edge, bw=bw)
            for j in range(3):
                host = self.addHost(f"h{3 * i + j + 1}")
                self.addLink(edge, host, bw=bw)


topos = {"montopo": MonTopo}
