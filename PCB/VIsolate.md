#  VIsolate
## [[Voronoi diagram]] Isolate

- https://groups.csail.mit.edu/drl/wiki/index.php?title=Visolate:_Voronoi_Toolpaths_for_PCB_Mechanical_Etch
	- https://ilp.mit.edu/node/38143

![](https://groups.csail.mit.edu/drl/wiki/images/2/2c/ATM0PCB0-three-ways-med.jpg)

Printed Circuit Boards ([[PCB]]s) are in virtually every piece of modern electronics. They usually start out as a sheet of [[fiberglass]] or [[phenolic]] coated on one or both sides with a continuous sheet of copper (called [[cladding]]). In normal manufacturing, a [[photochemical]] process removes much of that copper, leaving a pattern of traces (i.e. wires) to which electronic components are [[solder]]ed to form the desired [[circuit]].

For some applications, particularly very [[low-volume production]], production in home or office environments, and rapid-design cycle R&D environments, the setup costs, environmental hazards, mess, and, not least, sensitivity of such photochemical processes to many variables, suggest that other methods of PCB production be explored.

Mechanical etch is one major alternate method for PCB production. This process also starts with a copper-clad board. However, the unwanted copper is removed [[mechanically]] rather than [[chemically]]. Most often, a fine-point rotary tool bit is used to create a separation in the copper around the boundary of each trace (like the middle board in the picture below). The extra copper remaining between the traces is usually left in-place, as it is no longer electrically connected to any trace.

There are a number of commercial systems already available which perform mechanical etch by cutting such trace outlines, for example [[LPKF]]'s products. We were are interested in an alternate method: compute the [[PCB/voronoi]] region associated with each trace and cut along the boundaries between such regions. This method may have some advantages.

## advantages

The standard practice of cutting a loop around the boundary of each trace will always produce two cutter passes between any two adjacent traces, even when the traces are so closely spaced that these passes may overlap. This results in an unnecessarily long toolpath, which translates to longer production time. Even when the passes do not quite overlap, we must still consider second-order effects which may degrade the geometry of such closely spaced cuts, e.g. play in the machine and flexing of the cutter (effects which may be exacerbated in the lowest-cost hardware). By merging the two passes into one in such cases, we can get a single pass maximally distant from both traces. In many cases that would also effectively widen the traces, thus increasing current carrying capacity, which is a concern in tiny circuits that must carry power. This motivation led us to the concept of Voronoi toolpaths: we compute a generalized [[Voronoi diagram]] using the PCB traces as Voronoi sites, and then we 
- cut only along the boundaries between the resulting Voronoi regions.

We have implemented a prototype software system called **VIsolate** (Voronoi Isolate) which computes both standard outline toolpaths and our novel Voronoi toolpaths using an adaptation of the graphics-hardware-based generalized Voronoi diagram algorithm and on the raster-to-vector algorithms employed in [[people/Selinger]]'s [[Potrace]] program. We have tested VIsolate by cutting several PCBs on a [[Sherline CNC]] [[mini-mill]].
