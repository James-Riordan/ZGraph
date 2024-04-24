const std = @import("std");

const KeyValuePair = @import("./core/properties.zig").KeyValuePair;
const Properties = @import("./core/properties.zig").Properties;
const Vertex = @import("./core/vertex.zig").Vertex;
const Edge = @import("./core/edge.zig").Edge;
const Graph = @import("./core/graph.zig").Graph;

pub fn main() !void {
    std.debug.print("Hello World!", .{});
    // const digraph_props = Properties("graph_type", "digraph");
    // const example_digraph = Graph.new(digraph_props);

    // 1 ... Add vertices to DiGraph
    // 2 ... Add edges to DiGraph

    // Now you have a barebones Graph Database capable of storing -
    // vertices & edges of any data type

    // Any additional interaction with the DB will be via functions
    // e.g: Graph Traversal and Pathfinder Algorithms
    // e.g CRUD of Vertices/Edges

    // Additional features will be buil to make ZGraph multi-threaded,
    // distributed, fault-tolerant, customizable as an ACID-compliant
    // hybrid In-Memory & Disc DB, with disc backups (snapshots).
}
