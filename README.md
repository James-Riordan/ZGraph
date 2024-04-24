<a href="https://zgraph.xyz/">
    <img src="https://gist.githubusercontent.com/James-Riordan/a67bae3fd380bc23153c7a6446fa9d11/raw/3965fdde3b8e8e9b99365a87603f4b33abfb721e/ZGraph-Logo.svg" alt="ZGraph Logo" title="ZGraph" align="right" height="100" />
</a>

<!-- ![ZGraph Logo](https://gist.githubusercontent.com/James-Riordan/a67bae3fd380bc23153c7a6446fa9d11/raw/3965fdde3b8e8e9b99365a87603f4b33abfb721e/ZGraph-Logo.svg) -->

# ZGraph

ZGraph is a high-performance, generic graph processing framework built in Zig, designed to provide efficient tools for building, traversing, and analyzing graphs of any size and complexity.

## Feature Highlights

- **Generic Graph Framework:**
ZGraph offers generic structures for graphs, vertices, and edges, allowing developers to work with graphs of any data type.

- **Graph Algorithms:** Includes a variety of graph algorithms such as breadth-first search (BFS), depth-first search (DFS), shortest path algorithms (Dijkstra's, A*), and more.

- **Performance-Oriented:** ZGraph is built with performance in mind, leveraging Zig's low-level control and efficient memory management to handle large-scale graph processing tasks.

- **ACID Compliance:** Ensures ACID transactions for data integrity and consistency in graph operations.

- **Distributed Architecture:** Supports distributed transactions, sharding, replication, partitioning, and clustering for scalability and fault tolerance.

- **Scalability:** Supports elastic horizontal scalability, dynamic workloads, and high throughput transactions.

- **High-Availability:** Provides mechanisms for ensuring high availability through fault tolerance, leader election, and replica synchronization.

- **MVCC (Multi-Version Concurrency Control):** Implements MVCC for transaction management, data versioning, and concurrency control mechanisms.

- **Log-Structured Storage:** Manages data storage efficiently with log-based storage mechanisms, write-ahead logging (WAL), and optimized disk operations.

- **Custom Memory Allocator:** Utilizes Zig's memory management capabilities for optimized database operations and resource utilization.

- **WASM Compilation:** Can be compiled to WebAssembly, enabling browser-based applications and versatile deployment options.

- **Gremlin Compatibility (WIP):** Integrates with Gremlin-compatible graph databases, enabling seamless data extraction and processing using Zig's capabilities.

- **Documentation & Examples:** Comprehensive documentation and example code to help developers get started quickly and leverage ZGraph's features effectively.

- **Multi-Language Support:** Provides wrappers and bindings for integrating ZGraph with other programming languages, ensuring users can leverage Zig's performance and memory management across different environments.

- **Performance Monitoring and Metrics:** Offers monitoring and metrics collection features for performance analysis and system instrumentation.

- **Customizable Configuration:** Allows customizable configurations for cache sizes, storage options, and concurrency settings to tailor performance and resource usage.

## Getting Started

To use ZGraph in your Zig project, follow these steps:

**1. Add ZGraph as a dependency (.zon):**

```sh
// build.zig.zon
.{
    // -- snip --
    .dependencies = .{
        // -- snip --
        .zgraph = .{
            .url = "https://github.com/James-Riordan/zgraph/archive/<commit SHA>.tar.gz",
            .hash = "<dependency hash>",
        },
    },
}
```

run `zig fetch --save <URL>`

OR

put in the depedency URL, leave the `.hash` field empty, and run `zig build` for terminal to provide the  correct `.hash` to use

**2. Build the ZGraph library:**

```sh
cd zgraph
zig build
```

**3. Link the ZGraph library to your Zig project:**

Add the necessary `build.zig` configuration to your project to link against the ZGraph library.

---

To build upon ZGraph in other languages:

TODO...

### Explore Examples:

Check out the examples directory for sample code demonstrating graph creation, traversal, and algorithm usage.

### Read the Documentation:

Refer to the [documentation](https://zgraph.xyz) for detailed documentation on ZGraph's APIs, usage guidelines, and performance optimizations.

### How to use ZGraph as a Library

Zig Library Usage

```zig

TODO...  INCOMPLETE...

const std = @import("std");
const zgraph = @import("zgraph.zig");

pub fn main() void {
    const graph = zgraph.Graph(u32).new(std.heap.page_allocator);
    defer graph.deinit();

    // Add vertices and edges, perform graph algorithms, etc.
}
Binary Executable
You can also run ZGraph as a standalone binary executable via main.zig for testing and development purposes.
```

```sh
zig build-exe main.zig
```

### How to use ZGraph as an Executable

Zig Library Usage

```zig
TODO...

```

```sh
zig build-exe main.zig
```

### How to use ZGraph via WASI (WASM)

Zig Library Usage

```zig
TODO
```

```sh
TODO
```

### Integrating with Other Languages

ZGraph provides support for integration with various programming languages through their specific FFI mechanisms:

- **Go:** Uses cgo, so ZGraph offers a C wrapper for Zig functions.

- **TypeScript/JavaScript:** Uses N-API or ffi-napi to bind to Zig's shared library or embeds WASM compiled Zig code in the web app directly.

- **Python:** Supports FFI through its ctypes module as well as CFFI for more complex interactions.

- **Rust:** Uses extern "C" declarations and the libc crate.

These bindings allow users of other languages to extend ZGraph's fundamental APIs (Graph, Vertex, Edge, Graph Pathfinding & Traversal Algorithms, etc.) while benefiting from Zig's performance and memory management.

### Contributing

Contributions to ZGraph are welcome! If you have ideas for improvements, bug fixes, or new features, please submit an issue or pull request on the GitHub repository.

### License

ZGraph is licensed under the MIT License.
