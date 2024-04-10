const std = @import("std");

// Properties is a generic
const Properties = @import("properties.zig").Properties;

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
