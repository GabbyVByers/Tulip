
const std = @import("std");
const SDL = @cImport({@cInclude("SDL3/SDL.h");});

const EXIT_SUCCESS: u8 = 0;
const EXIT_FAILURE: u8 = 1;

pub const Window = struct {
  
  var window: ?*SDL.SDL_Window = null;
  var device: ?*SDL.SDL_GPUDevice = null;
  
  pub fn create(title: []const u8, screen_width: i32, screen_height: i32) void {
    
    if (!SDL.SDL_Init(SDL.SDL_INIT_VIDEO)) {
      std.debug.print("SDL3 Error Code: Failed: {s}", .{ SDL.SDL_GetError() });
      std.process.exit(EXIT_FAILURE);
    }
    
    var width: i32 = undefined;
    var height: i32 = undefined;
    const min_width: i32 = 256;
    const min_height: i32 = 128;
    width = @max(screen_width, min_width);
    height = @max(screen_height, min_height);
    
    window = SDL.SDL_CreateWindow(@ptrCast(title), width, height, SDL.SDL_WINDOW_RESIZABLE);
    device = SDL.SDL_CreateGPUDevice(SDL.SDL_GPU_SHADERFORMAT_SPIRV, true, null);
    
    if (!SDL.SDL_ClaimWindowForGPUDevice(device, window)) {
      std.debug.print("SDL3 Error Code: {s}", .{ SDL.SDL_GetError() });
      std.process.exit(EXIT_FAILURE);
    }
    
    
    
  }
};

