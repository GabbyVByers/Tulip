
const std = @import("std");
const Io = std.Io;

const EXIT_SUCCESS: u8 = 0;
const EXIT_FAILURE: u8 = 1;

//init: std.process.Init
const Tulip = @import("Tulip");
const Window = Tulip.Window;

pub fn main() void {
  Window.create("App Title", 0, 0);
  std.process.exit(EXIT_SUCCESS);
}

