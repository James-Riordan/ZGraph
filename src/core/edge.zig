// const std = @import("std");

// // Properties is a generic
// const Properties = @import("properties.zig").Properties;

// // Define the Edge struct with generic properties container
// fn Edge2(comptime IdType: type, comptime PropsType: type) type {
//     return struct {
//         id: IdType,
//         props: std.ArrayListUnmanaged(Properties(PropsType))),

//         fn new(ally: std.mem.Allocator) Graph(PropsType) {
//             return .{
//                 .allocator = ally,
//             };
//         }

//     };
// }

// fn Edge(comptime PropsType: type) type {
//     return struct {
//         id: usize,
//         props:

//         // Constructor for creating a graph using generics
//         fn new(ally: std.mem.Allocator) Graph(PropsType) {
//             return .{
//                 .allocator = ally,
//             };
//         }
//     };
// }

// // Constructor for creating an edge with multiple properties using generics
// fn NewEdge(comptime PropsType: type, id: usize, props: PropsType) Edge(PropsType) {
//     return Edge(PropsType){ .id = id, .props = props };
// }
