@tool
extends CompositorEffect
class_name CustomEffect

## A class capable of load any [RDShaderFile] like a regular CompositorEffect.
## 
## Custom effects are a [Resource] type that handles Compute Shaders like [ShaderMaterial].
## it works as a intermediate of the shader and [CompositorEffect]'s shader processing system, 
## so it works without any script in middle.
##
## @tutorial(The Compositor): https://docs.godotengine.org/en/latest/tutorials/rendering/compositor.html

## the program [RDShaderFile] used to apply the effect.
@export var shader : RDShaderFile
