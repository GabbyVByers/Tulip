
::
::             _
::             \`*-.
::              )  _`-.
::             .  : `. .     *paws at u cutely :3*
::             : _   '  \
::             ; *` _.   `*-._
::             `-.-'          `-.
::    *meow*     ;       `       `.
::               :.       .        \
::               . \  .   :   .-'   .
::               '  `+.;  ;  '      :
::               :  '  |    ;       ;-.
::               ; '   : :`-:     _.`* ;
::            .*' /  .*' ; .*`- +'  `*'
::            `*-*   `*-*  `*-*'
::

@echo off
echo Compiling Shaders (Using GLSLC From VULKAN SDK):

@echo on
glslc "shader.vert" -o "vertex.spv"
glslc "shader.frag" -o "fragment.spv"

@echo off
pause

