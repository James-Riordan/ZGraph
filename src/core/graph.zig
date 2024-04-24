// const std = @import("std");
// const Properties = @import("properties.zig").Properties;
// const Vertex = @import("vertex.zig").Vertex;
// const Edge = @import("edge.zig").Edge;
// const Metadata = @import("metadata.zig").Metadata;

// // Define the Graph struct with generic properties container
// fn Graph(comptime PropsType: type) type {
//     return struct {
//         vertices: std.ArrayListUnmanaged(Vertex(Properties(PropsType))) = .{},
//         edges: std.ArrayListUnmanaged(Edge(Properties(PropsType))) = .{},
//         metadata: std.ArrayListUnmanaged(Metadata) = .{}, // Define wth is this
//         allocator: std.mem.Allocator,

//         // Constructor for creating a graph using generics
//         fn new(ally: std.mem.Allocator) Graph(PropsType) {
//             return .{
//                 .allocator = ally,
//             };
//         }
//     };
// }

// fn KeyValuePair(comptime Key: type, comptime Value: type) type {
//     return struct {
//         vertices: std.ArrayListUnmanaged(Vertex(Properties(PropsType))) = .{},
//         edges: std.ArrayListUnmanagedEdge(Properties(PropsType)) = .{},
//         metadata: std.ArrayListUnmanaged(Metadata) = .{}, // Define wth is this
//         allocator: std.mem.Allocator,

//         // Constructor for creating a graph using generics
//         fn new(ally: std.mem.Allocator) Graph(PropsType) {
//             return .{
//                 .allocator = ally,
//             };
//         }
//     };
// }

// // pub fn main() void {
// //     // Example usage
// //     const graph = Graph.New(i32);

// //     // Add vertices and edges to the graph
// //     const v1 = NewVertex(i32, 1, Properties{i32}{ .data = 100 });
// //     const v2 = NewVertex(i32, 2, Properties{i32}{ .data = 200 });
// //     const e1 = NewEdge(i32, 1, Properties{i32}{ .data = 300 });

// //     graph.vertices = append(graph.vertices, v1);
// //     graph.vertices = append(graph.vertices, v2);
// //     graph.edges = append(graph.edges, e1);

// //     // Print graph information
// //     std.debug.print("Number of vertices: {}, Number of edges: {}\n", .{
// //         graph.vertices.len,
// //         graph.edges.len,
// //     });
// // }
