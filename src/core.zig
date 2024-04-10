const std = @import("std");

// NOTE: Zig does generics by having functions that return types.
fn Properties(comptime T: type) type {
    return struct {
        properties: T,
    };
}

// Define the Vertex struct with generic properties container
fn Vertex(comptime PropsType: type) type {
    return struct {
        id: usize, // Unique identifier for the vertex
        props: PropsType, // Properties container for Vertex
    };
}

// Constructor for creating a vertex with multiple properties using generics
fn NewVertex(comptime PropsType: type, id: usize, props: PropsType) Vertex(PropsType) {
    return Vertex(PropsType){ .id = id, .props = props };
}

// Define Edge structure
pub const Edge = struct {
    id: u64,
    source_id: u64,
    target_id: u64,
    properties: std.HashMap(usize, []const u8),
};

// Define Graph structure
pub const Graph = struct {
    vertices: std.HashMap(u64, Vertex),
    edges: std.HashMap(u64, Edge),
};

// Initialize a new graph
pub fn newGraph() Graph {
    return Graph{
        .vertices = std.HashMap(u64, Vertex).init(10), // Initialize with initial capacity
        .edges = std.HashMap(u64, Edge).init(10), // Initialize with initial capacity
    };
}

// Add a vertex to the graph
pub fn addVertex(graph: *Graph, id: u64, properties: std.HashMap(usize, []const u8)) !void {
    if (graph.vertices.get(id)) |vertex| {
        return std.Err.InvalidId;
    }
    const vertex = Vertex{ .id = id, .properties = properties };
    graph.vertices.put(id, vertex);
}

// Add an edge to the graph
pub fn addEdge(graph: *Graph, id: u64, sourceId: u64, targetId: u64, properties: std.HashMap(usize, []const u8)) !void {
    if (!graph.vertices.get(sourceId) or !graph.vertices.get(targetId)) {
        return std.Err.InvalidId;
    }
    const edge = Edge{ .id = id, .source_id = sourceId, .target_id = targetId, .properties = properties };
    graph.edges.put(id, edge);
}

// Get a vertex from the graph
pub fn getVertex(graph: *Graph, id: u64) !Vertex {
    return graph.vertices.get(id) orelse return std.Err.InvalidId;
}

// Get an edge from the graph
pub fn getEdge(graph: *Graph, id: u64) !Edge {
    return graph.edges.get(id) orelse return std.Err.InvalidId;
}

// Example usage
pub fn main() void {
    var myGraph = newGraph();
    const vertexProps = std.HashMap(usize, []const u8).init(5); // Initialize properties hashmap
    vertexProps.put(1, "name".ptr); // Add properties
    vertexProps.put(2, "age".ptr);
    try addVertex(&myGraph, 1, vertexProps);

    const edgeProps = std.HashMap(usize, []const u8).init(3); // Initialize properties hashmap
    edgeProps.put(1, "weight".ptr); // Add properties
    try addEdge(&myGraph, 1, 1, 2, edgeProps);

    const myVertex = try getVertex(&myGraph, 1);
    const myEdge = try getEdge(&myGraph, 1);

    // Print vertex and edge properties
    const name = myVertex.properties.get(1) orelse "?";
    const weight = myEdge.properties.get(1) orelse "?";
    std.debug.print("Vertex name: {}\n", .{name});
    std.debug.print("Edge weight: {}\n", .{weight});
}
