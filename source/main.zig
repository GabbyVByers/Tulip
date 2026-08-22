
const std = @import("std");
const Io = std.Io;

const EXIT_SUCCESS: u8 = 0;
const EXIT_FAILURE: u8 = 1;

//init: std.process.Init
const Tulip = @import("Tulip");
const Window = Tulip.Window;

pub fn main() void {
  Window.create("App Title", 500, 500);
  Window.vsync(false);
  defer Window.destroy();
  
  while (Window.isOpen()) {
    Window.clear(.{ .r = 1, .g = 0, .b = 1, .a = 1 });
    Window.render();
  }
}

