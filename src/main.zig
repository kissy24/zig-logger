const std = @import("std");
const logger = @import("logger.zig");

pub fn log(
    comptime message_level: std.log.Level,
    comptime scope: @Type(.EnumLiteral),
    comptime format: []const u8,
    args: anytype,
) void {
    logger.customLog(message_level, scope, format, args);
}

pub fn main() anyerror!void {
    // It can be directly imported and used.
    logger.scoped(.main).info("Imported and used.", .{});
    // CustomLog can be used from std log.
    std.log.scoped(.main).info("Used in accordance with std.log.", .{});
}
