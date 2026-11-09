# team-sdn
# Adaptive SDN Monitoring

Adaptive polling of switch statistics in SDN, based on the PayLess algorithm.
The polling interval τ changes with traffic: it grows when traffic is stable
and shrinks on sudden changes, reducing monitoring overhead while keeping accuracy.

Built with the Ryu controller and the Mininet simulator.

## Topology: 4 switches, 9 hosts

```mermaid
graph TD
    s1(("s1 (core)"))
    s1 === s2((s2))
    s1 --- s3((s3))
    s1 --- s4((s4))
    s2 --- h1["h1 → h4"]
    s2 --- h2["h2 → h7"]
    s2 --- h3[h3]
    s3 --- h4["h4 ← h1"]
    s3 --- h5["h5 → h9"]
    s3 --- h6[h6]
    s4 --- h7["h7 ← h2"]
    s4 --- h8[h8]
    s4 --- h9["h9 ← h5"]
```

UDP traffic (iperf) between host groups; the s1–s2 link carries several flows.

## References

- [PayLess: A low cost network monitoring framework for Software Defined Networks](https://ieeexplore.ieee.org/document/6838227)
- [Dynamic Telemetry and Deep Neural Networks for Anomaly Detection in 6G Software-Defined Networks](https://www.mdpi.com/2079-9292/13/2/382)
- [OpenNetMon: Network monitoring in OpenFlow Software-Defined Networks](https://ieeexplore.ieee.org/document/6838228)

## License

MIT - AGH
