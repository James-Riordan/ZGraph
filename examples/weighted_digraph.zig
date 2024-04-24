// const std = @import("std");
// const Vertex = @import("../src/core/vertex.zig");
// const Edge = @import("../edge.zig").Edge;
// const Metadata = @import("../metadata.zig").Metadata; // Assuming you have a Metadata struct

// const Graph = @import("../src/core/graph.zig").Graph;

// // Define a custom vertex type for weighted directed graph
// const CustomVertexProps = struct {
//     name: []const u8,
//     weight: f64,
// };

// // Create a custom vertex using NewVertex function
// fn NewCustomVertex(id: usize, name: []const u8, weight: f64) Vertex(CustomVertexProps) {
//     return NewVertex(CustomVertexProps, id, CustomVertexProps{
//         .name = name,
//         .weight = weight,
//     });
// }

// pub fn main() void {
//     // Create custom vertices
//     const vertex1 = NewCustomVertex(1, "Vertex 1", 10.5);
//     const vertex2 = NewCustomVertex(2, "Vertex 2", 8.2);

//     // Create edges (weighted directed edges)
//     const edges = []Edge{Edge{ .from = 1, .to = 2, .weight = 5.0 }, Edge{ .from = 2, .to = 1, .weight = 3.5 }};

//     // Initialize metadata
//     var metadata = initMetadata();
//     setStringValue(&metadata, "type", "weighted_directed");

//     // Create a weighted directed graph
//     const weightedDigraph = WeightedDigraph {
//         .vertices = [vertex1, vertex2],
//         .edges = edges,
//         .metadata = metadata,
//     };

//     // Define the WeightedDigraph struct
//     pub const weightedDigraph = Graph.New([vertex1, vertex2], );

//     // Example: Print metadata value
//     const typeValue = try getStringValue(&weightedDigraph.metadata, "type");

//     // if (typeValue != null) {
//     //     std.log.info("Graph Type: {}", .{ typeValue });
//     // } else {
//     //     std.log.error("Metadata value not found");
//     // }
// }
