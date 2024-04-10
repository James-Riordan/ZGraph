const std = @import("std");

// Properties is a generic
const Properties = @import("properties.zig").Properties;

// Define the Edge struct with generic properties container
fn Edge(comptime PropsType: type) type {
    return struct {
        id: usize, // Unique identifier for the edge
        props: PropsType, // Properties container for Edge
        // Add other edge-specific properties as needed
    };
}

// Constructor for creating an edge with multiple properties using generics
fn NewEdge(comptime PropsType: type, id: usize, props: PropsType) Edge(PropsType) {
    return Edge(PropsType){ .id = id, .props = props };
}
