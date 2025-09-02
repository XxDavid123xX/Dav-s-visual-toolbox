@tool
extends EditorPlugin

# TODO: configure all DVT settings
# TODO: Setup the main screen part
# TODO: configure sub-plugins
 
var custom_effect = preload("res://addons/dav's_visuals_toolbox/scripts/custom_effect.gd")
var icon_placeholder = EditorInterface.get_editor_theme().get_icon("Node", "EditorIcons")

func _enable_plugin() -> void:
	add_autoload_singleton("DVTSettings","res://addons/dav's_visuals_toolbox/scripts/DVT_settings.gd")


func _disable_plugin() -> void:
	if Engine.has_singleton("DVTSettings"):
		remove_autoload_singleton("DVTSettings")


func _enter_tree() -> void:
	add_custom_type("CustomEffect", "CompositorEffect", custom_effect, icon_placeholder)


func _exit_tree() -> void:
	remove_custom_type("CustomEffect")
