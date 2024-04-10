fn Properties(comptime T: type) type {
    return struct {
        data: T,
    };
}
