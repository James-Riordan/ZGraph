// Define a generic KeyValuePair struct
pub fn KeyValuePair(comptime KeyType: type, comptime ValueType: type) type {
    return struct {
        key: KeyType,
        value: ValueType,
    };
}

pub fn Properties(comptime KeyType: type, comptime ValueType: type) type {
    return struct {
        data: []KeyValuePair(KeyType, ValueType),
    };
}
