GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex     �      b�ˈ���<������H   res://.import/left_hand_model.glb-0a7976d29b950727e5aeb313e66702cf.scn  P=      �,     �7W.�$.m�(��H   res://.import/right_hand_model.glb-5462a0aefd8dcabe7f35f5f18c012b18.scn `$     0     �+��}�������pRH   res://.import/touch_controller.dae-173498c575c00b5da5457c9fbea54cbe.scn ��     ��      �s�e���R^4FW   res://CubeTree.tscn �      !      c�2)S�/���4/]�   res://Main.gd          �       ���k���\N��
   res://Main.tscn �      �	      ;�o��k�ޕi�%X�<   res://addons/godot_ovrmobile/example_scenes/arvr_origin.gd  �      �      Mex�PWI��ڦ��<   res://addons/godot_ovrmobile/example_scenes/arvr_origin.tscnP-      �      �w����;���Z<n
@   res://addons/godot_ovrmobile/example_scenes/hand_pointer.tscn   �9      c      `ʎUQ_ ��@t:���H   res://addons/godot_ovrmobile/example_scenes/left_hand_model.glb.import  �i     S|      �����r�^�i��D   res://addons/godot_ovrmobile/example_scenes/oculus_hand_tracker.gd  P�     [      �&)�=�(�Z�j��H   res://addons/godot_ovrmobile/example_scenes/oculus_touch_controller.gd  ��           W5H��)�e�Rrٙf�"@   res://addons/godot_ovrmobile/example_scenes/oculus_tracker.gd   �     �      ���[FB����^A��LD   res://addons/godot_ovrmobile/example_scenes/ray_cast_with_reticle.gdP"     �       ���!F�8:#�;>� <   res://addons/godot_ovrmobile/example_scenes/ray_reticle.tscn0#     *      =�I_�J@�Uk��?�4jH   res://addons/godot_ovrmobile/example_scenes/right_hand_model.glb.import pT     V|      :��j������`�:H2H   res://addons/godot_ovrmobile/example_scenes/touch_controller.dae.import В     V|      <�6�s˱��7���:c   res://default_env.tres  0     �      _1��o{u�$\��!��   res://icon.png  P     �      ���<���	�@-��L�   res://icon.png.import   �     �      �����%��(#AB�   res://project.binary &     Q      ���KCGѵ�Jt3        [gd_scene load_steps=7 format=2]

[sub_resource type="SpatialMaterial" id=1]
albedo_color = Color( 0.501961, 0.196078, 0.027451, 1 )

[sub_resource type="CubeMesh" id=2]
material = SubResource( 1 )
size = Vector3( 0.2, 2, 0.2 )

[sub_resource type="OpenSimplexNoise" id=3]
octaves = 2
period = 6.4
lacunarity = 1.1

[sub_resource type="NoiseTexture" id=4]
seamless = true
noise = SubResource( 3 )

[sub_resource type="SpatialMaterial" id=5]
albedo_color = Color( 0.792157, 0.976471, 0.027451, 1 )
albedo_texture = SubResource( 4 )
uv1_triplanar = true

[sub_resource type="CubeMesh" id=6]
material = SubResource( 5 )

[node name="Trunk" type="MeshInstance"]
transform = Transform( 2, 0, 0, 0, 2, 0, 0, 0, 2, 0, 2, 0 )
mesh = SubResource( 2 )
material/0 = null

[node name="Leaves1" type="MeshInstance" parent="."]
transform = Transform( 0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, -0.193266, 0.755519, 0.168004 )
mesh = SubResource( 6 )
material/0 = null

[node name="Leaves2" type="MeshInstance" parent="."]
transform = Transform( 0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, 0.310108, 1.10613, -0.226342 )
mesh = SubResource( 6 )
material/0 = null

[node name="Leaves3" type="MeshInstance" parent="."]
transform = Transform( 0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, -0.516578, 1.28999, -0.00120366 )
mesh = SubResource( 6 )
material/0 = null
               # This demo scene is part of the Godot Oculus Mobile plugin
# Check the script on $ARVROrigin for more information on how to initialize.

extends Spatial

# nothing here yet
  [gd_scene load_steps=10 format=2]

[ext_resource path="res://Main.gd" type="Script" id=1]
[ext_resource path="res://CubeTree.tscn" type="PackedScene" id=2]
[ext_resource path="res://addons/godot_ovrmobile/example_scenes/arvr_origin.tscn" type="PackedScene" id=3]

[sub_resource type="OpenSimplexNoise" id=1]
octaves = 4
period = 32.0
persistence = 0.6
lacunarity = 2.3

[sub_resource type="NoiseTexture" id=2]
seamless = true
noise = SubResource( 1 )

[sub_resource type="SpatialMaterial" id=3]
albedo_color = Color( 0.568627, 0.968627, 0.0784314, 1 )
albedo_texture = SubResource( 2 )
uv1_scale = Vector3( 2, 2, 2 )
uv1_triplanar = true

[sub_resource type="PlaneMesh" id=4]
material = SubResource( 3 )
size = Vector2( 16, 16 )
subdivide_width = 1
subdivide_depth = 1

[sub_resource type="SpatialMaterial" id=5]
flags_unshaded = true
flags_do_not_receive_shadows = true
albedo_color = Color( 0.980392, 0.717647, 0.384314, 1 )

[sub_resource type="CubeMesh" id=6]
material = SubResource( 5 )
size = Vector3( 0.02, 0.02, 0.02 )

[node name="Main" type="Spatial"]
script = ExtResource( 1 )

[node name="Ground" type="MeshInstance" parent="."]
mesh = SubResource( 4 )
material/0 = null

[node name="DirectionalLight" type="DirectionalLight" parent="."]
transform = Transform( -0.979141, 0, -0.20318, -0.119492, 0.808781, 0.575843, 0.164328, 0.58811, -0.791911, 0, 0, 0 )
shadow_enabled = true

[node name="CPUParticles" type="CPUParticles" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2, -1.051 )
cast_shadow = 0
amount = 256
lifetime = 3.0
speed_scale = 0.1
randomness = 0.44
lifetime_randomness = 0.2
mesh = SubResource( 6 )
emission_shape = 2
emission_box_extents = Vector3( 4, 2, 4 )
direction = Vector3( 0, 0, 0 )
spread = 180.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 1.0
initial_velocity_random = 0.25

[node name="Tree01" parent="." instance=ExtResource( 2 )]
transform = Transform( 2, 0, 0, 0, 2, 0, 0, 0, 2, -4.24679, 2, -3.33821 )

[node name="Tree02" parent="." instance=ExtResource( 2 )]
transform = Transform( -0.586179, 0, 1.91217, 0, 2, 0, -1.91217, 0, -0.586179, 4.04043, 2, 1.63872 )

[node name="Tree03" parent="." instance=ExtResource( 2 )]
transform = Transform( 1.36963, 0, 1.45744, 0, 2, 0, -1.45744, 0, 1.36963, 3.43127, 2, -4.2976 )

[node name="Tree04" parent="." instance=ExtResource( 2 )]
transform = Transform( 1.55405, 0, -1.25894, 0, 2, 0, 1.25894, 0, 1.55405, -2.40111, 2, 1.19577 )

[node name="ARVROrigin" parent="." instance=ExtResource( 3 )]
         extends ARVROrigin
# This is an example implementaiton on how to initialize the Oculus Mobile Plugin (godot_ovrmobile)
# It can be used as a drop-in solution for quick testing or modified to your needs
# It shows some of the common things needed to interact with the Godot Oculus Mobile Plugin
#
# To view log/print messages use `adb logcat -s godot:* GodotOVRMobile:*` from a command prompt


# these will be initialized in the _ready() function; but they will be only available
# on device
# the init config is needed for setting parameters that are needed before the VR system starts up
var ovr_init_config = null;

# the other APIs are available during runtime
var ovr_performance = null;
var ovr_display = null;
var ovr_vr_api_proxy = null;
var ovr_system = null;

# some of the Oculus VrAPI constants are defined in this file. Have a look into it to learn more
var ovrVrApiTypes = load("res://addons/godot_ovrmobile/OvrVrApiTypes.gd").new()

# many settings should only be applied once when running; this variable
# gets reset on application start or when it wakes up from sleep
var _performed_runtime_config = false

func _ready():
	_initialize_ovr_mobile_arvr_interface()


func _process(delta_t):
	_check_and_perform_runtime_config()


# this code check for the OVRMobile inteface; and if successful also initializes the
# .gdns APIs used to communicate with the VR device
func _initialize_ovr_mobile_arvr_interface():
	# Find the OVRMobile interface and initialise it if available
	var arvr_interface = ARVRServer.find_interface("OVRMobile")
	if !arvr_interface:
		print("Couldn't find OVRMobile interface")
	else:
		# the init config needs to be done before arvr_interface.initialize()
		ovr_init_config = load("res://addons/godot_ovrmobile/OvrInitConfig.gdns");
		if (ovr_init_config):
			ovr_init_config = ovr_init_config.new()
			ovr_init_config.set_render_target_size_multiplier(1) # setting to 1 here is the default

		# Configure the interface init parameters.
		if arvr_interface.initialize():
			# load the .gdns classes.
			ovr_display = load("res://addons/godot_ovrmobile/OvrDisplay.gdns");
			ovr_performance = load("res://addons/godot_ovrmobile/OvrPerformance.gdns");
			ovr_vr_api_proxy = load("res://addons/godot_ovrmobile/OvrVrApiProxy.gdns");
			ovr_system = load("res://addons/godot_ovrmobile/OvrSystem.gdns")

			# And now instance the .gdns classes for use if load was successfull
			
			# Update the refresh rate based on the device type. The value could
			# also be picked from the values returned by 
			# ovr_display.get_supported_display_refresh_rates()
			var refresh_rate = 72 # Default common value for Quest devices
			if (ovr_system):
				ovr_system = ovr_system.new()
				if (ovr_system.is_oculus_quest_2_device()):
					refresh_rate = 90 # Only supported on Quest 2 devices
			
			if (ovr_display): 
				ovr_display = ovr_display.new()
				# Get the list of supported display refresh rates.
				print("Display refresh rates: " + str(ovr_display.get_supported_display_refresh_rates()))
				# Get the device color space
				print("Device color space: " + str(ovr_display.get_color_space()))
				# Update the refresh rate
				ovr_display.set_display_refresh_rate(refresh_rate)
				
			if (ovr_performance): 
				ovr_performance = ovr_performance.new()
			if (ovr_vr_api_proxy): 
				ovr_vr_api_proxy = ovr_vr_api_proxy.new()

			get_viewport().arvr = true
			Engine.iterations_per_second = refresh_rate
			
			# Connect to the plugin signals
			_connect_to_signals()

			print("Loaded OVRMobile")
		else:
			print("Failed to enable OVRMobile")


func _connect_to_signals():
	if Engine.has_singleton("OVRMobile"):
		var singleton = Engine.get_singleton("OVRMobile")
		print("Connecting to OVRMobile signals")
		singleton.connect("HeadsetMounted", self, "_on_headset_mounted")
		singleton.connect("HeadsetUnmounted", self, "_on_headset_unmounted")
		singleton.connect("InputFocusGained", self, "_on_input_focus_gained")
		singleton.connect("InputFocusLost", self, "_on_input_focus_lost")
		singleton.connect("EnterVrMode", self, "_on_enter_vr_mode")
		singleton.connect("LeaveVrMode", self, "_on_leave_vr_mode")
	else:
		print("Unable to load OVRMobile singleton...")


func _on_headset_mounted():
	print("VR headset mounted")


func _on_headset_unmounted():
	print("VR headset unmounted")


func _on_input_focus_gained():
	print("Input focus gained")


func _on_input_focus_lost():
	print("Input focus lost")


func _on_enter_vr_mode():
	print("Entered Oculus VR mode")


func _on_leave_vr_mode():
	print("Left Oculus VR mode")


# here we can react on the android specific notifications
# reacting on NOTIFICATION_APP_RESUMED is necessary as the OVR context will get
# recreated when the Android device wakes up from sleep and then all settings will
# need to be reapplied
func _notification(what):
	if (what == NOTIFICATION_APP_RESUMED):
		_performed_runtime_config = false # redo runtime config


func _check_and_perform_runtime_config():
	if _performed_runtime_config: return

	if (ovr_performance):
		# these are some examples of using the ovr .gdns APIs
		ovr_performance.set_clock_levels(1, 1)
		ovr_performance.set_enable_dynamic_foveation(true);  # Enable dynamic foveation
		if (ovr_system and ovr_system.is_oculus_quest_2_device()):
			ovr_performance.set_extra_latency_mode(ovrVrApiTypes.OvrExtraLatencyMode.VRAPI_EXTRA_LATENCY_MODE_OFF)
		else:
			ovr_performance.set_extra_latency_mode(ovrVrApiTypes.OvrExtraLatencyMode.VRAPI_EXTRA_LATENCY_MODE_ON)

	_performed_runtime_config = true

              [gd_scene load_steps=8 format=2]

[ext_resource path="res://addons/godot_ovrmobile/example_scenes/touch_controller.dae" type="PackedScene" id=1]
[ext_resource path="res://addons/godot_ovrmobile/example_scenes/left_hand_model.glb" type="PackedScene" id=2]
[ext_resource path="res://addons/godot_ovrmobile/example_scenes/right_hand_model.glb" type="PackedScene" id=3]
[ext_resource path="res://addons/godot_ovrmobile/example_scenes/arvr_origin.gd" type="Script" id=4]
[ext_resource path="res://addons/godot_ovrmobile/example_scenes/oculus_touch_controller.gd" type="Script" id=5]
[ext_resource path="res://addons/godot_ovrmobile/example_scenes/oculus_hand_tracker.gd" type="Script" id=6]
[ext_resource path="res://addons/godot_ovrmobile/example_scenes/hand_pointer.tscn" type="PackedScene" id=7]

[node name="ARVROrigin" type="ARVROrigin"]
script = ExtResource( 4 )

[node name="ARVRCamera" type="ARVRCamera" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.72656, 0 )

[node name="LeftTouchController" type="ARVRController" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.2, 1.72656, -0.4 )
script = ExtResource( 5 )

[node name="TouchControllerModel" parent="LeftTouchController" instance=ExtResource( 1 )]
transform = Transform( -1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0 )

[node name="RightTouchController" type="ARVRController" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.2, 1.72656, -0.4 )
controller_id = 2
script = ExtResource( 5 )

[node name="TouchControllerModel" parent="RightTouchController" instance=ExtResource( 1 )]
transform = Transform( 1, 0, -8.74228e-08, 0, 1, 0, -8.74228e-08, 0, -1, 0, 0, 0 )

[node name="LeftHand" type="ARVRController" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, -0.132544, 1.65044, -0.301362 )
script = ExtResource( 6 )

[node name="HandModel" parent="LeftHand" instance=ExtResource( 2 )]

[node name="HandPointer" parent="LeftHand/HandModel" instance=ExtResource( 7 )]
visible = false

[node name="RightHand" type="ARVRController" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, 1, 0, -1, -4.37114e-08, 0.346606, 1.72656, -0.4 )
controller_id = 2
script = ExtResource( 6 )

[node name="HandModel" parent="RightHand" instance=ExtResource( 3 )]

[node name="HandPointer" parent="RightHand/HandModel" instance=ExtResource( 7 )]
visible = false
[connection signal="button_pressed" from="LeftTouchController" to="LeftTouchController" method="_on_LeftTouchController_button_pressed"]
[connection signal="button_pressed" from="RightTouchController" to="RightTouchController" method="_on_RightTouchController_button_pressed"]
[connection signal="button_release" from="RightTouchController" to="RightTouchController" method="_on_RightTouchController_button_release"]
[connection signal="button_pressed" from="LeftHand" to="LeftHand" method="_on_LeftHand_pinch_pressed"]
[connection signal="button_release" from="LeftHand" to="LeftHand" method="_on_finger_pinch_release"]
[connection signal="button_pressed" from="RightHand" to="RightHand" method="_on_RightHand_pinch_pressed"]
[connection signal="button_release" from="RightHand" to="RightHand" method="_on_finger_pinch_release"]
[gd_scene load_steps=5 format=2]

[ext_resource path="res://addons/godot_ovrmobile/example_scenes/ray_cast_with_reticle.gd" type="Script" id=1]
[ext_resource path="res://addons/godot_ovrmobile/example_scenes/ray_reticle.tscn" type="PackedScene" id=2]

[sub_resource type="SpatialMaterial" id=1]

[sub_resource type="CylinderMesh" id=2]
material = SubResource( 1 )
top_radius = 0.001
bottom_radius = 0.01
height = 0.05

[node name="HandPointer" type="Spatial"]

[node name="RayCast" type="RayCast" parent="." groups=[
"gast_ray_caster",
]]
enabled = true
cast_to = Vector3( 0, 0, -4 )
script = ExtResource( 1 )

[node name="RayReticle" parent="RayCast" instance=ExtResource( 2 )]

[node name="PointerModel" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, 1, 0, -1, -1.62921e-07, 0, 0, -0.03 )
mesh = SubResource( 2 )
material/0 = null
             RSRC                    PackedScene                                                                 �      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    bind_count    bind/0/name    bind/0/bone    bind/0/pose    bind/1/name    bind/1/bone    bind/1/pose    bind/2/name    bind/2/bone    bind/2/pose    bind/3/name    bind/3/bone    bind/3/pose    bind/4/name    bind/4/bone    bind/4/pose    bind/5/name    bind/5/bone    bind/5/pose    bind/6/name    bind/6/bone    bind/6/pose    bind/7/name    bind/7/bone    bind/7/pose    bind/8/name    bind/8/bone    bind/8/pose    bind/9/name    bind/9/bone    bind/9/pose    bind/10/name    bind/10/bone    bind/10/pose    bind/11/name    bind/11/bone    bind/11/pose    bind/12/name    bind/12/bone    bind/12/pose    bind/13/name    bind/13/bone    bind/13/pose    bind/14/name    bind/14/bone    bind/14/pose    bind/15/name    bind/15/bone    bind/15/pose    bind/16/name    bind/16/bone    bind/16/pose    bind/17/name    bind/17/bone    bind/17/pose    bind/18/name    bind/18/bone    bind/18/pose    bind/19/name    bind/19/bone    bind/19/pose    bind/20/name    bind/20/bone    bind/20/pose    bind/21/name    bind/21/bone    bind/21/pose    bind/22/name    bind/22/bone    bind/22/pose    bind/23/name    bind/23/bone    bind/23/pose 	   _bundled        
   local://1 &      
   local://2 {      
   local://3 �     
   local://4 �        SpatialMaterial             HandMaterial                �)�=?�&?TXr?  �?
   ArrayMesh             l_handMeshNode ?      
         array_data    @�  ��=����Dd�=ޖ ���;6   ��      [�=�����T�p�� ݇��;�5   ��      ~p�==讽ϱa��� ՛?��;(6   ��      ���=���'�Q�^�� ����;�5   ��      ���=������C�{� ���;�5   ��      ׶�=c�����>�j�+ ҍ��;�5   ��      �U�=+����L�0�� ��7��;�5   ��      m��=�Y���x\�� ϻ^��;76   ��      ���=gg��T;�P�? ����;�5   ��      m��=�Y���x\�� n�'��625   ��      �U�=+����L�0�� r.��6d5   ��      �@�="�����W���� b���6\5   ��      �c�=~t��E�F�ʖ+ o�/��6�5   ��      ���=gg��T;�P�? Y���6�5   ��      KZ�=�̯�g9��T w��6�5   ��      �(�=�B����"� �m o�⁌6*6  N��    I@�=:/����)�ˬM k��L6�5  ��M    U��=Ǎ���-��m k�ρ�6�5   ��      /�=�8���z1�ȵU i���6�5   ��      ���= ���c �ӧM n���6&6  ��c0    �Ѱ=�ʠ�z:���0 a��%6�5  .��    ���=���1���- f����5�5  ��I    /�=���
����l q��O6T6  ��,    u�=4����t���o q��6|6  ��V|    ��=�Ŏ����ӨO l����5O6  U��z    ��=.u����T��� O��M6g5   ��      x�=�'���A���8 ]��a6�5   ��      'd�=���i�N��� R���65  .��    g��=h����Vi��˔ �2��;a6   ��      ��=�!��1�_���� "�J��;z6   ��      ��=3���wf��ե 0���;�6  ��    ���=�=���yZ���� @���;�6  6��    -�=�#����a�K$� �遤;6   ��      n�=�f���a�>6� ,�܁�;&6  R��     ��=B/���V�h-� "� ;�5   ��      ��=�K����T�]B� 4�ׁ�;6  	��     ��=�"���6�t+ 2�ց�;�5   ��      [��=�m��$�)�gG ,�ҁ�;�5  ��S     Fv�=�e��^b>�{ �ށ�;�5   ��      ���=tߞ���5�q�8 �ځ�;�5   ��      U��=Ǎ���-��m ��Ł�;j5   ��      y��=iF��3V/�S�Y �с�;�5   ��      �(�=�B����"� �m (�ā�;T5  N��    �]�=K���l"�>�k *�ˁ�;x5  X��    ���=�=���yZ���� I����5C5  6��    ��=�!��1�_���� T��U6+5   ��      ��=�-p�Q���q F�ȁ�:O5 <�f[  �Z�=E���C��p Q�Ё;K5  JԴ+    ���=V�z���:�p O�Ձ";u5  
��*    G(�=t�d�����Dj H�ׁ�:w5 b�SH   ��=�px��\���P s��U5�6 y���  �<�=z6�����ڦP l�5t6  r֌)    �Z�=E���C��p p����5�6  JԴ+    ��=�-p�Q���q r�ց�5�6 <�f[   ҍ=C�{�V��͓% p��&5X6 &�I�  �k�=oc��h����+ e��l5/6  sߋ     ���=[��,�-��� \��B5�5  ��#    _ŉ=G�y�&���� k����4
6 ��-	  ��=�Ǆ�T:���� P��(5�5  ��{(    W��=��u�
-���� b���4�5 n�"
n  W��=��u�
-���� _��;7 n�"
n  Ӎ�=�o�Ѵ8��ʫ N���;�6 �=	�  ��=�Ǆ�T:���� P��9;�6  ��{(    ��=8����E��س F��:;�6  0��/    ӿ�=�P�0�?�F� ?�́;c6 ����   �r�=8VL���4�>W� F�́;06 }���   p!�="�e�>J�P� @�Ł0;R6  3��    ��=�a���=�AZ� F�ȁ,;$6  7��    &�=����jE��� \���5�5  Z��>    ��=`���O�Q���� Q�쁵5_5  ��5    ���=�͏��[:��� X��5�5  C��r    �v�=����7UF���� N���l5�5  /��u    �Q�=gJu��C6�ZW� L�́M;�5  ��p}    xJ�=�ht�v�F�E\� H�ƁP;6  V��{    �O�=��a���.�WY� L�΁*;�5  b�    ��=�Ɛ�j��3�r F�сn;r5  tЊ/    Բ=����F�6�r N�ՁG;r5  ·0x    u�=4����t���o Q�ӁI;F5  ��V|    /�=���
����l E�ˁi;F5  ��,    ӥ=�u��u]��մ ?��;�6  ��c&    ��=`���O�Q���� O����;�6  ��5    ��=�V��g�Q��۲ C��\;�6  ��Jx    �v�=����7UF���� N��];�6  /��u    �'�=R����T-� �؁|:,6  �� %-  T+�=<c����F1� �Ձp:q6  ��\�  ���=�!߼b	�N3� �Ёb:46  ��
&3  M��=�.μ+?�B7� �́W:|6  ��I  �'�=�J¼�	�K6� �ʁJ:56  �_3�  =^譼_�?=� �Ł=:�6  ���]   k�=�騼���H:� �Ł4:-6  ��!G  #�=u���ʇ	�=E� ���%:u6   x͆2    �<�<��ּ}������ �"�V:@8   ��Rn    K�<|���༕�� ��?:r8   ܸ"G    �2�<�Z���[��� ���&:(8   X��v    7��<*�	�6��� ���9?8  c�(�  E�<Ê�7������ U����1�6   ��]    ���<ɵ�sϩ���� M���!1�6   ��xR    �<�<��ּ}������ 5��F1i6   ��Rn    K�<|���༕�� &�쁿0�6   ܸ"G    `f=��1�K�N��R y���^4�7  �Τ(�  �rT=$������V y��4�7  ��,?*  �[H=��9�J{��I w��4^7  �w{  �54=2	*�kL�ޠK u����3�7   ��y    P>���<�&��� Ǒ�h8�1  e��    �>n��<.��� � ̏�8]2   ��      �>�@=^'���=� сR8@2  4��     �
>��	=X����?� Ŝρi8�2  ��g     'e>�=�<�ב��� ��Q�|8�1  S��     q>�s�<������ ƶT��82   ��      m�>ޒ�<w�� �d t�Ё/7�:  ��O    t�>��<����#�e s�΁Y7�:  ��Y    r�>K��<U��| |����6�:  ��r     ĝ>0�=�#Ի{ {��7�:  ��I    g#>�6=ݔ��dL |���6�: ��!K   E>��=�y��z� w ��6; j�<W   �>PB=-��cN {���6�:  ��	    �
>�.=��o��y� s!)�y6; ����   w	0>==1b��R� �Ձ�740   ��      R"3>��=W�c�z � ����7�/   ��      ��0>�=�p��YŽ ���80   ��      �2>�q=_Y_�n�	 ���7X/   ��      �.>z%=}��:G� �����7[0   ��      )�/>�G-=��r�Bk� "ߋ��790   ��      �b>GX =����x� v#��6*;  ��F#    I&>�F=�x"��dM |��7�:  ��&    ��!>���<!�X�� f���7�:  ��/.    �V!>a��<S��m r�Ձ�7�:  ��[%    2]>���<dU�� i���7�:  ��l    ��>��<"[��j u�Ձ�7�:  �p    />f��<�WK�&� e���7�: ��`   �3>��<�<A�%� e��i7t:  Z��    6d0>��=�G"�@#g ]���7,;   ��      ��0>{6=��%�G�a I���8;   ��      R"3>��=W�c�z � ���8>;   ��      �2>�q=_Y_�n�	 �允'8!;   ��      X�.>�*=u~6� bI x���77;   ��      )�/>�G-=��r�Bk� k����7T;   ��      (>��<�N�� � ώ��8�2  k��    ء>P=�^���@� Ǜ΁83  ��t    �R>�r=-�c��y� q#,�E6�:  ��    DN>u=$���^R z���6�:  ��    8�>�<�c��	| |����6�:  I��    �O>���<>ӻ�d t�с�6�:  ��    c�>���<�O5� � i��27_:  7��    �>V��<�ϊ��� ʸX��8v2  R��    0�+>�=벮��� ����	8m0   ��      �,>�@�<�c��&�� ��5�8-0   ��      �R&>X
=���� ���8�0  ��1    �@'>֧�<������ ��F�,8p0  ��    �%>�!=����B� ß́8�0  ��    ͉*>��#=O���G� מ���7�0   ��      ��+>��=K��} r���7;   ��      �*>5�'=�P8��^T y���70;   ��      �&>��=���} t���7;  T��    %>b9'=V9��`R {���7$;  r��    �*>U81=��� ~� |��7U;   ��      ��$>�-=
����y� y�l7N;  	��    �'>�I=��!��l n�ҁ�7�:  ?��    ��'>�W�<�kX�� c��8�:  x��    B�,>,�=�!��m d�́8;   ��      {.>�I�<��]�-� 7���#8 ;   ��      � >��<ن��� ώ��83  Q��F    �y�=4��<Ш��� ΍��8j3
 _�]\B   /��=Ф=l�H� ɞǁ�8i3  y��I    \	�=���<c����N� Ȣ�8�3  m��b    �n�=�-=UBV��x� ����{8�3  ��T    .�=d	=%�P��y� �䜁�8�3  [��U    �n�=�-=UBV��x� p',�6�:  ��T    .�=d	=%�P��y� s$%��5�:  [��U    b >"=Q���_Q z�!�R6�:  a��{    G��=@�=�8��cL {�%6�:  +��/    "�>���<��{ {����6�:  ��{}    L0�=aW�<�w�{ |���d6�:  8��     �3>���<�����d s�Ё�6p:  W��l    �=���<�Ӣ��f s�с�6_:  ��<    ό>�v�<��,�� f��7N:  �V    .��=�Ɨ<�"�!� e���6<:
 ǭ�Qd   +�>�%�<2s���� ƻX��8�2  !��D    ��=�Ù<|V���� ƼY��83
 	��ap   ֡>d =�u�| |���c7�:  ��p    ZE >ѣ=
�	�{ {��{7�:  ��%    �p>��=�2��| {���F7�:  ��<(    .n>c�==.��eK }�27;  ޔ k    �:>)$=�7��eJ }�U7;  ��k(    V�>�A$=ȃ���y� x�78;  Г.l    4�>�I'=����w� y�-7C;  ��t,    �>'(�<�{��f t�с�7�:  Aؽ'    v�>�S�<^V�"� h���7�:  ��    {>9�=�'���:� ��ԁ>8�1  ��:    t->�(�<7���� �T8�1  ��    b>���<�M���� ��K�g8T1  Q�    D�>��=����@� ��ҁ+8�1  Z��s    �n>�{=���;� ��ԁ8R1  ��    8�>[�=�\�� � ���@8U1  ��n    �� >!�=T歼 � ���.81  }ف&    -�!>��<�l���� ��J�@8�0  ��I    f>�_�<m����� ��L�T81  ��e    2]>���<dU�� ��W�h8�0  ��l    v�>�S�<^V�"� ��\�{8�0  ��    V�>�A$=ȃ���y� �۩�8�1  Г.l    �b>GX =����x� �ڦ�(802  ��F#    �q�=�/6=[ؼڈ ���8�4 ��	l  �/�=�l2=�ռ�݇ ���8�4 3��H  	T�=��J=|#ռ�9� ����7�4 4���  */�=�F=�wѼ�>� ����85 ��m�  !��='=\½��� ��(�8�4 ����   ���="=������ ��,�"8�4 %�.�  �c�=0�C=��a�!y L���4\; -�	�   ���=+GG=��n�%x L���4p;  ��[5    �q�=_=S=�1���gH L�W�s4e; ����   ���=��V=VG���fI M�V�u4z;  ��51    �Q�=Z�;=Zټۇ ����7�4  ��%    b�=ԵP=s�ռ�=� ����7�4 {�,m   kh�=�m+=ض�� �� ��%��7�4  ��b    Pn�= 6=Jrt� �p :�Ł5i;  ��"    Su�=��/=oZo�&�j 8���5T; @�oN  :<>�X=N;ҼJ� ��Ł7s4   ��      ��>�r_=����u#� �����6^4   ��      �>	�M=��żS¸ ���7W4   ��      ,>}N=�ӫ�l�� ��ׁ�674   ��      �B>��c=�м'?� �����6�4   ��      Wv>;�l=����=a� �َ��6�4   ��      	�	>�k=����y� B"f�V4�;  ��    +�>�#f=�����x� G%b�A4�;  ��    m4
>([e= Ζ��dK I�X��4�;  ,��    �k><�_=� ���bM Q�T��4�;  $��    ��=�$=�|��,� X5N; ��*  7��=a�=M@��.� 셁S5:; ����  *��=?�*=�k`�%�l 7���5?; ���%  ;p>z�W=��'x C���4�;  ��N    ��>�4H=A���r 1�ʁ�4�;  ��    F>N�]=���#y ;���4�;   ��      �{>h�L=���� �o �Ł5�;   ��      �>�Gd=;֐�E8Y :���4�;   ��      d�>�AS=O���Q�\ �Ё�4�;   ��      ��>�r_=����u#� '���4�;   ��      ,>}N=�ӫ�l�� ũ��"5�;   ��      ��> }n=�ߟ�q1 S�M��4�;   ��      Wv>;�l=����=a� f�E��4�;   ��      0>�Ri=I����eJ H�Z��4�;   ��      R�>��n=�'���{� R\��4�;   ��      5C�=��W=Wf���x� 9$j�%4o; t���  [�=��S=->���w� 9$k�4[; ����  ���=l=M=�}��cL M�V�p4O; H�<y  9��=�==�PR�{ L���4E; ��I  ۵>MQ=��|� z K���4�;  ��N    H>�K=J[v�#y O���4�;  ��^{    ܴ >;�Y=�W���^R W�N��4�;  u��z    ��>��Q=Ɛڼ� ����'7~4   ��      �/>�ME=q�ż1�� ���/7X4   ��      ǜ>ɺK=p=ۼ݈ ��	�Q7�4  }��    ��>� >=�ļ%�� ���]7a4  (��    5B
>ԛ^=-ټ�<� ���=7�4  ��s    ��>ec=�xռB� ��ҁ7�4   ��      ʓ>�};=�֟�-�" ݇�^5�;  F��    v>R�B=񾢼:� �Ґ�H5�;   ��      ��=��@=�ͼ�>� ����$8 5 _�  L��=}-=��Ѽ ڈ ���/8�4 ����   nj�=��N=�+���x� ��߁8]5 ���   [�=��S=->���w� ���8H5 ����  nj�=��N=�+���x� 9 l�4D; ���   P1�=�I=�s��aO K�T�d48; �vv   G�=��7=�L�| K���4.;  Z�    ن�=+$=��Y�"�j 8���5&; +ۍ$F   9D�=�=X���*� 턁M5!; {�0R   ���=_z=+p���� ��-�:8�4  ��    O�=ok(=?ϼ��� ���G85  $��h    k\�=��>=?]Ƽ�F� ���98:5  ��b    �"�=0�J=����z� ��ف,8s5 L�lcE   �"�=0�J=����z� <k�4+; L�lcE   ���=�8E=�&m��bO O�P�U4!;  ]��d    R~�=�23=��F�z O���4;  �t    �d�=�=D~M�!�m @����4;  f��x     �=�=Ϋ��(� 쇁C5;  ��Kg    >��=kz=0���� ��-�S8�4  ˣ3\    �? >*=}���*�! 燁[5c; ��D   �8>��:=:Ez��r :�Ɂ
5|;  ̏2p    ��>��F=�ܼ
ڈ ����7�4  <��    �B>��6=�b�� �� ��$��7l4  ��    �=��[=�h���x� 6!m�.4�; ׭(K   6�>��?=�\ڼڈ ����7�4  \��    =R >:�U=�ּ�>� �����7�4  +��x    �}>�0=ǵ���� ��$��7{4  Ր)o    /r>��X=��ڼ�7� ���m7�4  ��u    m�>-X5=kϙ�)�% ∁`5�;  ��m!    �>>#@=����p 9�ǁ 5�;  c؛'    D�>�/=膗�(�# 䇁^5y;  �i    ���=V�`=�����y� Gd�84�;  ��    m�>-X5=kϙ�)�% ��)��7<4  ��m!    D�>�/=膗�(�# ��#��7K4  �i    �95>����k��U�� #�*��:�,   ��      ��8>X��A1�~ �5��:g+   ��      �!5>̷�g�l�O��  �Z��:�,   ��      W�6>+ӽ�ӻ'�_� ��c��:5,   ��      d�4>��y�Dk}�A>� J��:c,   ��      e�6>\��"D�S^� ]��:^+   ��      `:&>1�k����YZ q*ځ^8$8  ��    ��+>΍h�1
��W[ c<΁u88  Z��    �C&>�M�ҝT��~� n v8C8  ��Q    ;�+>]xG�g�Q��~� b����8*8  ��?    �5>3����Lʻ:p SṔ�8�7   ��      �!5>)���=�6�c k@�8�7   ��      ��8>X��A1�~ �C���8�7   ��      W�6>+ӽ�ӻ'�_� OWӁ�8P7   ��      ��4>=�e��d��,UR I1���8�7   ��      e�6>\��"D�S^� ㅁ�8�7   ��      Ϲ+>����Dһ} q9��Y8�7  ��l    g�&>z`����ǻ~ u/��C8�7  ��\    �0>G%���л�~ hG��q8�7   ��      ��0>� ��u��l v)�e8�7   ��      �6,>I���[���m w)
�K8�7  x��    ]�0>7-��7ؓ�$�� 0���:G-  ��H     �*1>F3żx�z�)�� �b��:j-   ��      [�,>�5��1b��� 2���:�-  0��    9�,>I�̼������ �c��:$.  ��*    ��+>�v��펼M� F�Á{:�-  ��A    if0>��p�U��O� N�́�:�,  ��I     |20>[qi�:���R_ \F́�8�7   ��      >�0>!yA���G�
~� U򣁥88   ��      �->#rڼ�:3�� z�?8N7  ��    [�1>��Ҽ�N-�%� w'�b8C7   ��      p7>%�������W� '���A:q1  cÛ<    �>�΂��㓼�R� &���L:�0 v��
�   'y>	���L/���� &��c:�1  ��8    -�>�ִ�X������ )��m:!1 s��
�   E�>�/���1�	�	 u.�&7�7 9�kHZ   ��>����T�2�� u,�e7�7 ��9�  ��>@�޼[����c s0�h78 ���\�   ��>;ټ�ᵻ�g t0��7	8 ���  �!>�S�-����� %�[��:�1  V˨4    ��>U强I���� &�[��:C1 ��M  }��=|Ul�����"f� )���:v3
  ��z  ���=>�������[� !���:+3
 ���q �3�=g���V����� ��+:�3 
 )�I  ��=�S��5���� � � �9:c3
 b�T� V I��=C�a����{ 6���9D3
  I�  }��=�d��u#�~ #���9�2
 ���:� �!�=,*����0�R^ sԁ�6�8
 ���bS {q�=9q����`�YY rҁ7�8
  {��     I��=C�a����{ i���7�8
  I�  }��=�d��u#�~ i ��=7�8
 ���:� ��=���7��W }��Y6U8  ���   ��=���(�U��X {��6O8  g���   ��=D!��ѥ��} z6�8  >�@	   )@�=^˹�B*}��~ x%��6�8   ��      S��=�)����� }��'6 8   3��    0��=d���x+�� }
�\68  I�>w  ��=[A��y�� �� �X�_:�3 
b�h�D���=ή��،���� �Z�U:4 
 ��t�   S�>p��g��Y� &���::�1  ��q    ��> �������	�� %��\: 2  6��w    ��>y�\�H�@��~  %��$:>1  ��W    h%>��^�|=��~  $��:�1  ��LS    II>�}��>�Ȼ[W o)ԁ�7p8  У.\    ��>y�\�H�@��~  oā8�8  ��W    ��>���� ��\V p#ҁ�78  ͧ1X    h%>��^�|=��~  qȁ�7�8  ��LS    �>XJ����s�~ q7�7D8  ��]    &	>������P�} q4�v7R8  �Y    0	>0w�,"���` u,�87#8  �[    �>�����/�� v+��6�7  /��l    P`>��X����� #�^�}:2  ��z    ��>����Ȏ��} r3�88 �P   >%>(ϼ���h u.��7�7 ���   �!>H+����û
~ s4��,8	8  ��Ft    O;">k�ʼ	��	�i v)�8�7  ��Zr    <N!>��n��Q� [X q'؁H838  ��m    Ye">YΫ��s��
�� 1���:�/  ��Tk    ��>�î�V���	� /��:80 Q�!�   �!>�|��Ǔ� Q� 7���g:7/  ��t    �f>���a%�� R� 3���]:0 *�G�   ��">��ؼZ���� '�a��:�/  ��qj    �d>��ݼ����� (�`��:_0 $�&�   y�&>ʤ|�ʓ�N� =���r:m.  ��    AM'>:R��𩞼� 2���:�.  ��    ξ'>�Լ5텼��  �b��:�.  N��    8�'>����3�� z�8_7  ��C    � '>�ɼI��k w'�08�7  ��p    �">��㼂m6�� z�8r7  �f    �[!>W�S��S��~� qɁc8S8  ��hh    �_>�r�� �^T o$Ё.8B8  y�    �0>܌W��U��~� o�āK8g8  ��    �m>�\��*7�� z��7�7 ��a �   �X>�����]� !���/:J2
 ��Q�   =c>iw��[V�� � #� �Q:u2  $��"    x�>��_��`3��~ ��:2
 ��v�   �f>� ���.��[X n'Ёx7�8  ��    x�>��_��`3��~ m���7�8
 ��v�   ��>���X�} s3�>7`8  ��<    �b>���(ѝ��Z v&�708  ��y    c>����I1�	� y"��68  ��'    *�>�*�@㐼�� !�]�s:�2  ��+    �?>�܂;�ˎ� �� ���9#/
 ��x�  >#v;]I����� ���90
 ���	�   v�>�"$<"�z��U� ���r9�.
 ���  �2>c�<�rw��X� ���o90
 K���   �5>�3�+o��� �]��93/
 ���  ֏>c�'�2�o��� �[��90
 ,���   �>>�	<��L�U � #�!��9�&   ��      Y<B>�<�Xۻ}� �3��9!   ��      ?>���;rc2�U�� ��R��9�&   ��      0�@>�É;��Իe�  ��a��9�$   ��      d>>/�F<b+@�@D� L�끙9�%   ��      Ӥ?>�&i<v�Kc� c��9:!   ��      ��>��x�����	 y��Q8`9
 �vx  jv>\m��o��` { �C8�9
 ����  W,>u;��2u
�� yށ.8U9
 ��h�  �>��~B��\ {�"8�9
 ��
V  J�?>��<�t�:n p�ȁ�8�9   ��      ��?>[b�;�C�:�` m���8�9   ��      Y<B>�<�Xۻ}� ։�9�9   ��      0�@>�É;��Իe�  />��9�9   ��      �'>>�_<R�u�#YR w�Ձ�8�9   ��      Ӥ?>�&i<v�Kc� K����8:   ��      mm4>�qN<fT���R_ ~��8�9  ��    �.>�@<1����T] ~��8�9  ��d=    �5>��;��/��~ ~��8�9  e��    ��.>D�;��9��~ ~���8�9  vȈ7    �(>�1<�*���T^ ~�n8�9  ��ve    3�#>C�*<��� X[ ~��R8�9  ��$    �@)>���;� @�~ ~���t8�9  ڑ$n    /^$>���;W� �~ ~��X8�9  ��%)    ��9><�3��} ~��8�9   ��      ��:>E�v;qJa��m } ��8�9   ��      ��5>]$.;Yh��l ~ ���8�9  8��    ��:>��E;qbD�/�� ��\��9�(   ��      �6>C{�:7�O�"��  �`��9"*  o��    w�9>��;�v�)�� %���9�(  Z��     ��5>h��;���� !���9*  x��    �5>!EL<N�b�T� 7����9�)  ��'    �9>/FL<��V�R� E�Ł�99(  J��     �T9>��W<4����V[ }
��8�9   ��      h9>�}<�Q�~� ~����8$:  ��P     �O4>zu<���~� ~��8(:  &��    ��;>��g:[�ڻ/� p&Ӂ�8�9   ��      �6>}�������	 z��8�9  ��    �(>Ei������ x܁8K9
 ���3Q   �1>�PB�����Z z� 8z9
  ��p,    7�>w�Ļ�� �� y���7A9
  	��n    i�>��w���Ѻ�Z |���7r9
  ��h    ���=|<ȱn��a� ���d9:2
 ��[   U�=�� <���~ ��=9$2
 �@�  �>'><��r��`� ���g9�1
 ���X   ZN>E`,<
���~ ��?9�1
  j�    �.>9�g<!��~� }��8+:  ��1    ��/>
��;7Ƈ��� ���9,  ��(7    �0>e��9�k]��� 	�_��9,  8��0    �*>��:Q����g ~��8�9  ��Av    %%>�P������c |��e8�9
 �Ѕ.�   �t*>�9�Ɗ�� |8u9  ��Tz    �F%>��:�O��� z�s8k9
 ��'  ��.>�P?<��r� P� -���9�+  Lв/    A�/>�:⊀��i ~����8�9  ��1    m]0>���\�� {쁨8}9  ��)    
x�=Z�!�/$<�} |���h4�8 
  ��    O�=�9���<�} |���4�8 
 <�!�   q[�=�V��Kb,< ~ |���T49 
 ����   a͝=�\��$<	~ |����4(9 
 ��/�  ���=H^�:Oi$<} |���<4>9 
 ����  ư�=��;,-<} |����4P9 
 ��  .�~=�c��;�2<�~ |����39 
  ��     2�~=
�)���%<�} |���4�8 
  2��     ��`=F�/�w]*<	�| {��z3�8    ��      ǿC=�&6�826<�{ {���2�8    ��      ��_=V���l<�w {��3�8    ��      T�C=ٴ��`"<	�t {���2�8   #��     'U�=_��<�U�;
,v z���3�9  ��g  �=i�8<��<%y {�� 4�9 
{����+Y�=���<|�;2t z��,4�9  e��
�	  q�=LIK<S*�;+w {��S4�9 
�W�k��={��<��n;2t y���3�9 x�Q�	n�4�=:��<hϛ;/u z� �k3�9 >�d� 0Ds==8v<~�;'w z���"3�9 
.���� J�w=u:)<�@<
z {���c3r9 
��y� � OEr=�
=`ճ�Ob z�	�j2: ���LRGrz=���<��:?l y���2: ��w7 n�=ɡ=�=M�Nb x���25: ��BB,W��=�<~z �Di x��D3: 8��w�EO��=M�<+�?�m d����5 : 
 b�%)w%  GB�=�C9<���G>T h�Ł�5�9
  �hB^�8  ̖�=�%S<���g�) "鈁S6�9
  a��D�
  ��=^:><���hG G�ځT6�9
  ��s*  ��=�T�Kp�Fb& e�ǁ�9]3
  ���;T  �Y�=��_����I7� �΁�9�3
 6�c#I 	��=�;���v�$ ����9\3
  ��^"  ���=��*����q� ���9�3
 �q�iV#� ��=Y�<�U�^R R�ρ�8�4 �z9`J�
�G�=�9�<�K�z� ����8�4 ]��=�~��=i��<�k��]!� �с�8�4 }s kB>kh�=�$�<Ě�(1� ��ˁ�8�4 ���+����=k`�<\⓼�H� 뙻��8�4 
��iE 9��=�<(c���� ���9�4
 e�	
��%�=��<b���� Ԋ��8M4
 ,�
f` ��=¢��a�� � ���:4 
 4�Sw
  `��=�޼���̐ �6�@::4 
 L���  S��=�)����� ~�v:4   3��    '��=A^��3]��� �y�c:O4   ��K    m�=΅�C	
�� {�q:S4   ��v     ���=d��П	��V |�6W8 
 Q��E�   m�=΅�C	
�� {�
6"8   ��v     ���=�����:#�x y߁>6�8 
 n��5�  f�=Ĥ��w���4+k o
Ł|6�8 
 ��#%  ��=�T�Kp�Fb& X⪁7�8
  ���;T  	��=�;���v�$ "��69
  ��^"  ���=QA$�n��<�
 K���69
  ��RX  ��=��K���Q�^ _���z6�8
  z�IY<  tl�=����U��9*�] l���~6,9
 -�t-{*�.��=����6�;,�n r�́�5%9 
��VX����=�2T��;;�o o�Ł 6�8 
���B�)� Ou�=�d�<v�J�"�d d���6:
  #�?�  �r�=2�c<���2� Q��g6:
  ���  %9�=y�<@M�$y z����5?: 
 ��?1  w��=i��<��!y z����5Z:   ��      �a�=���<z[�!�e p�ˁ<64:
 w�)� � ���=/9�<[�:2r q�ׁe5�9 
m�Maz� ��=�u+<� %;6.h q�Ձ�5�9 
��>�9f ��=p:�<�����r5 |�n5w: ]���:�=�T�<�P˻�l@ |��5�:  �� C   ���=�	�<C N��{� {�f5�: �����aO�=BN�<\[J��y� v#��5�:  ��{�  N��=�|
=� �Ak O�߁�4�: d��T����=���<N��<WD k����4: /r�N�49
�v�=�v�<J�Z�s�0 ���05�: MǸ!�
��=Y�<�U�^R S��65�: �z9`J�
���=��	=/d��,3k h���c4o: �|�;�2�/۲=�&�<�I��-K[ o����4W: �e�DE:@��=��*����Ě+ l����2(7   ��b    K�)=*d;�Zګ�ɖ) o���w37  E�Dt   ���<�o���z�) k���B2Q7   ��>    �M�<a8�U�R�Ė  m����1q7   [��u    �8�<7(��_ּ��� _���K2�6   nِ&    G�=(l2�#輴�� e����2�6   I�    �bB=�r��@����Z x����3	8   �e    �x=hb����ޢM u����2�7   ��)8    d�f=$[��&!�,A� �5:�6   ��#    �se=F�v�"��1J� ���:�6   8��.    �y=L���+��� 	��=:�7   ��C;    nw(=���*�1��� ��]:�7   ��q    F��<OI἖!��� ��S:8   н.B    B�=���F�&��ߖ ��r:�7   N߰     �
=I��o��0� �ρ:�7  R��{#  �I	=7T"������� 3�<��:8   ��    =��<��
�E�
���� 5� �j:(8   �� 7    �I	=7T"������� X���p2J6   ��    =��<��
�E�
���� M���1Z6   �� 7    a��=�����&���0 a����56  �u    �t<V^u�����ј n�ށR/�6   7��     }�s<�놼$򵼤ܲ I�ׁ50�6   ��*	    h�&<�a��9n�ˬ� p����/C7   x��    :��<n�ɼXɍ���� Y�0$7   ��0    �&�=ï�"��� ���9�4
 {Df��JV�=������� ��ꁾ9�4
 s�gO�9@�=G-��g��� ���9�4 
�|g��n��=�ڶ��6��� ��쁾9�4 
`��S_����=&:-�a�ʼ)0� �΁�96 N��L�h  5�=IU��弼#� ��ہ�9�5 �Ɇ%��H�=��j���˼,-� �Ё :�5 
P�K� � ���=�P�҃��#� ��ہ�9�5 
��#S�=*^:�Y��� ��ꁨ9\6 l�)+^�k=(��)�˼%#�  �܁�9�6  g�];9  �cn=\��;׸��  � �����9�6 ���<�� tW=�,j;�%μ&� ��9�6  ��t.�!  F�=�yO�0-߼6B� ����9>6  �}�   �p�=�Ի�ʼ),� �ҁ�9V6 C�oJF oer=1�7��1C� ����9�6  �kzt  8�=<R	=��� ���8c6 �����ٟ}=�M=���� ���8�6 ��h����=��$=.�ͼ�S� �����8�6 ��� �q=?q"=��μ�V� �����8�6 1�jD �V�=h��<u�� ��9m6 ���+QN\�=w��<�߼� ��986 �O+���-�=ÿ�<#Խ�؉ �%�<9�5 Rd�_�#���=3��<����؊ �%�H96 r�j���={H�<,�м؉ �$�!96 �� Ia��w�=D��<�ռي �#�-9D6 ��H�2��=�V0<�%��� ��c9�5 ��5L�O
���=�/F<3p��	� ��V9�5 "��A2-��ٚ=\��;-[���� ��~9�5 
�=*��T��=w��;mũ��� ��	�q9�5 
-�B-�"����=9���'_�� � ����905 
�8B�n�=������ ���9-5 
G��Ev�g�=��U�>ͮ��� �����9^5 
C��..�
���=���;kJ��� �	�~9W6 ��KG��@�=8�<&��� ��p9 6 ���L���$�=G#;w���� �����9$6 +˹*��=�Ŋ;c!���� ���9�5 ��R*�t�,u=�dS<e�Ǽۊ �!�b9�6 Z��w�~���=�k<��ü׋ �%�U9O6 Nyv����~=š�<�ټ׋ �%�99|6 ���M�w��i=�Փ<��޼ڊ �#�F9�6 <�VW$G�nS=��<�<���!� ��߁97  )��!�   ��i=T�=bm�� ����8�6 ��5�� �r^=?��<���� �
�(9�6 �ʫ2$� ��t=���<L�� ���9�6 Aʗ,A��F=^=μ�Y� 񦩁�827   M�    w�\=?�=p�μ�X� 񥩁�8�6  X��  ���=*ꌻe��� � ����9"6 Y��!���]�=&N�:,:��� �����9�5 
�����⁩=RY;;sj�� � ����9[5 
Ɲ�2("kMd�=�/����I�~ � ��끻;�5   ��      �h�=Qţ���V�r�� �����;�5   ��      ['�=�^����b�P � ���;6   ��      y	�=s�����l�� ���;I6   ��      &-�=Vl��[zl���� &����;e6   ��      �׾=�4���i�/� ����;36   ��      �b�=�R��%�j� � %�遖;H6  ��G     ���=ԉX��<C��$� <�؁;�6 ����  �U�= n�lOO��1� ;�Ɂ3;y6  ��)     ͺ�=�6d��A���� A��;�6 ��Q  ���=��z���N��� <�Ձ9;�6  %��-    �=�={��-�i? F�ԁm;�5  Sޫ!    �Ŀ=/^�����\Q F�Ձm;�5  ��[    /0�="�e��H�cK N�Ӂ';�5  ��#    �A�=Nn�ٻ�Z,M O�ׁ%;�5  ��?     �Ǹ=	z��,&�cI O�ӁK;�5  k��~    ���=�/���a�Y)P O�ցI;�5  ��Aw    %	�=t~���$g��� 4��};}6  ��n    ���=�����f�.� 4�فx;Z6  ��    ��=:�Z���	� 8� �ȁ�9�7  ��Wf�  �C=mP��|�A� ���:37  ��\B�   G�F=u�M�*M� ����97  0�X�  �_�=�Nռ�' �W+� �ЁV:�5  _�O�  �֗=~輔��c� ��߁b:�5  �y�i�  �[�=~&����a%� �ׁn:�5  ��C   h��=e��-��q	� ����z:�5  ��[W�&  !�=��~�-�\��9� 8�ǁW;i6  �}    |�=O=���o[��	� 8�ԁZ;�6  q��{    �{�=�֗��ܰ�� ���:F4 
 H�&3�  �=�=�ac��I��-� ���9/4
  ��B40  �#�=e��;�u��0<� �ˁX9�3
 )��(I���=��+�|��� ����9�3
 y���
�e�=�f�;�֗�!� ��q9H4
 a�:.,Li�=��^�WC��	�  ����984
 ^�62Z�|�={ʵ<&;��'�� ����8�4 ���5� �~��=66�<�x�� � ���9�4 
K�� �{��=V��<����4� ����8+5 o-\�")�=�2=�¼� ē큦8t5 &�$���=s#=��μ&� Տ܁�8�5 i�@1�c�u�=�h0=E��N� ī���8�5 ��U�pD�=m*/=5���U� ի���8�5  ���F�  �7�=�Z����	�   z�u:�4  Ü�bg   x�=}����R��� ��~�h:�4  x��f�   �
�=�<ȼ��;�s {��5�8 
 #��h9  ���=������R |��5S8 
 ���hx   �=
)��W<��E v ҁ�4�7  ��A_#  �Hs=��s��S z��m4 8  u�h|!  I�=��|��S�� ���}:O5 է+D���=����9�ռb� ׉�p:}5 `�Bb|� �ɢ=���lü<֙ ˏ�]:Q5 ��;���2�=�|�CnռQ�� ��Y:�5 ǐ�\���ڙ=���7��`�� ��ށ�:A5 [��Ka$J :*�=���Yּs�� ӌ遉:v5  3qJc�+  ���=,���߹�e� ��ぬ:&5  �h"S�C  �=��ּw� ً䁟:k5  �^�S�M  �5�=�n��w/�#� v݁58  ,��%�  ��=�L��Qu�4� k/с>5�7  z�=-F  �=I��ù1�� {��X5
8   E�    �r�=���y�(�� v*�v5�7 ���[ �o�=���~:�� {��58  D�kN  ���=���»�. |�~5#8  Q�{
2  `��=+L�˵���: }��55%8  ���
�   ㌒=O����û�D |��48  ���   ܕ�=�����ػ�K {�ぴ48  ���=�  ��=G� ��u2�!�0 tЁ�4�7  ��O;  ���=ۀ��r���Z ~ ��	5Q8  ��]   %}�=�����׳8�V ~��]5U8 
6�*
YD ��=�&�s��\ }����4H8   ��
    �{=�?��kb� �\ |��p498   ��7"    ���=�����E�o<� 6�ׁ�;�5  H��     }�=|3���J�v+� %�߁�;�5   ��      �J�=�M��f&�VX� K�с;�5 ��J   ꊶ=����� ^�2J� :�΁s;56  ��     TK�=yE��3,O�NU� C�́p;6  ��f    \��=�]w���T�&U� @�ÁS;B6  Ă:}    濿=7��->�bO� F�Ёn;�5  U�    �x�=���Y!�D?� ��� :6  �c_   �=@
s�S��;J� ���:`6   ��N    .�h=v�>����3O� ����9�6  ���H�   �k=� ļ��'�*8� �́Q:�6    ��	    �{�=w����W�n� ��;�5   ��      �E�=�I����N�y� �ꁰ;�5   ��      4�=س���(_�\� ��;6   ��      V�=ƃ��mܼ99� 	�Ł: 6   ��~w    =�c=��	������] z��%4&8   ԥ*Z    lh�<)��L�*�ˎ	 r���	1�7   4��6    "�^<��߼���ڈ� x���b0�7   ��    ��=���G���H w���H2�7   ��Pv    %`�<�I�ުL��: z����18   ��xC    �6�<p�ܼH�D���+ |���08   i��    �1=V���=:��Y z���268   ĵ:J    [e
=�0ϼQ`;��S z��2B8   :��#    ��<�|��s��;�S {��!1M8   g��     �a<=�K��ʣ�;��d {���2u8   ��    �=�����l	<�d z��@2z8   ��h    ���<����G<�r {��m1�8    ��      PJ�=M�=��
Jf o��4�: Ȝ?����=X=$��4q g��I4�: ����
�a�"=i�=�':��fI {���0:   �}    ��<=�a=�p��fK |��'1$:   ��lQ    0h =�=�A��w& z�g0<:   6��R    y�;=Kc#=���v( {��0N:   ��.    ��h=5j,=�Z<��x& {��1m:   ��    �ZS= �'=�'��w) {�W1]:    ��    !�j=oB =z�ǻbP {��2H: ~�^'� � =U=0�=Jp���cN |���16:  �ʯ4V   W@=�0=�1X��y" y�#�(2�:  ��33  h&�=�$=`���bP y��r2\: �ځ!�� J�=�0=��?��kB p�5��3�: z�6`]	� &I�=��2=k�C��gH k�<��3�:  ݄ n  �z�=�9=����~� m?�D3�: ��_r� B��=�,:=�����~� cM��3�: �Ӄ+F C [�=�4=�����} r�7��2�: ��(�R L��=z�)=O� �fK v�#��2z: ��a3� ��"=�E$=����y� w!�0r:   ��4    f�<=ދ)=�ň��z� y��0:   ��"    ��i=^C/=�d���{� z�{1�:  Y���  i�T=��,=�B���{� z�1�:  ���I   `C~=��0=\ڝ��y� x!��1�:  n���  ��i=^C/=�d���{� �䇁�8�6  Y���  `C~=��0=\ڝ��y� �އ��8�6  n���  � =�=zo��u& w&��/+:   4��v    E=B�
=����gG y #�"0�9   ���R    =�=l�=����x� t% �H/d:   ̚2e    ~�W=� �����0;� �ā�9�6  X�t  ;/==h�s:]��**� �Ձ�9.7  ���AI  9;=G��<�]��#� ��݁9I7   ��_*    ��=�.�<����'� ��ځ 9�7   ��I    '�,=�=7�˼�Y� 񦨁�8x7   ��$    W=J�=l�ʼ�Y� �����8�7   ��>H    ��"=�E$=����y� �䈁�8�7   ��4    =�=l�=����x� �㈁�8�7   ̚2e    p^�<p�=�A��t" r2��.:   ��o@    �ݲ<��=O3��o7 w+��.�9   ~�    ��<ң=e����u� l./�Y.W:   �e    �(=!�;t��"� ���9t7  ��4O  �^E=Ed<!�ټ%�� ����97  �M�
  ��7=�o<���� ���b9I7  ̃Nz�  ��=�M<"���� ���p9�7  E�Y�  �Z=_�v;�H���� �聥9�7  ��Z �  ���<Ɓ�:����� �쁳988  ���J  ��='�<����)� ��ׁ)9�7   ��U|    gz�<�=��ȼ�W� ����98   4��}    ��<ң=e����u� �މ��88   �e    �)�;�.�;֞���� ����9�8   ��[     Vq<�<�;Xaȼ�� ����9l8  #��L   �]<"��1����� ����9�8   ��Z     �}<�ޠ���ͼ�� ����9m8  ,���   ���;�SL<��� 
��U9�8   ��t     �;���<䝖��*� �с)9�8   s��     &a<�ad<0�ü�� 	���W9n8   ��|    �U<ç<�9���� ��ށ+9r8   ���    �R<D�<qp���:� ��΁�8z8   3��    s�<>\�<:3���I� ꛸��8�8   A��     �f�<�5= ]F��s d#E�u-:   ��n    �i<�R�<����_� BNJ��,:   ��g    ]Km<n�<�!��v k ;� -�9   ��    �)<���<u�M��f� TK8�!,�9   ��I    xs~<����Dϼ��� ���9u8  0�!�   }�s<�놼$򵼤ܲ ,��%:�8   ��*	    	<�R�������� ���9�8   ��\     �t<V^u�����ј +��:�8   7��     %«<W<C"��� 
����9<8  ���  �r�<%�,<f\���� ���|98  I�^1W  �X�<)=Ҹ���q� V9I�]-C:   Oׯ(    ;Ƈ<2o�<����>� �ǁ	9\8   ��    �g�<���<QdҼ�!� ��܁/9N8   P�    ��<�~<����� ���X9C8   ��    ���<�|�<�[��(� ��ׁ/9#8   ��VB    ���<�I�<#'���� ��U98  _�F@Y   �k�<��<��ü�O� ����938   ��:    ���=���<'��::o y���3�9 θ5<3�#Ѐ=���<"�I;5r y� �3�9 ��9�
U�=`F�;-3<{ {���u4v9 
���� W�=l��;g�<| {�� 4b9 
 ���;  ��=Cw���<
�z }���4�8 
 ?�yE   ^�=���Mo<�z }���z4�8 
  ��R    [�=�-^<�6�;-u {����4�9 
��Ht��=�N<�h<y {����4�9 
��P
� 0��=�R�<��:>m w��4: X�t<�\1�={p=\'�
Gh w���32: 1yutz	���_=�̝;�F*<| {���3A9 
 t�H A   ]�\=�<à<{ {����2`9  �{ m   >_F=F��;�5<| {���v239    ��      �A=[%<�F*<{ {���=2O9   ��\     L_O=v��<���;,u z���2�9  ?�=4�   �OI=�x�<���;<n z� ��1�9  ��ac   �a7=��<���;+v z����1�9   \Ӣ,    �0=W#�<6q�;	<o {��Q1�9   �G    ���=S׷<7~Ǹ2r z���w5-: 
��.2��=��<�)��m> {��/5g:  ���0c  �R�=�k�<���:9n y���(5: 
�|�td5�=RU�<� ��VY x���49: g|�h��
O�=���[�<�{ {��"5
9 
��f=��=��l����;�z {��15�8 
 ���  �;D=�0��fuG<�} {��2�8    ��      �ra=�����:<
�~ {��U3�8 
  ��M     ��%=8C���C<�z z��.2�8    ��      �y%=(F���fV<�} {����1�8    ��      ��&=˪�;��;<{ {����1:9    ��      ��=��M<s+<z z���f1[9   <��    ��=LFr;��V<| z�� 19    ��      �6�<�?<�G<z z����0F9   ~��     �tE=M*ܸ�C<} {����29    ��      yIa=pGW6݀9<
} {���.39 
  ��M     �])=B�:ON<} {����19    ��      ��<=�4[<��<z z����1n9   V��    EX=^4h<e�	<#y z����29  ����   `�9=���<=<"y z����1�9   ��(    ��S=�t�<���;%x z���R2�9  p���   �#=���<�]�;+v {� �71�9   m��    M�=:�<��;=o |���0�9   ��*    �)=���<0;;�U] |��1�9   	��]    ��=yP�<�w;�U] {��}0�9   ��M8    �4C=^:=
�:T^ |���1�9   b��}    ���=g�����;$�y w�܁�5[9 
��|hO�	���=p�����;! z x���D6o9
 �-�	%���=�;���;%5l x�ぽ5�9 
 )�7[�   ���=+ <W�H:TY z��*6�9
 M�)��ȭ=��#�@�<�} |���589 
��1~ ?�=�aU;�@<| {����4d9 
 =��  ���=�hϼ��;�k ~���G5�8 
 %��	*  a�=�cҼ8:�;�i ~����4}8  ��� R   �M�=�8ؼZ�s;�h }��4r8    ��      =y=K�߼v�U;��g |��D4c8   ��5    �rZ=E}���;��b {����3Q8   ��E&    `]\=����z$�; �l {��3�8   ��    �E{=!��Jr�;�p |��34�8    ��      p��=�?�����;�r }��4�8 
 ;�a a   ݓ�=��<�$�;5s z��~4�9 �ޝ�D v�=ek�<�8;8q y��J4�9 ��6��R��=w�1=~����F� ��Ձ8�5 ���� ɞ�=z]=�7¼�� ����8N5 ?�VLB��=�,:=�����~� ����~8�5 �Ӄ+F C ���=D�<=����|� �鬁p8�5  ��    ���=��6=�.F��dL h�?�4�:  ��    ���=D�<=����|� aM��3�:  ��    ��=��#=2N�z _�
�j4�: ��wp ���=&�=#�-�(�p 7�ǁ�4�: ��S�j�=K�=�2k�5�% 刁-5�: ��d�fB�=J� =���I� ͍���85 ���#b���=��<H%ü4� ؈���8`5 A�M%?1�R�=��m<��}�(�� ��9�9�3
  ��Q�  7��=3>�<]���� ��H��8�3
 4��I� �r�=2�c<���2� ��6�9k3
  ���  �f�=��<�L�(� ��B�9Q3
 ���h���=�	�<C N��{� �㕁�8�4 �����aA�=B��<]���I� ͞ā�8F4 ��� S �w�=��<Tà��� ʐ��84
x�_�� D�=��_<\(��E� ��(9"4
 ��3�b �f�=��<�L�(� j���6:
 ���h�G�=�9�<�K�z� z��D5�: ]��=����=�=<�Ǽ�� ���z825 )���   ���=-66=�����E� ���k8q5  9��    ���=LLA=�
���{� XU��3; �l|   �v�=��;=aN��bO d�@�64�: +�T   ��=�'=#�| X���4�: �;�   ���=�={�;�"�j F����4�: ;���  �S�=�G=����+� 3���-5�:  ��Q  �&�=`
=�ĩ��� ��2��8�4 B�.�  2�=w�=pg��'�� ��-��8�4	��	�� ���=`����ӧ�� �  ���F:�2
 e���   �`�=�c�������^�  ���#:�2
 ����  �L�=P�a���,��~ l��k7�8
 �h|  ���=���2K��]U n!́87�8
 ����   ���=m���Cyʺ} u.�� 7s8  ��d    ��=+������Y y#��6B8  ��    �<�=�� ��l/��	 |��68  ��.	    {��=*V�N���� �[�j:3  ��-	    O! >=�:q����� ���9C2
��� � LK�=��:[y��� � � ��9�2
 W���� �#�={5<��d��e� ���`9�2
  ����  ���=�<���~	 
��=9�2
  z�|  U�=�� <���~ ~��6�9
 �@�  ���=�<���~	 ~
��6�9
  z�|  �" >�%�;�����]U ~���6�9
 ���x   ��=�j�;�\(�^T ~���6�9
 ��� � � ƥ�=�y:u�.; ~ }���6�9
  ��� �   � >e��:��
;~ }���7�9
  ��F    u1�=K�ĻMF��R y�ہ�6O9
 ��#� ^ �>M���
���V {��;7]9
  r��    �5�=��������� wف+7#9
 ��
� a ��>V��h��� {�Y7-9
 ��<  Y;>�k����j��� �^��9=2
 ��|�  ���=���N[d��� �Y��9�2
  l�KG  aO�=BN�<\[J��y� �⟁�8h4  ��{�  (ٚ=�O�<��Oa 7���:v5  ��z  �k�=~�Z��ؼ.�p /�́�:M5  ��(P  �k�=~�Z��ؼ.�p r�́Z57  ��(P  �Y�=�g��ܼ��W w��5�6  #���   ��=Bkk�����ۍ& w����4�6  w�    |�s=�i�΁�ʎ� r� ��486  ��&    ��p=�d��o#���� g� ��4�5  ��l    ��p=�d��o#���� R�/��:&7  ��l    ��s=6bY���0��Ǡ >���:7  ��     d�=�6�w�+�BN� ?�с�:=6  ��  vI�=hH8��96�&9� 5�ف�:y6  Jݴ"    �/=�vK��#;��� 4� ��:�6  ��"    Dě=��9�\��UR� E�ԁ�:6  D���  ���=޴?�,;�� 1���:�6  U�    T
�=x�<���~ 0���893
  �ܸ]  X�=�Z<��t�	^� '���\9^3
 ��Gv} D�=ӡ!<���*w
 [笁19N3
  {�<DG	  ��=2ѻ��d��� ��X��9@3
 ��\	� y�=p���Z��� ��|��9$3
  C�_#\  �5�=���������  �~��9�2
 ��
� a Tf�=��9Ǥ���� ���9x3
 Q�i��.�=����Iݟ ��'��9�3
 ��5 <
�=~+仛H��T t�Ё�6@9
 c�o� y�=p���Z��� tՁ79
  C�_#\  T
�=x�<���~ ~���o6�9
  �ܸ]  D�=ӡ!<���*w
 v���^6�9
  {�<DG	  ���=V� <źh�`Q ~���l6�9
 ��A
y �"�=,�A9��[; } |�6y9
 l�1_.�>z�<�>q��X� ���l9�0
  ��h.    Җ>��R;������ ���9�0
  JԴ+    �>-�U�Rl��� �Y��9�0
  ��N2    �f>p�-;L.���� ���91
  ��Oy    �>0<:�p��]� ���j91
  8��o    �>_��7�j��� �]��9'1
  S��w    �*$>��;�㍼�� �	��9.
 Q�5w   �s#>�-<�y��T�  ���u9�-
 $�Y   �n)>q��;���	�� ���9#-  ��lS    
�(>��5<�8v��R� %���y9�,  X��^    i"%>�r���Lk��� �^��9.
 �c�   \�*>\���f��� �]��9'-  �e    ��>q,`;��l8} }���7�9
  `מ(    ��>1	�;�q�} }��8�9
  R��    �>� <���[X ~����7�9
  ��'    -�>��<�J@�YY ~���8�9
  '��    �+>�<��Һ ZX ~���7�9
  "��g    9�>�3;$	k: ~ }��7�9
  ��|f    �1>GC?<�
��~  ~��7:
  ��6)    �;>��D<�@��~  ~�8:
 ��N   ��>a�:<����~ ��B91
  ؕ&j    �1>GC?<�
��~  	 ��E9�0
  ��6)    ��>a�:<����~ ~��7:
  ؕ&j    �(>?\[<�� ��~ }�m8*:  k��b    �-#>GrQ<�!��~  }�M8$:  ��?    �t*>�9�Ɗ�� �~��9,-  ��Tz    �F%>��:�O��� �~��9$.
 ��'  ��>}��:����� ���9�1
  Uߩ     ZN>E`,<
���~ }�17�9
  j�    ��>��<,����ZY ~ 	�J7�9
  R�    ��>��;�:
 ~ ~���b7�9
  ^�    �2>��=�º�W |��~7g9
  s�    08>�^ݻ�I��� z⁔789
  ��e    �>����sk�	�� �_��9�1
  =��"    �L�=P�a���,��~ ��:�2
 �h|  R�>@�����} s1� 8'8 ����  �Z>�v��;�_S p!с8Q8 w�+\  ��>\�X�R��~� o�Á58{8 8��  \>W��������� -�
�u:�0 K�En  ��>"���R� .���U:�0 ��v�  �>�������� '�_��:�0 1��8  �>%iռ
@ͻ�g v-��7�7 b���  8(>�.�s1�� y��7�7 6�<�  J>�ez�Q*ջ^U o'ҁ8_8 ��`   ��>#r������} q7���758 }���   �>!�Y�4�I��~� m���8�8 &�@�   �b�=:$�<{����O� Ǣ�84 ��	S   �%�=@��<�e���� ˏ��8�3
 ��2�   G�=�Y=�K��{� �ꚁ�814 ���V   λ�=B��<D$ݻ�gH | ��5�:  ��[    G�=�Y=�K��{� v"��5�: ���V   v�=Ɲ�<PB� z |���26q:  \��    Y��=4��<���� �e t�Ёo6K:
 ���W   ���=�#�<1��#� i���6%:
 ���   �O�=.��<\���� ��U��8l3
 @�"�  "R>�a$<J)��[W ~���18�9
 Y���   ��>0�;6�ߺ} }��98�9
 ��h�   ��>��I<����~  ~�,8:
 ��9  �R>�r=-�c��y� �ݠ�f8P3  ��    �2�=M|;=���H� ���R8V5  mԑ+    �c�=R%#=M�̼�� ���a85  ��'*    ���=��E=����z� ��ׁE8�5  !��/    ��=	�@=�5]��bP [�G�H4;  ]С/    ���=��E=����z� L`��3;  !��/    ^��=��,=� 3�{ R���4�:  ��"    Y��=)=��E��g A����4�: ��t'�   ���=*u=����&� !�85�: ��~%�   a�=�=Q����� ��/�o8�4 �ʹ1{   Xe[=�0=�F%8Q` {�	��1:  $�-a�   �u�<"��<��;�\W {���/�9   ��    ��<fd�<3�<7q {��b0�9   ��     �ё=Ŝ=Zͫ�Ob v��U3S: ��\?�
3���+ƀ���X���� }��d*J7    ��      dzV��'{�Fye���� }��,17    ��      �,��U|�������� }���*�7    ��      ?;�a���K���� }��z,�7    ��      ������μ�D4� �� }��`+
8    ��      E��U̼������ ~���,�7    ��      Ӵ_�n̼{�;�" ~��+08    ��      ڒ��,HʼG�;�# ~��-'8    ��      �e7�إ���-l<�Y }��+X8    ��      ��9�؜��DP<�X }��L-W8    ��      �8�"7;ʟ�<} z����,�8    ��      �/���(<D��<| z����,	9    ��      d��ș8;�ۜ<	| y��5+�8    ��      �|!�Ÿ!<�ӓ<{ y����*�8    ��      ��o�������<�} {��=-�8    ��      � �?\��a��<�| z�遵+�8    ��      �X�K� �<�v {�� ,�8    ��      =�e�-3V�K�<�v |��[-�8    ��      �������	���ڈ �$��9Z9    ��      1g�����q���ڈ �#��9/9    ��      ���+ƀ���X���� �@��9\9    ��      dzV��'{�Fye���� �>��919    ��      �Bs�Ȇ;������ ���x9&9    ��      �o��(��
����� ���9+9    ��      @'���pb;[������ � �u9Q9    ��      ����p>��k���� ���9V9    ��      �^f�ʢ�<����:� 	�Ɓ#99    ��      �q�aF,<����� ��N9 9    ��      �����w�<��v��9� �Ɓ9B9    ��      �Ե�*<X]���� ��K9K9    ��      .�h�����#'3� |� ��-w7    ��      ����8�t�ͣw��Ƒ |���2-7    ��      �B��
μ������ ~� �.�7    ��      "3;G�ͼ��n;��! ~����.8    ��      ��;�~��.44<�V }���.S8    ��      �r<޾5<D �<| x��.9    ��      �O*<��E;�'�<} z��.�8    ��      #m&<U������<�~ {���.�8    ��      x�<`/^��<�v |���.�8    ��      �=׻Y������� ���99    ��      ����8�t�ͣw��Ƒ  �5�:9    ��      ?���Ժ����� ���9 9    ��      X��Q��;Y���� ���|9�8    ��      �q�>�5<�œ��� ��Q9�8    ��      W�ܻ,p�<���7� �ȁ&9�8    ��      6O�(�<L`@��_� ����89    ��      ��<��O��]�  ����8�8    ��      D�<�I�<��w</t x���-E9    ��      ڬ�;PQ�< ,<eL z���,m9    ��      _������<"7z< 0u z��-,09    ��       FP��!�<�v=<�]U z��3+S9    ��      }�:�n��N���Ώ z��P.�6    ��      ��o;�9���'P�⧫ z����.\7    ��      '�;�@Լ$̻�� |���n/�7    ��      �,4<�RӼ���:��# }���/8    ��      s�}<���9<�S |��:0P8    ��      �a�<l�^;�ot<} z��09    ��      ���<�<<Փd<z y����/19    ��      ^��<���}<�} {���H0�8    ��      L =Tk���bh<�} {���-1�8    ��      ��<�)g�w)m<�t {��Y0�8    ��      }�:�n��N���Ώ #�*�:�8    ��      G΀:O��������� ���9�8    ��      u�`��`�;����� ���~9�8    ��      ��9�l��������� ���9�8    ��      rf9@��<늼�3� �́(9�8   z��     ���Y><�R���� ��T9�8   ��f     �d�:��<ڪb��W� �����8�8   ��Y     ~��;$��<�{� p4�D,�9   y��     b"�;�w�<����p� h42��*�9    ��      � x<Ǹ�<k9�;cM z��.�9   ;��     �*�<�f�<_�A<9o y����.a9    ��      �~=is�z�/�2)� ����:�6  ��q�  �E�=�
�} #�I0� �ہ�:`6  �Ø3�  1�=^��q�2�2,� %�⁬:�6  ��k    ��=i��%�L9� +�ځ�:M6  �z|i  k�=�tF��Q��>�e �݁�:>5  ���L�	  d��=��=���ڼ\ V ����:d5  Ӿ�6L
  �֔=i�$�3�\>� 1�ہ�:6  =�LWt  k�=�tF��Q��>�e i���?5\7  ���L�	  ���=��?��9��0�Z m����4j7  ��&U$  nV�=�'Z�'����^ w�܁�47  ȰRL�  gnn=}(P�x�� �S x�げ47  �T  "�j=�b���ߏ- x����4�6  ��4RD   �T=T�U��ͼՒ- t���G4�6  ��~J�  �lY=F�_�3	�Ɛ� p��N4b6  $�4X�   �A=I�P�Ź���� l�� 4w6  [ŉ8  KLV=fU�}����� g��&46  �~cd   m�<=@BE�$����� f���3)6  [Ҕ+  KLV=fU�}����� >�B��:Z7  �~cd   m�<=@BE�$����� 7�I��:�7  [Ҕ+  '�Z=0�F�[d-��ƛ -�)��:97  ��Ar    x7A=�H4���,��Ǚ %�-��:m7  U�+.~  Esu=�#:��Z���Q t�ρ�4�7  iñ!�  �@[=j�E�x���K x��Q4?7  ��;�
  ��>=PI�[���Γ( r���4�6  ��,�  �)=7�A�,������ j��k3�6  2�D�  � !=Ev4�rV���� b� �3;6  ���*  � !=Ev4�rV���� 7�E��:�7  ���*  �x(=-�!��	+��җ �#��:�7  ���  gLt=��k3-�/-� �فl:�6  ��-�  ��=p(��<�[+� �߁�:6  ���S�  ��=����	�p'� �っ:�5  �p�p3  _�=�Z ����| �遫:�5  u{�[�(  ��=:3*�պ�o:� 5���:�5  ���@�
  >�=�2��Q��m: &���:�5  ���5)  
��=K�/�%ޜ�I�C \��5�7  ���B{9  !�=�-�N�{�3�< k���4�7  L��H!  ��=�+.����b�? Ɏ ��:05  ;k�a3  �*�==(��$ؼp�6 ����:d5  2v\�-  {��=�1=�9���u� l:�t2�: ����	C S=�=�%&=\̼�M� 𝳁�8^6 ��D!�� -�=�x(=��ȼ�W� 饫��8.6 �6?�
-�c�=�=�s�� ���846 �y/fb�=�A=W�� ���86 ��T�7܍�=��<�Z޼	� ���86 -�`5!*OK��=���<�ܼ� ߇��8�5 �h�T�&T���=/��<�ϼ׊ �$�9�5 eE0�%�`�=���<B8˼ۋ ߊ�9�5 �J�E9j6d��= r�<4/��ى �#�/9�5 #[�IX9�!k�=w�<41��� �� 9s5 �V�H'4],�Ҧ=#Z<�?��
� ��I95 +uJ�0 �1�=uo<�c���� ��;9E5 
�q�\L w5�=��<
+���� ��	�c9S5 
fFET$�^�=�A&<�4���� ���V95 
`dAb�+�/w�=z�;�*��� ���}9*5 
�j@a2B�!�=�M�;>়� ���p9�4 
�f.NoF��`�=O%:ś��
� �����95 
o��W���C�=���:���	� �����9�4
 ,l�j�$�{��=�1=�9���u� �ь��8b6 ����	C ��+=Z�<_���� ����C9q7  ŝ�aC   meF=]�<��
�� ���69%7   B��B    +R="x�<�S�� ��T9�6  i{   �o^=`�6<U�μ � ��p9�6 ȓZh[� А=�\а�� ��클9�5 �;j>Vc�=�Y������ ����9�5 
�����s�=��5�q���� ����9�5 
Y��	[s�=���+�� � ����9�5 
��g�	d��=�7�W����� ����9`5 
�ɴ g���=QC�Tv��� �����9�5 
x�n�bd��=c_	��׻�" �"z�:�4  ���F�  �=�X�>�U��� ��|�r:�4  ^��;�  �7�=�Z����	�  z ���58  Ü�bg   �
>�.=��o��y� �ܢ�O8�2 ����   E>��=�y��z� �ޣ�98�2 j�<W   4�>�I'=����w� �ը�8�1  ��t,    />f��<�WK�&� ��d��8T1 ��`   ��$>�-=
����y� �ݜ��761  	��    �*>U81=��� ~� �󆁸7�0   ��      �3>��<�<A�%� ��k��8�1  Z��    c�>���<�O5� � � l��8.2  7��    {.>�I�<��]�-� ��2�8�/   ��      ��'>�W�<�kX�� ��L�=80  x��    ό>�v�<��,�� � h��8}2  �V    .��=�Ɨ<�"�!� �h��8�2
 ǭ�Qd   ��!>���<!�X�� ��U�U8q0  ��/.    5C�=��W=Wf���x� ��ف�745 t���  	�	>�k=����y� ��ǁ"7�4  ��    R�>��n=�'���{� �㭁�6�4   ��      �=��[=�h���x� ��Ӂ�7 5 ׭(K   �? >*=}���*�! ��%��7T4 ��D   ��=�$=�|��,� ��-�8a4 ��*  7��=a�=M@��.� ��/�+8l4 ����  v>R�B=񾢼:� ��
�(7*4   ��      ʓ>�};=�֟�-�" ���e714  F��    9D�=�=X���*� ��5�B8{4 {�0R    �=�=Ϋ��(� ��0�]8�4  ��Kg    ���=V�`=�����y� ��ځ�75  ��    +�>�#f=�����x� ��ׁS7�4  ��    �->#rڼ�:3��  }��:7.  ��    8�'>����3�� 
|��:%/  ��C    ;�+>]xG�g�Q��~� M���]:-  ��?    >�0>!yA���G�
~� b�m:K,   ��      �m>�\��*7�� z��:�0 ��a �   8(>�.�s1�� z��:�0 6�<�  �>!�Y�4�I��~� ���+:�0 &�@�   [�1>��Ҽ�N-�%� �z��:A-   ��      0��=d���x+�� ~��:�3  I�>w  E�>�/���1�	�	 z��:�1 9�kHZ   �>�����/�� 
{��::2  /��l    �0>܌W��U��~� /���<:�/  ��    �[!>W�S��S��~� 0���E:�.  ��hh    �">��㼂m6�� z��:0  �f    �C&>�M�ҝT��~� =���N:�-  ��Q    ��>��I<����~   ��L9�.
 ��9  �;>��D<�@��~  	 ��G9�/
 ��N   �O4>zu<���~� <��d9�(  &��    h9>�}<�Q�~� V���r9�%  ��P     ��>��x�����	 
~��9</
 �vx  ��;>��g:[�ڻ/� ��o��9�'   ��      �6>}�������	 �z��9�)  ��    W,>u;��2u
�� ~��9(0
 ��h�  �(>Ei������ ~��9�0
 ���3Q   ��>V��h��� ~��9;2
 ��<  08>�^ݻ�I��� 
~��9�1
  ��e    �-#>GrQ<�!��~  ��P9�-  ��?    �(>?\[<�� ��~ ��U9�,  k��b    m]0>���\�� �}��9,  ��)    �.>9�g<!��~� ) ��\9V+  ��1    �n=��<�!�;+v z����2�9 ��/�] ��}=io :��.<	} {����3-9 
 o�� �   �n}={Ӄ�?g<�y |���#4�8 
  ��x     �b=���<y�+;=m y� �G2�9 6��w� F ��=^:><���hG H��*9j3
  ��s*  ��=��1<[w��^(� �ځ>94
 Iyr0i ̖�=�%S<���g�) ���&9o3
  a��D�
  � �=ĉ�H��|�  �げ:�5  �r'L6A  f�<=ދ)=�ň��z� �刁�8Z7   ��"    i�T=��,=�B���{� �刁�87  ���I   `N=
���;7��� ���:=7  ��p"�  �n<=��,-6���� � �}:b7  ���
K  �z�=�9=����~� �����8�5 ��_r� ��=�4��@����  �e�S:i4   Xæ<    ���=&��y����� ��l�[:�4  ��yZ   E��=V��K���� ��T��:�4 d�
�[�o�=���~:�� ��m��:�4  D�kN  �r�=���y�(�� ��2��:5 ���[ ��=Ǝ�����I�� P@��^5�7  i��7�  ��=Ǝ�����I�� ��ԁ�:5  i��7�  �ğ=Ad�U��<�� ����:$5 >�&_\`�i=x*���8�� ����:�6  ��	#;  �[=�����7�� ��s:7  ��n  �R<D�<qp���:� %p-��+:   3��    s�<>\�<:3���I� Ka��*:   A��     ��<��O��]� m3&��'�9    ��      �gT��}�<|����u� o"2�)�9    ��      �d�:��<ڪb��W� dD#�b)�9   ��Y     ��<�� =1E���_� :QM��,/:   (��    ��<�� =1E���_� ߵ���8h8   (��    "Th=̂�<�ڑ;0s y����2�9 ��7q[ �{{=�]�;|0<| {����3Q9 
 �	�   �v�=�v�<J�Z�s�0 �����8�4 MǸ!�
�j�=K�=�2k�5�% ��E��8�4 ��d����=LLA=�
���{� ��́]8�5 �l|   �S�=�G=����+� ��7��8�4  ��Q  �<�=�� ��l/��	 |��:)3  ��.	    ���=QA$�n��<�
 ��Q��9R3
  ��RX  7�>w�Ļ�� �� ~��9-1
  	��n    c>����I1�	� 
{��:�2  ��'    ��>����T�2�� z��:a1 ��9�  ��>\�X�R��~� (���3:R0 8��  ��/�w��<��ϻ�v� r2�d&�9    ��      6O�(�<L`@��_� r*$��#�9    ��      ���5��<��� v� r3��!�9    ��      �ˡ�cx�<��.��]� t&��9    ��      �2N=��̼WW2�&� �ہT:%7   ��a    Y��=�6=k����~� �����8,6  
��Sr  �̞=n�+=�Fż�X� ߨ���86 5�.w�� 0&�=�P#�AXt�6�! g��
5�7  �*P�  Iw�=b�#�2u��N� M&��25�7  !�KO�0  Si�=o��<ֺҼ'� ۇ��8�5 �{�B�"�}Y�=��=.�ڼ� ݋߁�8�5 ��^�q	�ι=+��</���� ��,95 
E�;��'̴=�s�<^���!� ��975 A~U3�0���=�/�<����)� ݈��8h5 &]�J�.F)�J�=�<<1���� �� �G9�4 
���D�,�]*�=	���䥼� �끼9r4
 x��ME%N�*�=~���0��� ���94
 ,�gM��/��=�8I;3%��� ����9�4
 m�QM�+i���=����-��-	� ����9)4
 ��7,&�XA�=ٱQ<˝��� ����79�4
 ɩf/�#����=;��;�G��� ����b9�4
 �Z�YJ�*��=�\<�b��#� ����R9e4
 �o�c[+� d��=c_	��׻�" ~��58  ���F�  �&�=�����H��	�Q ~���5Q8 
 ���.B   7M�=��-=1N6��lB s�.�G3�: �SKaV Y��=�6=k����~� o<��2�:  
��Sr  �,�=1�<6��;#'s w��/5�9 
iɩ� �=�o<!��;(t x��5�9 
���,*	87�=%C�<F�ºCh t��\44: /��0 �_�=O=��d�Bj s��!4O: Ma�YG6��=�����;%�u w�ׁ�59 
����	��H�=[`�b�;*�v w�Ձ�5�8 
�ٯ� 9�=A�;���;!w z��T5z9 
 ���!!  �p�=�غ�'	<�{ y��u5J9 
��q'x/-�=�q�<�#Y;5q y����4�9 
3�N4��By�=���<8W}:Ei x���4: ���."0j�=Ͽ=g�λOb t���3l: I��BK2����=�|̼�1x;�o } 5�8 
 ���(g  <u�=fü�M��� ��+:g4 
 ��UH�  'g�=C!�������  ��:�4 
 ���\�  �|�=������� ���:u4 
 7�BO�  �0�=��żA���
އ ��!�-:�4 
 �ux  �$�=�A弎,���� ��A�A:�4 
 ���b�   ���=��]�.��� ���9j4 
 jt&Nn=  :�=�7ͼ��μ8�� ���E:v5 f��CE��ۜ=8hϼ�WռA� ��I:�5 ʓ@^R����=�n����Ҽ7� ��܁3:�5 \�-Uq�
�=۪��*ܼG"� ��Ձ?:�5  }�sn  ^b�=�n�p���	� ����9�4 
�}�S�-� Y��=����hw��� ����:�4 
 �w�s7  ʼ�=����
�� � ����:�4 

�M#� ��=)���5���� ���:�4 
 u�!nh  ��=o�������� ���:5 
��f<m� �5�=8I������ ��':�4 
��VIt �	�=���渼�  ����9�4 
 x\b�%  7�=�\�O���� ���9�4 
pfW�A� zS�=zFļ+�Ǽ2� ���<:c5 2�;0����=���ҁɼ.� ����*:�5 �M9cCPU�=�y�ZL���� ��`�k:�4 Dֆ$�j 0R�=���E����� ��q�c:�4  ҤSZ�   �p�=�CӼ$��� � އ�E:;5 +��U�	�=�+������� ����%:^5 
N����	��=�;��d��� ���:75 
�Ͳ#I�r�=��ü7��� ��4:5 
9�7R]��=+H�c鯼ʏ �1�K:�4 ���?Mn �ʭ=���(ª��� ͛8�^:5 ��[���Ȧ=8��Ǩ�-�� ��0�q:5 �٭�
�,A�=��Ѽ�h�V� ��فN:�5  y0v�  ��=\fQ����eI L�؁;�5  [��     �ݦ=�Y�S		�].H K�܁;�5  ��P     {C�=@�=�H��hG F�ށ�:�5  6���  �u�=�JE����b,B A���:�5  ���  ��E=̚���0)�
4� �́3:57   ?�    0g=��5���7��� $���:	7  �v    &�ڹ	�<����}� s1��*�9    ��      �/4;{B�<�#m;�{ w�,�,�9    ��      +%A<��<t+^:�x$ w *�<-�9   ��Y    �7=T�<;����
�  ���O9�7  ی�r�   �X�<)=Ҹ���q� �Պ��8C8   Oׯ(     �����<�y�;�x( x�&��)s9    ��      �[��M�<��x��~� v.��(�9    ��      ^e{=09(�v�9�	� "��:�6  ד'l    ��=���&�j!� �݁�:�5  ���?h1  ���=�#�<1��#� ��`��8!3
 ���   ���=*u=����&� ��1�y8�4 ��~%�   2Z�=��������� �L�M:�4   ҁ,~    �"�=��ؼ4;��Պ �)�<:�4 
 ܖ�ha   ��-=�ꂼ��-<�t {��w2�8   u��     6�=#�<n2<%x z���21�9   [��
    '��={��!H4;0u uЁ�5�8 
 $��e$  ��=����i��;�y z�ၚ5�8 
 3��   ��=�
��;��;�w }��=5�8 
 C���  iќ=Al��<�;�t }����4�8 
 ��u�   h�=t"����3� ���9)4
 �i�cj1p��=����'��� ���9k4
 �iUMG�o�=ܯ!������  ���9�4 
h=Y�;��ֻ=,,�RI��� ����9�4 
 �F"4�5��=�MD������ �����95 
��:.�+����=�_��-���� �����975 
sÑ �t�ޥ=�9y�Fp��� ���:`5 
S���
g��=82������ ���:�5 
u�G!�Y��=�ґ�pp˼+$� ��؁:�5 
n��B�MBΕ=bܝ�#�׼:+� �Ё":�5 
&��f� H  (�=`N�����I1� �Ɂ0:�5  $�{q^  b"�=�쾼���O1� �ˁB:�5  A��]�  ��=�+.����b�? J��B5�7  ;k�a3  ���=,���߹�e� 0*��N5�7  �h"S�C  j��=�� ��雼�� �V�Z:�4  G��N  ��,��Ն<ܳ�< 5s z���)9    ��      O2=��;�/?<| {���2)9    ��      �ˡ�cx�<��.��]� ����889    ��      zlB�v"�<�8L< XZ z���(>9    ��      n�|�8��<V�{:~� u 1��%y9    ��      �b�,z�<ؤ�;u0 x�!��'_9    ��      Ӵ_�n̼{�;� ) �]��4U1    ��      �e7�إ���-l<�) �A�n4�1    ��      ������μ�D4�� ) �%��4�0    ��      �X�K� �<�) 	��:4\2    ��      �,��U|������ * ��g4}0    ��      � �?\��a��<� * ��4�2    ��      ���+ƀ���X�� * 	��*4*0    ��      �������	��� * �&��3&0    ��      ����p>��k��� * 	��x3-0    ��      d��ș8;�ۜ<� * ��c3�2    ��      @'���pb;[���� ) ��370    ��      �|!�Ÿ!<�ӓ<� ) ���2�2    ��      �Ե�*<X]��� )  ���2F0    ��      �����w�<��v�� ) ���12d0    ��      ��,��Ն<ܳ�<�) ��w2p2    ��      �ˡ�cx�<��.��* ��݁�1�0    ��      ���5��<����* ��1�0    ��      n�|�8��<V�{:�( �%��1|1    ��      zlB�v"�<�8L<��! ��2A2    ��      �b�,z�<ؤ�;�� �ρ�1�1    ��            vertex_count    P        array_index_data    <6                           	  
 
    
   
                                  " ! ! " # $ & % % & '       ( * ) ) * +   , ,  - . 0 / 0 . 1 2 4 3 4 2 5 6 3 7 3 6 2 8 9 7 7 9 6 : ; 8 8 ; 9 < > = = > ? @ B A A B C )  ( (         	 -   -                    D  E E  ,  D   D  8 F : : F G H J I I J C K M L M K N O Q P P Q R       P  O O   + N K N + * S U T T U V W Y X X Y Z X V W W V U [ ] \ \ ] ^ _ a ` ` a b c e d d e f g i h h i j k g l l g h m o n n o p q s r r s t o s p p s q u w v v w x u v y y v z { | r r | q }  ~ ~  � n � m m � � � � � � � � � � � � � � h j � � j � t s � � s � s o � � o � o m � � m � � � m m � � h � l l � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � u � w w � � � u � � u y � � ~ ~ � � p q � � q | � � � � � � n � � � � � i g � � g � k � g g � � p � n n � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � | � � | � | { � � { � � �   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � �    � � � � � � � � � � � � � � � � 	� � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  

  	
� � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  !!� � � � � � � � � � � � � � � � � "$##$%"#&&#'(*))*+,.--./,0..01)2((2345225679889:97;;7<=4))42=)>>)+65??5@ACBBCDEGFFGHCIDDIJ/@--@510>>0=54--4,=0440,"7$$78<7&&7"KMLLMNOKPPKLQSRRSTUWVVWXYUZZUVNM[[M\A]CC]^_`AA`]acbbcdaeccefeGffGgGEggEhICiiC^jlkklm3l((lnoqppqrsottopqouuovosvvswxzyyzmn{(({*ym33mlnl||lj{n}}n|km~~mz�]]�^`�]]���cc�d��ff�c��gg�f��hh�g��^^�iuv;;v9:9ww9vy6xx6?y36632������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������O�KK���������������������M��MK\M��M�\������U��UYWU��U�QW��W�SQ��Q�������������������� �� ���
		
	f f e _ _ ` d f f f _ X Z Z ] ]  a _   _ ] [ [ 7 !8 8 !F  3 4 3   > R ? ? R Q 3  7 7  !L / 0 / L M  !  ! E G D D G F ! F F  D "$##$%#%b b %` &(''()*,++,-.0//01*3223457667869559:;=<<=><?;;?@?A@@AB)DCCDEFHGGHIJFKKFGKLJJLMNPOOPQRNSSNO+T**T3UEVVEDWX  X Y  XX   Z\[[\]^`__`a  YZZY\b$ cc$ % dfeefg[]hh]ikjjklmonnopq_rr_as�tt��uwvvwxyz��z�{y��y�|~}}~�������������c ��c d ������������������������������������������������������������# " ��" �A C ��C J �! ��! # B �C C �I iqhhqr�H ��H I �# ��# �Y �Z Z ����Z Z ��X X �V �I ��I ���" " ��  �" " ���2��2�24��4��d d ��` ��` %�%��%$�������������������������������������������������������������������������������������������8��87������������/1��1������������������������������1��������jj�^ ����������������������������������������������������������������������������� ��������������	
���������  !""#$$"%%&&%'(%%(&))**++*,--+.0//01��//�.2�����22�34�55��65��5�76��6��88���88�97:66:;<�==���<��<~|>>|?@~AA~>��BB�CD�BB��EDD�E

EFG|HH|}IKJJKLM�������NN�O�IOOIJ�P��PI����Q������� RRST??T>UVCCVBBVDDVWDWEEWXEXFFXYZS[[S?N\LL\]^_TT_R_`RR`X`aXXaVabVVbZ\NccN[d�ee�f��ff�ghjiijkkjlljmlmnnmonoppoqrdssde�NMMNt1 vuv1 . 5 xwx5 2 2 yxy2 6 6 zyz6 9 z9 {{9 ; |< }}< = A ~@ @ ~}= ��= `~A ��A ��`��`^�����u��ss���e��efv�uu��v�������ee�s�n��np�����������1ik��k�l�kk���/��/1�l��ln/�������������������������������������������������������������������������������������������������������������dd��h�jj����jj�mm�oo��o�qq����rr�d]�����jj�|��||�}pr��r�tp��p���kk�j~�kk��������������BD��D�DJ��J���HH����HH�F�HeeHG��bb�a��aa�e��� � �� � �� � ����� � �� � �� � ��� �� � ���� ��� � ��� � �� ������������������������������������������������������� � � � � � � �� � �� � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � } � � } ~ � ~ � � ~ � ���
�����������������

�������������+�--��,�++�������,*�,,���������������������������������������������������������������������������������������������������������������������  ��������
		
""$���$$���������������� !!��� ����������������� ������������	 �  ��!#""#$%uvu%&~$$#$~''~�(*))*+*,++,-,.--./.0//01243345,xyx,*.yzy.,0z{z0.4|}|42*wxw*()+66+7+-77-8-/88/9/1991:35;;5<=!T T !""$>>$'?A@@ABC)DD)6%E&&EF�����GHJIIJKJLKKLMNPOOPQPRQQRSRTSSTUVXWWXY75HH5JLJ::J5=;NN;PRP@@P;TRBBR@X(YY(&VDVVDXHZ77Z��[��[\)(DD(X��]]�^HF..F0PN\\N�NR��R�T+__+`+-``-a0^11^�]^MM^J`abbacdbUUbE_`dd`bGI??IAKG<<G?LK>>K<OQ66Q968OO8SCEccEb��ee�f�������g��g�>S ""S T hj iij i � � jj� � � k � � k k� � ll� mk l kkl n�� hh� j l � nn� op� qq� � � y mmy z r� ss� � x w ppw � ii � � i � � � tt� � � uu� � � � vv� w� � uu� xy� zz� � z� {{� � |� }}� � � � ww� � � 	{{	~� � ||� � ~		� xx�� }} ���!yy� � ��� v�:��:w;<��<�t�����B�AA�_�8��8:<&��&'%$��$8[\��\��I��Ii�r��rq�w��ws�q��qu�s��stu;��;�������������������������������������������r�����������������������(�&&��#��#���������������������&������������-��������uu��KI��IPF�@@��R������R��RS5�<<���@@~������������E�FF�������������������������������������������������������������77�889779:G�[[��T�>>�A��[[�Z]�LL�P��[[�c�r��rs�f��fg������������������c����������J�����r�B��B��J��JI������������o� rr� � � t� � tq� � jj� l�����-����������������67c c 7e 78e e 88999::;<<������=V V =T p�����D6��6c �ZI�I��S��S8������������D�CC���D��D���������MM�KIK��K���SS�QOQ��Q���UU�S��''�&��&&�Y��xx����zz����yy�z��{{�yWY��Y���ww�x���}��}}�H�����wg��������������������������	��	����
��
������3�22����..�0�����.2��2��<��<=<������������������������4��4�����������G��IZH����ef�����s�s��s��������s��st��������������������  �����ff��f���,*��*2�  ��	��	�������

	����������� ������dde& W' ' W fbggbcABB�kke1 1 e0 % ' + + ' )  Z  Z['  ) )   a`? ? `=        Z<��eg0 0 gL Q O rrO h�}}4O  hh [% + cc+ K ] ^ ^ j&FBBF@np��p�? Q aaQ rL gK K gc��ll�j��jj��������������������� �� ��������uu1 �������&u&B455�������?��?@���opp�n��n�[���\�]]���^^�_��__�`��``�a��aa�bc�\\����������������������������������������������������OO�NN�tt������  �� ����QQ���LL�J��JJ�O��SS�T��TT����UU�VV�WW��W�XX��X�YY���ZZ���ZZ�S��ii���� � s����\\����� ����� 
 		 �		FJ00J^^ �\ \ �����������������������������������������������������! $$�*""*)������������������������^ ��������������  �  ��������WQXXQR�#��#��$��$#$�%%�45&44&%&5;;56�!��!t�''��|G??G[�w��wu�v��vxt'��'(�(()*�))�P����z+�**��,�++��-,,�.--..//��/0�0��0112��2nmm2)C((C343��3C��4����������
 
5�����������5�55
f5������������%''"�"!!"!�� �  �
�����

�677 $$7���			��������88�966
:;;��::�;99<>==>?>@??@A@BABCACDAADEDFEEFGFHGHIGGIJIKJKLJLMJJMNMON�����������#�#��#$�����1�00�10���R		R		�����������''��'�((��(�))�'�����P��PP��������UW��W�G�����H{GG{���HH�{MO��O�	�33��	��	3
�==��
��
=�$$%%%&&&;;��;:9�::���9��9��!��!���������#���"##$7""7��������(��(''(")'')LNMMNO:=LL=N=:>>:9QL99L>LQMMQP\]PP]M[�\\�]�[��[ �����  ��������������������������C+))+*c,CC,+a-cc-,-.aa.-.-//-,/,00,�0�11��21Y Y 1�m2W W 2Y omU U mW oS S oU ?>>S A?''?>'�AA����dJ J �J H ddH fH �ff�b$ b��b�& $ ��$ ���& & �W�X��XW�Y��YXY�\\�  \  ]]  ! ]! ii! �qi��i�_qB B q�B @ __@ ^�^^@ �����=kll�/3..3TTVUUVWBVTTVVAUBBUVIdAAdUH_II_d.THHT_3/44/�l����4k���!=��=�#!!�#��#)'**')      index_count         
   primitive             format    �}       aabb    @'��~t����l�B!Y>`h>���=      skeleton_aabb          @'���g���8��>~��=�߃=                 ��  ��  ��   	<C�{��<C���=���=~�n=   � !=�ʠ�%�j��Tj=`�w=�R=   W��=~t����l��=Ē=�E�<                 ��  ��  ��   �ڙ=��9�ռ� �=�'?=,=   ��=d��[V��r�=�£<��<   E�>�/������(U,=Ls�<ԣ�<                 ��  ��  ��   ��_=����#�׼���=��h=|i=   ���=���q��d�=hU�<<L�<   �(>Ei���ˎ�lM8=�w�<>Ӏ<                 ��  ��  ��   �OI=�������=h{=9�"=   aO�=��<���f�f="�<���<   �
>f��<���x
$=Dr�<L�w<                 ��  ��  ��   �����j��o�,l�=J�{=A3P=   �nS=�Ŋ;����ǖ=�uJ=�=   B��=w�=�ܼ�4[=l��< 3�<   �"�=�=�ܼ�*=U�<yg<      blend_shape_data           	   material             Skin J            Skin @         A      
   b_l_wrist B      ����C        �B   �       ��8  ��      �B�8   �       �D         b_l_thumb_0 E      ����F      ��B~��}���4�B��tB���x��B�BzB�!��PZ�8ܖ�G         b_l_thumb_1 H      ����I      B�B�@P��b:��@B )�B������JBS��;��B'����#>�6¾J         b_l_thumb_2 K      ����L      �y�B���J���jpOB��B(�s@BſtA"��B	��.���}N?M         b_l_thumb_3 N      ����O      s9fB�ӓ�
���B:�B���D�9Bp���˰BI&4���*��P         b_l_thumb_null Q      ����R      s9fB�ӓ����B:�B���E�9B|���˰BR�K���P��S         b_l_index_1 T      ����U      ��B���@�m��!��־@����M�_�.{�BI�@�c���>l�.@V         b_l_index_2 W      ����X      #��B�(�@����-ME?&�)�����B�o�?XgT��G>��;@Y         b_l_index_3 Z      ����[      ���B��.AA~�@-�@/U��S��¿�-����B.5��v��-
�n�o@\         b_l_index_null ]      ����^      ���B��.AA~�@-�@/U��S��¿�-����B.5�R���-
�n�o@_         b_l_middle_1 `      ����a      ���BT�"A��&�Z�#����q���I�%�\��Bj*������9?�a�?b         b_l_middle_2 c      ����d      ���B��0Aw� �z�����7��£,7�@��BC�Z�q\�m$?�ĥ?e         b_l_middle_3 f      ����g      ���B��SA��A��A�j�l:����E�g�Bi#$������L!�0�?h         b_l_middle_null i      ����j      ���B��SA��A��A k�l:����E�g�Bn#$�Y���L!�/�?k         b_l_ring_1 l      ����m      ��B���Au�2������;�����C-�����B���������>�w�>n         b_l_ring_2 o      ����p      my�B5��At�E�����fœ�����"���v��B��}�DO��>�>J�?q         b_l_ring_3 r      ����s      x��B~'�A�V���E:��X������v����B$����y�=��F���t         b_l_ring_null u      ����v      x��B~'�A�V��F:��X������x����B#����a���<��<���w         b_l_pinky_0 x      ����y      ���ByN�A@��?@'d"�i���6p�����B�G�_�}�Ӻ��Br��z         b_l_pinky_1 {      ����|      ��BJs�A��f�#q�o���������Py�BT߳�8�T>�¿}         b_l_pinky_2 ~      ����      ��Bp�B��`�p>S�y��������W�B �����:�ʰӼ����         b_l_pinky_3 �      �����      �2�B���A�7����?ɘ�����´���Q�B����
+Y���.�:����         b_l_pinky_null �      �����      �2�B���A�7����?ژ�����µ���Q�B�����8l���.�5����         b_l_forearm_stub �      �����        �B   �       ��8  ��      �B�8   �       �   PackedScene    �      	         names "   �      left_hand_model    Spatial    ArmatureLeft 
   transform 	   Skeleton    bones/0/name    bones/0/parent    bones/0/rest    bones/0/enabled    bones/0/bound_children    bones/1/name    bones/1/parent    bones/1/rest    bones/1/enabled    bones/1/bound_children    bones/2/name    bones/2/parent    bones/2/rest    bones/2/enabled    bones/2/bound_children    bones/3/name    bones/3/parent    bones/3/rest    bones/3/enabled    bones/3/bound_children    bones/4/name    bones/4/parent    bones/4/rest    bones/4/enabled    bones/4/bound_children    bones/5/name    bones/5/parent    bones/5/rest    bones/5/enabled    bones/5/bound_children    bones/6/name    bones/6/parent    bones/6/rest    bones/6/enabled    bones/6/bound_children    bones/7/name    bones/7/parent    bones/7/rest    bones/7/enabled    bones/7/bound_children    bones/8/name    bones/8/parent    bones/8/rest    bones/8/enabled    bones/8/bound_children    bones/9/name    bones/9/parent    bones/9/rest    bones/9/enabled    bones/9/bound_children    bones/10/name    bones/10/parent    bones/10/rest    bones/10/enabled    bones/10/bound_children    bones/11/name    bones/11/parent    bones/11/rest    bones/11/enabled    bones/11/bound_children    bones/12/name    bones/12/parent    bones/12/rest    bones/12/enabled    bones/12/bound_children    bones/13/name    bones/13/parent    bones/13/rest    bones/13/enabled    bones/13/bound_children    bones/14/name    bones/14/parent    bones/14/rest    bones/14/enabled    bones/14/bound_children    bones/15/name    bones/15/parent    bones/15/rest    bones/15/enabled    bones/15/bound_children    bones/16/name    bones/16/parent    bones/16/rest    bones/16/enabled    bones/16/bound_children    bones/17/name    bones/17/parent    bones/17/rest    bones/17/enabled    bones/17/bound_children    bones/18/name    bones/18/parent    bones/18/rest    bones/18/enabled    bones/18/bound_children    bones/19/name    bones/19/parent    bones/19/rest    bones/19/enabled    bones/19/bound_children    bones/20/name    bones/20/parent    bones/20/rest    bones/20/enabled    bones/20/bound_children    bones/21/name    bones/21/parent    bones/21/rest    bones/21/enabled    bones/21/bound_children    bones/22/name    bones/22/parent    bones/22/rest    bones/22/enabled    bones/22/bound_children    bones/23/name    bones/23/parent    bones/23/rest    bones/23/enabled    bones/23/bound_children    BoneAttachment 
   bone_name    l_thumb_mcp_fe_axis_marker    BoneAttachment 2    l_index_finger_pad_marker    BoneAttachment 3    l_index_finger_tip_marker    BoneAttachment 4    l_index_fingernail_marker    BoneAttachment 5    l_index_dip_fe_axis_marker    BoneAttachment 6    l_index_pip_fe_axis_marker    BoneAttachment 7    l_middle_finger_pad_marker    BoneAttachment 8    l_middle_finger_tip_marker    BoneAttachment 9    l_middle_fingernail_marker    BoneAttachment 10    l_middle_dip_fe_axis_marker    BoneAttachment 11    l_index_palm_knuckle_marker    l_handMeshNode    mesh    skin    material/0    MeshInstance    	   variants    T      
�#<            
�#<            
�#<               
   b_l_wrist    ����     �?                  �?      ��                                   b_l_thumb_0           ��#?eũ>7�1?`��>�7?H	 ���4�y�?��>�q @w�? [��      b_l_thumb_1          �w?\i�?V�=���>�=U?f���LV�<�?:]?p@��4@G��      b_l_thumb_2          tYy?�z7>���h�D�x?g�4>I*>�p�!wy?%P@�9 ���ڳ      b_l_thumb_3          �|?�>�k�=I�ֽ�z?͆1��$�">�Cz?�FX@h��5� q4      b_l_thumb_null          ��?  �&  �3��O�  �?  �����  �1  �?E@�?   �  �4      b_l_index_1    ��~?�^��FW�8��=�~?=Ҁ�S%=�Et= V?�AM;?o��      b_l_index_2          ��?�˻�k����;�?��S=�Mf<��S�š?�r@d]4�b�4      b_l_index_3          F�|?
�>3=T��,�6}?�$=70g=�4漙}?�@��j��$
�      b_l_index_null          ��? p�  2 p0��?  ��  �  �0��?QC�?  �  �3      b_l_middle_1    �D}? �ѽ�'Խ���=�~?��P<jN�=.ٿ�
�~?�A�5�>��0�      b_l_middle_2    
      ��?�ڄ;���S�|���?q�<C4<�η���?�]�@�5�.64      b_l_middle_3          \�{?��=>�7��6=���z?͢�=��~<D���b?;Q0@�P+�.���      b_l_middle_null            �?  ӳ��0  �3  �?  F3 ��  F�  �?`4�?  �5  �4      b_l_ring_1    k�v?"��7�~���=QH}?Kb�=�t>t��@�v?��Az&'?��?      b_l_ring_2          ��?�6�n=ûQ�<<�g?���=�7�;6����j?8�y@������4      b_l_ring_3          >>?�L=��o=O�M�@�?�ݳ;�%n�p�	�ݎ?�*@K�ݴ�m��      b_l_ring_null            �?  γ H2  �3  �?  h���G�  h3  �?Ә?   �   �      b_l_pinky_0    q�u?��< ����=��i?��>p<�>z�Ͼ"�_?!Z@�%q?�0@      b_l_pinky_1          �?4Xb�V�X<lh='X{?V�9��DC�k�9>��{?��@3C�8�of�      b_l_pinky_2          0�~?���<����׾�k/?X&�=��=�y���T~?S�D@\ ��±4      b_l_pinky_3          �w~?f�D=�	�=z5D�G�?I0o�%*ɽMҌ��~?0�@C������4      b_l_pinky_null            �?  ޳���2  �3  �? �4
 �� ౴  �?�n�?  �4  ��      b_l_forearm_stub      �?              �?              �?               p���p�)���{���{��3>��,=p�)>�jx?�3�'P@  @5  `4     �?                  ��      �?     ��?��?��<     �?                  ��      �?      @��ѽ�)�<     �?                  ��      �?    0-�?���@@�<   @I�����,��,�� �
=P#�<��=ζ?��
��@  ��   �   ��J��S�~��~����U=��< �S=�N?��U��r@  �5  �4     �?                  ��      �?    Pu�?&� ? ��;     �?                  ��      �?    ��@P�� ��<     �?                  ��      �?    0��?�(� Gl<   ��Ƚ������}���}��J�=�Ʒ=��=$�}?�JýDQ0@  ��         �?                  ��      �?    *B A��@�:�                               node_count             nodes     �  ��������       ����                      ����                           ����x                           	      
                                 	      
                                                                                                    !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7       8      9   !   :      ;      <   "   =   #   >   $   ?      @      A   %   B   &   C   '   D      E      F   (   G   )   H   *   I      J      K   +   L      M   ,   N      O      P   -   Q   .   R   /   S      T      U   0   V   1   W   2   X      Y      Z   3   [   4   \   5   ]      ^      _   6   `      a   7   b      c      d   8   e   9   f   :   g      h      i   ;   j   <   k   =   l      m      n   >   o   ?   p   @   q      r      s   A   t   B   u   C   v      w      x   D   y      z   E   {      |                 }   }   ����   ~   	                    ����      F              }   �   ����   ~                    �   ����      G              }   �   ����   ~                    �   ����      H              }   �   ����   ~          	          �   ����      I              }   �   ����   ~                    �   ����      J              }   �   ����   ~                    �   ����      K              }   �   ����   ~   %                 �   ����      L              }   �   ����   ~   %                 �   ����      M              }   �   ����   ~   %                 �   ����      N              }   �   ����   ~   "                 �   ����      O              }   �   ����   ~                    �   ����      P              �   �   ����   �   Q   �   R   �   S             conn_count              conns               node_paths              editable_instances              version       RSRC    [remap]

importer="scene"
type="PackedScene"
path="res://.import/left_hand_model.glb-0a7976d29b950727e5aeb313e66702cf.scn"

[deps]

source_file="res://addons/godot_ovrmobile/example_scenes/left_hand_model.glb"
dest_files=[ "res://.import/left_hand_model.glb-0a7976d29b950727e5aeb313e66702cf.scn" ]

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/root_scale=1.0
nodes/custom_script=""
nodes/storage=0
materials/location=1
materials/storage=0
materials/keep_on_reimport=true
meshes/compress=true
meshes/ensure_tangents=true
meshes/storage=0
meshes/light_baking=0
meshes/lightmap_texel_size=0.1
skins/use_named_skins=true
external_files/store_in_subdir=false
animation/import=true
animation/fps=15
animation/filter_script=""
animation/storage=false
animation/keep_custom_tracks=false
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
             class_name OculusHandTracker
extends OculusTracker
# Extension of the OculusTracker class to support Oculus hands tracking.


# Current hand pinch mapping for the tracked hands
# Godot itself also exposes some of these constants via JOY_VR_* and JOY_OCULUS_*
# this enum here is to document everything in place and includes the pinch event mappings
enum FINGER_PINCH {
	MIDDLE_PINCH = 1,
	PINKY_PINCH = 2,
	INDEX_PINCH = 7,
	RING_PINCH = 15,
}

var hand_skel : Skeleton = null

# Oculus mobile APIs available at runtime.
var ovr_hand_tracking = null;
var ovr_utilities = null;

# This array is used to get the orientations from the sdk each frame (an array of Quat)
var _vrapi_bone_orientations = [];

# Remap the bone ids from the hand model to the bone orientations we get from the vrapi
var _hand_bone_mappings = [0, 23,  1, 2, 3, 4,  6, 7, 8,  10, 11, 12,  14, 15, 16, 18, 19, 20, 21];

# This is a test pose for the left hand used only on desktop so the hand has a proper position
var _test_pose_left_ThumbsUp = [Quat(0, 0, 0, 1), Quat(0, 0, 0, 1), Quat(0.321311, 0.450518, -0.055395, 0.831098),
Quat(0.263483, -0.092072, 0.093766, 0.955671), Quat(-0.082704, -0.076956, -0.083991, 0.990042),
Quat(0.085132, 0.074532, -0.185419, 0.976124), Quat(0.010016, -0.068604, 0.563012, 0.823536),
Quat(-0.019362, 0.016689, 0.8093, 0.586839), Quat(-0.01652, -0.01319, 0.535006, 0.844584),
Quat(-0.072779, -0.078873, 0.665195, 0.738917), Quat(-0.0125, 0.004871, 0.707232, 0.706854),
Quat(-0.092244, 0.02486, 0.57957, 0.809304), Quat(-0.10324, -0.040148, 0.705716, 0.699782),
Quat(-0.041179, 0.022867, 0.741938, 0.668812), Quat(-0.030043, 0.026896, 0.558157, 0.828755),
Quat(-0.207036, -0.140343, 0.018312, 0.968042), Quat(0.054699, -0.041463, 0.706765, 0.704111),
Quat(-0.081241, -0.013242, 0.560496, 0.824056), Quat(0.00276, 0.037404, 0.637818, 0.769273),
]

var _t = 0.0

onready var hand_model : Spatial = $HandModel
onready var hand_pointer : Spatial = $HandModel/HandPointer

func _ready():
	_initialize_hands()

	ovr_hand_tracking = load("res://addons/godot_ovrmobile/OvrHandTracking.gdns");
	if (ovr_hand_tracking): ovr_hand_tracking = ovr_hand_tracking.new()

	ovr_utilities = load("res://addons/godot_ovrmobile/OvrUtilities.gdns")
	if (ovr_utilities): ovr_utilities = ovr_utilities.new()


func _process(delta_t):
	_update_hand_model(hand_model, hand_skel);
	_update_hand_pointer(hand_pointer)

	# If we are on desktop or don't have hand tracking we set a debug pose on the left hand
	if (controller_id == LEFT_TRACKER_ID && !ovr_hand_tracking):
		for i in range(0, _hand_bone_mappings.size()):
			hand_skel.set_bone_pose(_hand_bone_mappings[i], Transform(_test_pose_left_ThumbsUp[i]));

	_t += delta_t;
	if (_t > 1.0):
		_t = 0.0;

		# here we print every second the state of the pinches; they are mapped at the moment
		# to the first 4 joystick axis 0==index; 1==middle; 2==ring; 3==pinky
		print("%s Pinches: %.3f %.3f %.3f %.3f" %
			 ["Left" if controller_id == LEFT_TRACKER_ID else "Right", get_joystick_axis(0), get_joystick_axis(1), get_joystick_axis(2), get_joystick_axis(3)]);


func _initialize_hands():
	hand_skel = $HandModel/ArmatureLeft/Skeleton if controller_id == LEFT_TRACKER_ID else $HandModel/ArmatureRight/Skeleton

	_clear_bone_rest(hand_skel);
	_vrapi_bone_orientations.resize(24);


func _get_tracker_label():
	return "Oculus Tracked Left Hand" if controller_id == LEFT_TRACKER_ID else "Oculus Tracked Right Hand"


# The rotations we get from the OVR sdk are absolute and not relative
# to the rest pose we have in the model; so we clear them here to be
# able to use set pose
# This is more like a workaround then a clean solution but allows to use
# the hand model from the sample without major modifications
func _clear_bone_rest(skel):
	for i in range(0, skel.get_bone_count()):
		var bone_rest = skel.get_bone_rest(i);
		skel.set_bone_pose(i, Transform(bone_rest.basis)); # use the original rest as pose
		bone_rest.basis = Basis();
		skel.set_bone_rest(i, bone_rest);


func _update_hand_model(model : Spatial, skel: Skeleton):
	if (ovr_hand_tracking): # check if the hand tracking API was loaded
		# scale of the hand model as reported by VrApi
		var ls = ovr_hand_tracking.get_hand_scale(controller_id);
		if (ls > 0.0): model.scale = Vector3(ls, ls, ls);

		var confidence = ovr_hand_tracking.get_hand_pose(controller_id, _vrapi_bone_orientations);
		if (confidence > 0.0):
			model.visible = true;
			for i in range(0, _hand_bone_mappings.size()):
				skel.set_bone_pose(_hand_bone_mappings[i], Transform(_vrapi_bone_orientations[i]));
		else:
			model.visible = false;
		return true;
	else:
		return false;


func _update_hand_pointer(model: Spatial):
	if (ovr_hand_tracking): # check if the hand tracking API was loaded
		if (ovr_hand_tracking.is_pointer_pose_valid(controller_id)):
			model.visible = true
			model.global_transform = ovr_hand_tracking.get_pointer_pose(controller_id)
		else:
			model.visible = false


func _on_LeftHand_pinch_pressed(button):
	if (button == FINGER_PINCH.INDEX_PINCH): print("Left Index Pinching");
	if (button == FINGER_PINCH.MIDDLE_PINCH):
		print("Left Middle Pinching");
		if (ovr_utilities):
			# use this for fade to black for example: here we just do a color change
			ovr_utilities.set_default_layer_color_scale(Color(0.9, 0.85, 0.3, 1.0));

	if (button == FINGER_PINCH.PINKY_PINCH): print("Left Pinky Pinching");
	if (button == FINGER_PINCH.RING_PINCH): print("Left Ring Pinching");


func _on_RightHand_pinch_pressed(button):
	if (button == FINGER_PINCH.INDEX_PINCH): print("Right Index Pinching");
	if (button == FINGER_PINCH.MIDDLE_PINCH):
		print("Right Middle Pinching");
		if (ovr_utilities):
			# use this for fade to black for example: here we just do a color change
			ovr_utilities.set_default_layer_color_scale(Color(0.5, 0.5, 0.5, 0.7));

	if (button == FINGER_PINCH.PINKY_PINCH): print("Right Pinky Pinching");
	if (button == FINGER_PINCH.RING_PINCH): print("Right Ring Pinching");


func _on_finger_pinch_release(button):
	if (button == FINGER_PINCH.MIDDLE_PINCH):
		if (ovr_utilities):
			# use this for fade to black for example: here we just do a color change
			ovr_utilities.set_default_layer_color_scale(Color(1.0, 1.0, 1.0, 1.0));

     class_name OculusTouchController
extends OculusTracker
# Extension of the OculusTracker class to support the Oculus Touch controllers.


# Current button mapping for the touch controller
# godot itself also exposes some of these constants via JOY_VR_* and JOY_OCULUS_*
# this enum here is to document everything in place and includes the touch event mappings
enum CONTROLLER_BUTTON {
	YB = 1,
	GRIP_TRIGGER = 2, # grip trigger pressed over threshold
	ENTER = 3, # Menu Button on left controller

	TOUCH_XA = 5,
	TOUCH_YB = 6,

	XA = 7,

	TOUCH_THUMB_UP = 10,
	TOUCH_INDEX_TRIGGER = 11,
	TOUCH_INDEX_POINTING = 12,

	THUMBSTICK = 14, # left/right thumb stick pressed
	INDEX_TRIGGER = 15, # index trigger pressed over threshold
}

# Oculus mobile APIs available at runtime.
var ovr_guardian_system = null;
var ovr_input = null;
var ovr_tracking_transform = null;
var ovr_utilities = null;

# react to the worldscale changing
var _was_world_scale = 1.0

# Dictionary tracking the remaining duration for controllers vibration
var _controllers_vibration_duration = {}

onready var camera : ARVRCamera = origin.get_node("ARVRCamera")

func _ready():
	ovr_input = load("res://addons/godot_ovrmobile/OvrInput.gdns")
	if (ovr_input): ovr_input = ovr_input.new()

	ovr_guardian_system = load("res://addons/godot_ovrmobile/OvrGuardianSystem.gdns")
	if (ovr_guardian_system): ovr_guardian_system = ovr_guardian_system.new()

	ovr_tracking_transform = load("res://addons/godot_ovrmobile/OvrTrackingTransform.gdns")
	if (ovr_tracking_transform): ovr_tracking_transform = ovr_tracking_transform.new()

	ovr_utilities = load("res://addons/godot_ovrmobile/OvrUtilities.gdns")
	if (ovr_utilities): ovr_utilities = ovr_utilities.new()


func _process(delta_t):
	_check_move(delta_t)
	_check_worldscale(origin.world_scale)
	_update_controllers_vibration(delta_t)


func _get_tracker_label():
	return "Oculus Touch Left Controller" if controller_id == LEFT_TRACKER_ID else "Oculus Touch Right Controller"


# example on how to smoothly move the player using the controller joystick
func _check_move(delta_t):
	if (controller_id != LEFT_TRACKER_ID):
		return

	var dx = get_joystick_axis(0);
	var dy = get_joystick_axis(1);
	var dead_zone = 0.125; # radius of the dead zone
	var move_speed = 1.0

	if (dx*dx + dy*dy > dead_zone*dead_zone):
		var view_dir = -camera.transform.basis.z;
		var strafe_dir = camera.transform.basis.x;

		view_dir.y = 0.0;
		strafe_dir.y = 0.0;

		view_dir = view_dir.normalized();
		strafe_dir = strafe_dir.normalized();

		var move_vector = Vector2(dx, dy).normalized() * move_speed;

		# to move the player in VR the position of the ARVROrigin needs to be
		# changed. As this script is attached to the ARVROrigin self is modified here
		origin.transform.origin += view_dir * move_vector.y * delta_t;
		origin.transform.origin += strafe_dir * move_vector.x * delta_t;


func _start_controller_vibration(duration, rumble_intensity):
	print("Starting vibration of controller " + str(self) + " for " + str(duration) + "  at " + str(rumble_intensity))
	_controllers_vibration_duration[controller_id] = duration
	set_rumble(rumble_intensity)


func _update_controllers_vibration(delta_t):
	# Check if there are any controllers currently vibrating
	if (_controllers_vibration_duration.empty()):
		return

	# Update the remaining vibration duration for each controller
	for i in ARVRServer.get_tracker_count():
		var tracker = ARVRServer.get_tracker(i)
		if (_controllers_vibration_duration.has(tracker.get_tracker_id())):
			var remaining_duration = _controllers_vibration_duration[tracker.get_tracker_id()] - (delta_t * 1000)
			if (remaining_duration < 0):
				_controllers_vibration_duration.erase(tracker.get_tracker_id())
				tracker.set_rumble(0)
			else:
				_controllers_vibration_duration[tracker.get_tracker_id()] = remaining_duration


# this is a function connected to the button release signal from the controller
func _on_LeftTouchController_button_pressed(button):
	print("Primary controller id: " + str(ovr_input.get_primary_controller_id()))

	if (button == CONTROLLER_BUTTON.YB):
		# examples on using the ovr api from gdscript
		if (ovr_guardian_system):
			print(" ovr_guardian_system.get_boundary_visible() == " + str(ovr_guardian_system.get_boundary_visible()));
			#ovr_guardian_system.request_boundary_visible(true); # make the boundary always visible

			# the oriented bounding box is the largest box that fits into the currently defined guardian
			# the return value of this function is an array with [Transform(), Vector3()] where the Vector3
			# is the scale of the box and Transform contains the position and orientation of the box.
			# The height is not yet tracked by the oculus system and will be a default value.
			print(" ovr_guardian_system.get_boundary_oriented_bounding_box() == " + str(ovr_guardian_system.get_boundary_oriented_bounding_box()));

		if (ovr_tracking_transform):
			print(" ovr_tracking_transform.get_tracking_space() == " + str(ovr_tracking_transform.get_tracking_space()));

			# you can change the tracking space to control where the default floor level is and
			# how recentring should behave.
			#ovr_guardian_system.set_tracking_space(ovrVrApiTypes.OvrTrackingSpace.VRAPI_TRACKING_SPACE_STAGE);

		if (ovr_utilities):
			print(" ovr_utilities.get_ipd() == " + str(ovr_utilities.get_ipd()));

			# you can access the accelerations and velocitys for the head and controllers
			# that are predicted by the Oculus VrApi via these funcitons:
			print(" ovr_utilities.get_controller_linear_velocity(controller_id) == " + str(ovr_utilities.get_controller_linear_velocity(controller_id)));
			print(" ovr_utilities.get_controller_linear_acceleration(controller_id) == " + str(ovr_utilities.get_controller_linear_acceleration(controller_id)));
			print(" ovr_utilities.get_controller_angular_velocity(controller_id) == " + str(ovr_utilities.get_controller_angular_velocity(controller_id)));
			print(" ovr_utilities.get_controller_angular_acceleration(controller_id) == " + str(ovr_utilities.get_controller_angular_acceleration(controller_id)));

	if (button == CONTROLLER_BUTTON.XA):
		_start_controller_vibration(40, 0.5)


func _on_RightTouchController_button_pressed(button):
	print("Primary controller id: " + str(ovr_input.get_primary_controller_id()))

	if (button == CONTROLLER_BUTTON.YB):
		if (ovr_utilities):
			# use this for fade to black for example: here we just do a color change
			ovr_utilities.set_default_layer_color_scale(Color(0.5, 0.0, 1.0, 1.0));

	if (button == CONTROLLER_BUTTON.XA):
		_start_controller_vibration(40, 0.5)


func _on_RightTouchController_button_release(button):
	if (button != CONTROLLER_BUTTON.YB): return;

	if (ovr_utilities):
		# reset the color to neutral again
		ovr_utilities.set_default_layer_color_scale(Color(1.0, 1.0, 1.0, 1.0));


func _check_worldscale(world_scale):
	if _was_world_scale != world_scale:
		_was_world_scale = world_scale
		var inv_world_scale = 1.0 / _was_world_scale
		var controller_scale = Vector3(inv_world_scale, inv_world_scale, inv_world_scale)
		$TouchControllerModel.scale = -controller_scale if controller_id == RIGHT_TRACKER_ID else controller_scale
        class_name OculusTracker
extends ARVRController
# Contains common logic and functionality for the ARVR positional tracker 
# supported by Oculus.


# Controller ids for the left and right trackers.
const LEFT_TRACKER_ID = 1
const RIGHT_TRACKER_ID = 2

var _remove_tracker_on_first_frame = false

# Parent node for the touch controller. This will be used to remove this node 
# when the tracker is removed.
onready var origin : ARVROrigin = get_parent()

func _ready():
	_initialize_trackers()


func _process(delta):
	if (_remove_tracker_on_first_frame):
		origin.remove_child(self)
		_remove_tracker_on_first_frame = false


func _initialize_trackers():
	# Hide the tracker and set up a flag to remove it from the scene tree. This is done so the node is
	# disabled until the tracked hand is detected by the Oculus system.
	visible = false
	_remove_tracker_on_first_frame = true

	# Connect to trackers updates signals so we're notified when the Oculus system detects a tracked
	# hand.
	ARVRServer.connect("tracker_added", self, "_on_arvr_tracker_added")
	ARVRServer.connect("tracker_removed", self, "_on_arvr_tracker_removed")


func _on_arvr_tracker_added(tracker_name, type, id):
	_enable_tracker(tracker_name, true)


func _on_arvr_tracker_removed(tracker_name, type, id):
	_enable_tracker(tracker_name, false)


# If true, enable the tracker by making it visible and adding it to the scene tree.
# If false, disable the tracker by removing it from the scene tree and making it invisible.
func _enable_tracker(tracker_name, enabled):
	if (_get_tracker_label() == tracker_name):
		if (enabled):
			print("Enabled " + _get_tracker_label())
			if (!origin.is_a_parent_of(self)):
				origin.add_child(self)
			visible = true
		else:
			print("Disabled " + _get_tracker_label())
			visible = false
			if (origin.is_a_parent_of(self)):
				origin.remove_child(self)


func _get_tracker_label():
	return "Oculus Tracker"
extends RayCast

onready var ray_reticle = $RayReticle

func _physics_process(delta):
	ray_reticle.visible = is_colliding()
	if (ray_reticle.visible):
		ray_reticle.translation = to_local(get_collision_point())

            [gd_scene load_steps=3 format=2]

[sub_resource type="SpatialMaterial" id=1]
albedo_color = Color( 1, 1, 1, 0.75 )

[sub_resource type="SphereMesh" id=2]
material = SubResource( 1 )
radius = 0.02
height = 0.04

[node name="RayReticle" type="MeshInstance"]
mesh = SubResource( 2 )
material/0 = null
      RSRC                    PackedScene                                                                 �      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    bind_count    bind/0/name    bind/0/bone    bind/0/pose    bind/1/name    bind/1/bone    bind/1/pose    bind/2/name    bind/2/bone    bind/2/pose    bind/3/name    bind/3/bone    bind/3/pose    bind/4/name    bind/4/bone    bind/4/pose    bind/5/name    bind/5/bone    bind/5/pose    bind/6/name    bind/6/bone    bind/6/pose    bind/7/name    bind/7/bone    bind/7/pose    bind/8/name    bind/8/bone    bind/8/pose    bind/9/name    bind/9/bone    bind/9/pose    bind/10/name    bind/10/bone    bind/10/pose    bind/11/name    bind/11/bone    bind/11/pose    bind/12/name    bind/12/bone    bind/12/pose    bind/13/name    bind/13/bone    bind/13/pose    bind/14/name    bind/14/bone    bind/14/pose    bind/15/name    bind/15/bone    bind/15/pose    bind/16/name    bind/16/bone    bind/16/pose    bind/17/name    bind/17/bone    bind/17/pose    bind/18/name    bind/18/bone    bind/18/pose    bind/19/name    bind/19/bone    bind/19/pose    bind/20/name    bind/20/bone    bind/20/pose    bind/21/name    bind/21/bone    bind/21/pose    bind/22/name    bind/22/bone    bind/22/pose    bind/23/name    bind/23/bone    bind/23/pose 	   _bundled        
   local://1 &      
   local://2 {      
   local://3 �     
   local://4 �        SpatialMaterial             HandMaterial                �)�=?�&?TXr?  �?
   ArrayMesh             r_handMeshNode ?      
         array_data    @�  �ý��=�Dd=�"j z��;6   ��      }p��L�=��a=�Jc +e��;(6   ��      Yɽ ��=��T=�&- #y��;�5   ��      ��ƽ��=�Q=�O  Ic��;�5   ��      ��ʽ���=��C=�� {�;�5   ��      նȽq��=��>=�4� .s�;�5   ��      �Uý+�=��L=�t h.��;�5   ��      k����Y�=�x\=aP 1E��;76   ��      ��Žug�=E;=�J� Ge�;�5   ��      k����Y�=�x\=aP �1��625   ��      �@��1��=u�W=Kf �I��6\5   ��      �Uý+�=��L=�t ����6d5   ��      �c���t�=7�F=6j� �%��6�5   ��      ��Žug�=E;=�J� ��W�6�5   ��      IZ½ͯ=X9=\� �(�6�5   ��      �(���B�=��"= @� �4�6*6  N��    S���Ս�=�-=�;� �.1�6�5   ��      F@��F/�=��)=5T� �C�L6�5  ��M    -���8�=z1=8K� �E��6�5   ��      �Ѱ��ʠ=z:=MX� �Q�%6�5  /��    ����+�=�c =-Y� �>6&6  ��c0    ������=�1=E`� �K�5�5  ��I    -㴽��=��=A� �1O6T6  ��,    ����Ŏ=��=-X� �A�5O6  U��z    u��:��=�t=<� �36|6  ��V|    ���<u�=��T=bN� �c�M6g5   ��      &d����=[�N=_R� �`65  .��    x���'�=�A=RN� �S�a6�5   ��      f���v��=�Vi=&5l �s��;a6   ��      ���A��=if=L+[ �t��;�6  ��    ����!�="�_=SK: �`��;z6   ��      �����=�=�yZ=eD  �j��;�6  6��    +ý�#�=��a=��_ �y�;6   ��      �ƽQ/�=�V=��9 �v�;�5   ��      m���f�=��a=��` �q$�;&6  R��     �ý�K�=��T=��6 �l)�;6  	��     �ǽ�"�=�6=��� �l*�;�5   ��      Evʽ�e�=Qb>=��� �v"�;�5   ��      Y�Ž�m�=�)=��� �m.�;�5  ��S     ��ɽ�ߞ=��5=�� �x&�;�5   ��      S���Ս�=�-=�;� o;�;j5   ��      �(���B�=��"= @� �g<�;T5  N��    w�ƽvF�=%V/=�"� �u/�;�5   ��      �]��V��=_"=�� �k5�;x5  X��    �����=�=�yZ=eD  �g�5C5  6��    ����!�="�_=SK: �_�U6+5   ��      ����-p=A��<�3� �X8�:O5 <�f[  ����T�z=�=�� �Y+";u5  
��*    �Z��D��=C=�9� �T0;K5  JԴ+    I(��q�d=���<��� �_)�:w5 b�SH   �쓽�px=�\�<`� �.U5�6 y���  �Z��D��=C=�9� �1 �5�6  JԴ+    �<��x6�=�=&Z� �?�5t6  r֌)    ����-p=A��<�3� �#*�5�6 <�f[  "ҍ�@�{=O�=3m� �9&5X6 &�I�  �k��nc�=`�=Cb� �Kl5/6  sߋ     ����[�=$�-=T]� �VB5�5  ��#    aŉ�D�y=�=Bk� �B
�4
6 ��-	  �ᓽ�Ǆ=T:=aL �a(5�5  ��{(    Y�����u=
-=N[' �O�4�5 n�"
n  Y�����u=
-=N[' �S�;7 n�"
n  �ᓽ�Ǆ=T:=aL �_9;�6  ��{(    Ս���o=̴8=L6U �c;�6 �=	�  �딽7�=��E=[(M �e:;�6  0��/    տ���P=,�?=�f �a3;c6 ����   r!��#�e=>J=�] �[;0;R6  3��    �r��6VL=��4=©D �[4;06 }���   �멽�a=��==��< �Y8,;$6  7��    
&����=�jE=U]� �U�5�5  Z��>    ���l��=D�Q=`J# �_�5_5  ��5    �����͏=�[:=XY� �Z�5�5  C��r    �v�����=.UF=aF' �bl5�5  /��u    �Q��qJu=�C6=�� �W4M;�5  ��p}    �O����a=��.=�� �X2*;�5  b�    xJ���ht=m�F=��3 �V:P;6  V��{    ���Ɛ=_�=�� �^/n;r5  tЊ/    u��:��=�t=<� �U-I;F5  ��V|    Բ���=�F=�� �Y+G;r5  ·0x    -㴽��=��=A� �[5i;F5  ��,    ӥ��u�=�t]=[+L �m�;�6  ��c&    �眽�V�=\�Q=\%N �g\;�6  ��Jx    ���l��=D�Q=`J# �c�;�6  ��5    �v�����=.UF=aF' �a];�6  /��u    �'��i�<�=��S �v(|:,6  �� %-  �����!�<]	=��U �s0b:46  ��
&3  U+��Vc�<��=��] �t+p:q6  ��\�  N����.�<(?=��\ �q4W:|6  ��I  �'���J�<�	=��V �p6J:56  �_3�  k����<��=��V �n;4:-6  ��!G  Ë�v�<\=��Z �n;=:�6  ���]   #�����<ȇ	=ûV �hD%:u6   x͆2    �<�����<w��<g(= �w�V:@8   ��Rn    �2Ǽ�Z�<�[=M�d �~&:(8   X��v    H��|�<���<k? �|�?:r8   ܸ"G    7���;�	<6=D�h �z�9?8  c�(�  E¼Ŋ=,��<]U	 �\�1�6   ��]    �<�����<w��<g(= �rF1i6   ��Rn    ����͵�<iϩ<cJ �d	!1�6   ��xR    H��|�<���<k? �w�0�6   ܸ"G    `f���1=.�N<�`� � ^4�7  �Τ(�  �[H���9=*{<c� �)4^7  �w{  �rT�$=d�<\� � 4�7  ��,?*  �54�4	*=�jL<"`� �/�3�7   ��y    K���&�<�| 9o�h8�1  e��     ���@�j'�<�n >c/R8@2  4��    ��l��8��< | 4q�8]2   ��      ��
���	�b��<�l ;d1i8�2  ��g     "e��=̼�ב<�eG @I�|8�1  S��    q��s����<�eH :J��82   ��      h��ڒʼ���;�F� �0/7�:  ��O    m��F���~�;�� ��6�:  ��r     o���ټ���;�B� �2Y7�:  ��Y    ���/���#�;�� �7�:  ��I    b#��6���<�� ���6�: �� K   ��OB�E<�� ���6�:  ��	    E����0�y<� ����6; j�<W   �
��.���o<� ���y6; ����   y	0�=�Eb�<��_ s+�740   ��      ��0����p�<�;C Ck�80   ��      T"3����}�c<�� �iA�7�/   ��      �2��q��Y_<�>� >n�7X/   ��      �.�z%���<ƹV ]U�7[0   ��      +�/��G-���r<�� �!u�790   ��      �b�FX ���<� ����6*;  ��F#    D&��F��x"<	�� ��7�:  ��&    ��!���߼D�X<�x� ��K�7�:  ��/.    0]���ؼ~U<�x� ��E�7�:  ��l    �V!�c���s<�<� �"+�7�:  ��[%    �����<[<�?� �+�7�:  �p    )�b�ü�WK<�w� ��H�7�: ��`   �3�����<A<�x� ��Hi7t:  Z��    8d0����H"<�ݙ �O�7,;   ��      T"3����}�c<�� �hC8>;   ��      ��0�|6���%<�'� �AP8;   ��      �2��q��Y_<�>� {'8!;   ��      [�.��*��~6<��� �(��77;   ��      +�/��G-���r<�� �C�7T;   ��      z(��ؼ�N�< { 1r��8�2  k��    ԡ�O��^�<�k 9e283  ��t    �R��r�F�c<� ���E6�:  ��    @N�u�<�<�� ���6�:  ��    4����d�;�� ��6�:  I��    �O�����_�;�G� �/�6�:  ��    _�������O5<�y� ��E27_:  7��    ��Q����ϊ<�gF 6H��8v2  R��    3�+��� ��<�	{ ?m	8m0   ��      �R&�X
���<�} Ei�8�0  ��1    �,��@���c�<�aG XI�8-0   ��      �@'�٧��<�hC SA�,8p0  ��    �%��!� ��<�k =a48�0  ��    ω*���#�b��<��h )bD�7�0   ��      +����l�<�� �5��7;   ��      �&������<�� �3��7;  T��    	�*�7�'�Q8<�� ���70;   ��      %�b9'�+V9<	�� ���7$;  r��    �*�U81���< � ����7U;   ��      ��$��-���<� ���l7N;  	��    �'��I���!<�?� �+.�7�:  ?��    E�,�-��*�!<�<� �948;   ��      ��'��W��kX<�x� ��O8�:  x��    }.��I��ػ]<�t� �r#8 ;   ��      � ��μ↥<�| 1r��83  Q��F    )���Ф�x�<�e 7b9�8i3  y��I    �y��4�żڨ�<�} 2s��8j3
 _�]\B   [	������p��<�a 8^>�8�3  m��b    �n���-�lBV<%� I b{8�3  ��T    ,��g	�>�P<#�	 Gd�8�3  [��U    �n���-�lBV<%� ���6�:  ��T    a �#���;�� ��R6�:  a��{    ,��g	�>�P<#�	 ����5�:  [��U    I���C��9�;�� ���%6�:  +��/     �����)�;�� ��6�:  ��{}    O0��gWܼ4w;�� �d6�:  8��     �3��������;�G� �0�6p:  W��l    ������Ԣ;�E� �/�6_:  ��<    ͌��v����,<�x� ��I7N:  �V    .����Ɨ��"<�w� ��K�6<:
 ǭ�Qd   )���%��:s�<�iA :E��8�2  !��D    ����Ù��V�<�j> :D��83
 	��ap   ԡ�d ��u<�� �c7�:  ��p    [E �ң�)�	<�� ��{7�:  ��%    �p�����2�;�� �	F7�:  ��<(    ,n�b��5=.<�� ���27;  ޔ k    S���A$�׃�<� ���78;  ѓ-l    �:�)$�7<�� ���U7;  ��k(    4���I'���<�$ ���-7C;  ��t,    ��#(��{<�D� �/�7�:  Aؽ'    r���SϼrV<�y� ��E�7�:  ��    v�8���'�<�o @d,>8�1  ��:    n-��(��B��<�| >l�T8�1  ��    b���ؼ�M�<�dJ HH�g8T1  Q�    B�������<�l D`.+8�1  Z��s    6��Z���\�< | Aj�@8U1  ��n    �n��{��<�o Ca,8R1  ��    �� �!��g�< | Ci�.81  }ف&    .�!�����l�<�fG MC�@8�0  ��I    d��_�z��<�gG LC�T81  ��e    0]���ؼ~U<�x� \�h8�0  ��l    r���SϼrV<�y� V�{8�0  ��    S���A$�׃�<� T%W8�1  ѓ-l    �b�FX ���<� O&Z(802  ��F#    �q���/6�d�<�&x eJ�8�4 ��	l  T��J��#�<�n gG�7�4 4���  �/��l2���<#y cJ�8�4 3��H  3/��F��w�< �i gH85 ��l�  *���'�c½<�hA j8�8�4 ����   Ǐ�#"����<�gD h9�"8�4 %�.�  �c��:�C���a<�߇ �c��4\; -�	�   r�h=S��1�<�� �2�s4e; ����   ����4GG���n<�ۈ �b��4p;  ��[5    ������V�eG�<�� �4�u4z;  ��51    �Q��b�;�Z�<�%y fI��7�4  ��%    k��ܵP����<�l gG�7�4 z�,m   sh���m+�඼<�j= l6��7�4  ��c    Xn��" 6�_rt<�2� �_;5i;  ��"    [u���/��Zo<�9� �ZD5T; @�oN  :<��X�c;�<��f KR;7s4   ��      ���M�е�<�>H YU7W4   ��      ����r_���<��  Kf�6^4   ��      ,�}N��ӫ<�@
 @e)�674   ��      �B���c���<��f KFI�6�4   ��      Wv�:�l���<ß5 %'r�6�4   ��      	�	��k���<� �ޚV4�;  ��    m4
�'[e�5Ζ<�� �6��4�;  ,��    +���#f�ք�<� �۞A4�;  ��    �k�=�_�!�<�� �1��4�;  $��    ���&�$��|�<�t� �{X5N; ��*  >��l��T@�<�s� �{S5:; ����  2��J�*��k`<�6� �]B5?; ���%  ;p�y�W�1�<�و �f��4�;  ��N    F�M�]�'��<�݇ �l��4�;   ��      ����4H�U�<�-� �g6�4�;  ��    �{�g�L����<�3� �l;5�;   ��      ���Gd�P֐<�ȧ �n��4�;   ��      ����r_���<��  �x��4�;   ��      d���AS�d��<�� �t0�4�;   ��      ,�}N��ӫ<�@
 ;WF"5�;   ��      ���}n��ߟ<�� �7��4�;   ��      Wv�:�l���<ß5 ���4�;   ��      0��Ri�_��<�� �4��4�;   ��      R����n��'�<� ���4�;   ��      >C���W�ef�<!� �ܖ%4o; t���  
[轵�S�:>�<(� �ܕ4[; ����  ��u=M�:�}<�� �4�p4O; H�<y  A�����=��PR<�� �d��4E; ��I  ܵ�MQ���|<��� �c��4�;  ��N    J��K�i[v<�݇ �_��4�;  ��^{    ޴ �?�Y��W�<�� �1��4�;  v��z    �����Q�ܐ�<�z cN'7~4   ��      ǜ�ǺK��=�<�$x gI�Q7�4  }��    �/�ME����<�aA l@�/7X4   ��      ���� >����<�eB m:�]7a4  (��    5B
�ӛ^�C�<
�o eG=7�4  ��s    ���cc��x�<��l ]H.7�4   ��      ʓ��};��֟<�q� �#y^5�;  F��    v�Q�B���<�m� $.pH5�;   ��      ����@���<�j hG$8 5 `�  T�㽆-����< &x cK�/8�4 ����   uj�ŢN��+�<#� t&!8]5 ���   
[轵�S�:>�<(� s+8H5 ����  uj�ŢN��+�<#� ���4D; ���   X1��I��s<�� �9�d48; �uv   
G��7�4�L<�� �d��4.;  Z�    ���+$���Y<�;� �ZD5&; +ۍ$F   AD��^��<�u� �|M5!; |�0R   ���gz�1p�<�hA g:�:8�4  ��    T۽uk(�?�< z cL�G85  $��h    p\ؽ��>�J]�<�e iC98:5  ��b    �"ؽ6�J���<� t!',8s5 L�lcE   �"ؽ6�J���<� ��4+; L�lcE   ٽ�8E��&m<
�� �8�U4!;  ^��d    U~ܽ�23���F<�� �a��4;  �t    �d߽��T~M<�6� �X?�4;  f��x     ���ի�<�t� �yC5;  ��Kg    D�޽rz�5�<�gD h8�S8�4  ̣2\    �? �*����<�r� �y[5c; ��D   �8���:�TEz<�0� �b7
5|;  ̏2p    �����F���<�&x gH��7�4  <��    �B���6��b�<�i> m6��7l4  ��    "����[��h�<"� �ߓ.4�; ׭(K   8����?��\�<�&x fH��7�4  \��    ?R �>�U���<�k hE�7�4  +��x    �}�!�0�ӵ�<�i? m5��7{4  Ԑ*o    0r���X����<�q hEm7�4  ��u    m��/X5�}ϙ<�q� �x`5�;  ��m!    F���/��<�s� �y^5y;  ��i    ��?#@�&��<�1� �a9 5�;  c؛'    ����Z�`����<$�	 ��84�;  ��    m��/X5�}ϙ<�q� t��7<4  ��m!    F���/��<�s� v��7K4  ��i    �95���<�k�<�] �r��:�,   ��      �!5��˷<\�l<�FE  Y��:�,   ��      ��8��W�<A1<��� �r��:g+   ��      X�6�ӽ<ʻ'<�S� 77��:5,   ��      e�4�{�y<>k}<��Y �e�:c,   ��      f�6��\<�"D<�� �T�:^+   ��      a:&�	�k<�<�� ��&^8$8  ��    �C&��M<͝T<� � >v8C8  ��Q    ��+���h<-
<�� ��2u88  Z��    <�+�2xG<c�Q<� �O�8*8  ��?    �5���<�L�;�� ��4�8�7   ��      ��8��W�<A1<��� �k�8�7   ��      �!5���<=�;�9� ��8�7   ��      X�6�ӽ<ʻ'<�S� ��-�8P7   ��      ��4��e<�d�;ԫ� ��[�8�7   ��      f�6��\<�"D<�� �{�8�7   ��      й+���<wD�;�� ��	Y8�7  ��l    i�&�e`�<���;�� ��C8�7  ��\    �0�-%�<��;�� ��q8�7   ��      ��0�� �<c�;�A� ���e8�7   ��      �6,�1��<H��;�?� ���K8�7  x��    ^�0� -�<2ؓ<�y �r��:G-  ��H     \�,��5�<+b�<�{ �q��:�-  0��    �*1�/3�<l�z<�[N �N��:j-   ��      ;�,�4��<���<�_N �I��:$.  ��*    ��+��v<��<��d �U={:�-  ��A    jf0���p<U�<�` �U3�:�,  ��I     }20�+qi<7�<	�� ��3�8�7   ��      @�0��xA<��G<��	 �]�88   ��      �-�r�<�:3<�{� ���?8N7  ��    \�1����<�N-<�x� ���b8C7   ��      s7�+�<���<�\ �VSA:q1  cÛ<    *y���<D/�<�~ �x�c:�1  ��8    ���΂<��<�` �ZPL:�0 v��
�   /���ִ<P��<~ �x�m:!1 s��
�   G���/�<�1<�~� ���&7�7 9�kHZ   ���D��<B��;�M� ���h78 ���\�   �����<A�2<�}� ���e7�7 ��9�  ���>�<��;�G� ����7	8 ���  �!��S�<%��<�^T �O��:�1  V˨4    �U�<�I�<�_S �O��:C1 ��M  ��轄Ul<���<ޚC �K]:v3
  ��z  �3�l��<P��<�~ �|�+:�3 
 )�I  ���C��<���<��W �UX:+3
 ���q 
�S�</��< ~ �{ 9:c3
 b�T� V N��F�a<��<�� ��r�9D3
  J�  ����d<�u#<��� ��y�9�2
 ���:� �!�-*�<��0;� ��,�6�8
 ���bS N��F�a<��<�� �E7�8
  J�  �q�:q�<��`;� ��.7�8
  {��     ����d<�u#<��� � F=7�8
 ���:� �὞��<�7;�Z� ��Y6U8  ���   ��D!�<�Х9�� ���6�8  >�@	   ������<�U;�Y� ����6O8  g���   /@�^˹<(*}:�� ���6�8   ��      X�ཀྵ)=��<�}� ��	'6 8   3��    5��f�=yx+<�~� ���\68  I�>w  ���`A�<�x�< ZY �X�_:�3 
b�h�D��߽Ӯ�<Ќ�<�YX �W�U:4 
 ��t�   V��t�<g�<��Y �VU::�1  ��q    ���'��<���<�~ �y�\: 2  6��w    �����\<A�@<�  ��y$:>1  ��W    k%���^<w=<�  ��y:�1  ��LS    KI� ~�<1��;��� ��,�7p8  У.\    �����<� �;��� ��.�78  ͧ1X    �����\<A�@<�  ��<8�8  ��W    k%���^<w=<�  ��8�7�8  ��LS    ��[J�<}�s;��� ���7D8  ��]    )	����<n�P;��� ��v7R8  �Y    3	�3w�<"�;�P� ���87#8  �[    ������<�/<�~� ����6�7  /��l    S`���<P��<�`R �L�}:2  ��z    ������<���;��� ��88 �P   �!�=+�<��;��� ��,8	8  ��Ft    @%�)�<���;�E� ����7�7 ���   Q;"�`��<��;�E� ���8�7  ��Zr    >N!���n<�Q< �� ��(H838  ��m    [e"�QΫ<�s�<�} �s��:�/  ��Tk    �!�ԏ|<�Ǔ< �a �WIg:7/  ��t    ����î<M��<�} �t�:80 Q�!�   �f���<[%�< �` �XK]:0 *�G�   ��"����<Z�<�aO �H��:�/  ��pj    �d����<��<�aO �G��:_0 $�&�   {�&���|<ʓ<��d �XCr:m.  ��    BM'�(R�<꩞<�} �r��:�.  ��    Ͼ'���<.�<�aN �I��:�.  N��    9�'�w��<�3<�|� ���8_7  ��C    �"����<sm6<�|� ���8r7  �f    � '���<3�;�C� ���08�7  ��p    �[!�C�S<�S<�
 ��7c8S8  ��hh    �_��r<� <��� ��0.8B8  y�    �0��W<�U<� �<K8g8  ��    �m��\�<�*7<�{� ����7�7 ��a �   �X���<��<�U �RZ/:J2
 ��Q�   @c�pw�<UV�<� ~ �y Q:u2  $��"    {����_<�`3<�� ��z:2
 ��v�   �f�� �<�.�;��� ��0x7�8  ��    {����_<�`3<�� ��@�7�8
 ��v�   ����<�X;��� ��>7`8  ��<    �b����<ѝ;�X� ���708  ��y    f����<=1<�~� ����68  ��'    -���*�<9�<�_S �N�s:�2  ��+    �?��܂��ˎ< ~ �{��9#/
 ��x�  q��y"$�#�z<	�] �ZUr9�.
 ���  ����"v�[I�<~ �|��90
 ���	�   |2�\���rw<�Z �XYo90
 K���   5�4;�*o<�\U �S��93/
 ���  Џ�w�';,�o<�[W �U��90
 ,���   �>��	���L<� ] �u��9�&   ��      ?������c2<�@D `��9�&   ��      X<B����X�;�� �r��9!   ��      /�@��É�͓�;�L  1@��9�$   ��      b>�/�F�{+@<��U �c�9�%   ��      Ҥ?��&i��<�� �N�9:!   ��      �����x;�<�}� �� Q8`9
 �vx  R,�x;�;*u
<�}� ��".8U9
 ��h�  ev�[m�:�~o;�O� � C8�9
 ����  ���;�}B;�R� ��"8�9
 ��
V  I�?����@u;�� �8�8�9   ��      X<B����X�;�� �*w9�9   ��      ��?�kb��K�C;�9� ��@�8�9   ��      /�@��É�͓�;�L  ��c9�9   ��      �'>��_���u;ݧ� �+�8�9   ��      Ҥ?��&i��<�� �HH�8:   ��      km4��qN��T�;�� ����8�9  ��    �5������/;� ����8�9  e��    �.���@�T��;�� ����8�9  ��d=    ��.�Oڻ��9;�� ���8�9  vȈ7    �(��1��*�;�� ���n8�9  ��ve    �@)������ @;��� �t8�9  ڑ$n    .�#�B�*���; �� ��R8�9  ��$    *^$�����S� ;��� �X8�9  ��%)    ��9���3;	� ����8�9   ��      ��:�b�v��Ja;�=� � �8�9   ��      ��5�y$.��h;�A� � 
�8�9  8��    ��:���E��bD<�WN V��9�(   ��      u�9�����#�v<�w �w��9�(  Z��     �6�6{��E�O<�\O  R��9"*  o��    ��5�^�ݻ��<�| �y��9*  x��    �5�EL�f�b<��^ �WI�9�)  ��'    �9�-FL���V<�] �X;�99(  J��     �T9���W�e��;�� ����8�9   ��      h9��}��Q<�� ��8$:  ��P     �O4�{u��<� ����8(:  &��    ��;�G�g�t��;�t� ��-�8�9   ��      
�6��{�8҈�;�|� ���8�9  ��    �(�Di�;��<�}� ��$8K9
 ���3Q   3��p��;�� <�}� �� �7A9
  	��n    �1��PB;��;�U� �� 8z9
  ��p,    e��f�w;��:�W� ��7r9
  ��h    ��������n<
�P �Nbd9:2
 ��[   ��->���r<�R �Q`g9�1
 ���X   O���� ���;	�� ��~=9$2
 �@�  WN�N`,����;�� ��~?9�1
  j�    �.�7�g�+!<� ����8+:  ��1    ��/���˻>Ƈ<�	} �z��9,  ��(7    �0�����k]<�\R �R��9,  8��0    �*����V��;�H� ��8�9  ��Av    �t*��9;Ɗ<�}� ���8u9  ��Tz     %��P�9��;�L� �e8�9
 �Ѕ.�   �F%���:;K�<�|� ��s8k9
 ��'  ��.��P?���r< �a �[K9�+  Lв/    >�/�Fꟺ�;�F� �	�8�9  ��1    j]0���:�\<�|� ���8}9  ��)    
x��U�!<4$��� �h4�8 
  ��    q[���V�;Mb,�� � �T49 
 ����   O���9<����� ��4�8 
 <�!�   a͝��\;	�$���� ��4(9 
 ��/�  ����s^��Oi$��� �<4>9 
 ����  ư�����+-��� ��4P9 
 ��  .�~�}c�;=�2��� ��39 
  ��     2�~��)<��%��� �	4�8 
  2��     ��`�A�/<|]*��� �z3�8    ��      ��_�S�<�l��)� ��3�8    ��      ǿC��&6<>26��� ��2�8    ��      T�C�ִ�<i"��0� ��2�8   #��     'U��a����Uӻ�Ԋ � ��3�9  ��g  +Y�������{���Ό ��,4�9  e��
�	  ��n�8�����ۇ �� 4�9 
{����q��QIK�F*���Չ ��S4�9 
�W�k���}�����n��Ό �$��3�9 x�Q�	n�4��;���Pϛ��ы �# k3�9 >�d� 0Ds�A8v�n���ى � "3�9 
.���� J�w�y:)��@��� �c3r9 
��y� � REr��
�%ֳ:� �!�j2: ���LRoꄽˡ��=M;� �%��25: ��BB,Irz����������� �&��2: ��w7 W��� ���{ :� �'�D3: 8��w�EP�ҽR⁼4+;�� �,?�5 : 
 b�%)w%  Ζ۽�%S���<�=� �xS6�9
  a��D�
  GBӽD9��;�¬ �';�5�9
  �hB^�8  �۽f:>���<��� �a&T6�9
  ��s*  ���T<Gp<��� �29�9]3
  ���;T  �Y���_<��<��W �q2�9�3
 6�c#I 
���;<��<�� |�9\3
  ��^"  ����*<��<��7 �}�9�3
 �q�iV#� �ĽY��#�U<��� �R1�8�4 �z9`J�
��½l���k�<��O �u/�8�4 }s kB>�GȽ�9��K<� �z�8�4 ]��=�nhȽ�$ͼĚ<��m s5�8�4 ���+��<�ͽ񱖼1c�<�} {9�4
 e�	
��ѽl`ּh�<�g gE�8�4 
��iE �%ֽ���k��<�} ,v��8M4
 ,�
f` 
�ݽ¢<�a�<��z �}:4 
 4�Rw
  e�׽��<��<�4p �r�@::4 
 L���  ,�ԽB^=�3]<�x& �%�c:O4   ��K    X�ཀྵ)=��<�}� ���v:4   3��    mԽυ=6	
<�{� ��q:S4   ��v     ��սd�<��	;�Z� ��6W8 
 Q��E�   mԽυ=6	
<�{� ��
6"8   ��v     ��ؽ��<E���� ��!>6�8 
 o��5�  fܽä�<d��:�Օ ��;|6�8 
 ��#%  ���T<Gp<��� �V7�8
  ���;T  
���;<��<�� �y�69
  ��^"  �ٽ��K<�;�� �	Sz6�8
  z�IY<  ���OA$<Y�;�o� ��a�69
  ��RX  rl޽���;p����J� �?~6,9
 -�t-{*�,�ͽ���;�6���,� �4�5%9 
��VX���˽�2T<���� �; 6�8 
���B�)� Su۽�d����J;�E� �+@6:
  #�?�  �r߽:�c���<�r� ��_g6:
  ���  )9ս�Ἴ0M:�܇ �!�5?: 
 ��?1  {��r�Ƽm��:�߇ ��5Z:   ��      �a潓���Pz[;�D� �5<64:
 w�)� � ��ý39���Z���� �()e5�9 
m�Maz� �ƽ�u+�y %��Ҙ �$+�5�9 
��>�9f �Ͻu:���;�� ���n5w: ]����Ͻ�	�Z N<� ���f5�: ������:ݽ�T�Q�;�� ����5�:  �� C   dOܽGN��t[J<"� ����5�:  ��{�  N����|
�� <�� �]!�4�: d��T��vý�v��Z�Z<�� �gH05�: MǸ!�
�������_�<ĩ� �C�4: /r�N�49
�ĽY��#�U<��� �_�65�: �z9`J�
������	�Ud�;�͕ �Gc4o: �|�;�2�0۲��&�J�;ӵ� �<�4W: �e�DE:@�����*=���<<f� �A�2(7   ��b    K�)�-d;=Kګ<7j� �<w37  E�Dt   �����o=��z<>f� �CB2Q7   ��>    �Mμb8==�R<<j� �@�1q7   [��u    �8��:(=�_�<T_ �TK2�6   nِ&    G��-l2=�"�<Le �L�2�6   I�    �bB��r=w@�;W� �%
�3	8   �e    �x�hb=c�<"^� �0�2�7   ��)8    d�f�<[�<$!=Կc �l>5:�6   ��#    �se�n�v< �=϶Y �eI:�6   8��.    �y�%L�<�+=�z �{=:�7   ��B;    E���^I�<�!=Fh �}�S:8   н.B    nw(����<&�1=�| �}]:�7   ��q    B����=B�&==!j �z�r:�7   N߰     �
�)I<�o=�s �t1:�7  R��{#  �I	�?T"=��=SM8 �c��:8   ��    ;�㼸�
=A�
=]>; �n�j:(8   �� 7    �I	�?T"=��=SM8 �Zp2J6   ��    ;�㼸�
=A�
=]>; �c�1Z6   �� 7    `�����=��&=G\� �P�56  �u    �t�`^u<��<6/h �4"R/�6   7��     g�&��a�<9n<5TM �8�/C7   x��    y�s���<�<\$N �^)50�6   ��*	    7���r��<Oɍ<VM3 �X�0$7   ��0    �&��ܯ;�<��| }�9�4
 {Df��8@��g-;�g�<��} }�9�4 
�|g��IV½��;��<��{ |�9�4
 s�gO�n����ڶ;�6�<��} }�9�4 
`��S_�����>:-<^��<��m �t2�96 N��L�h H蒽�j<���<��m �u0 :�5 
P�K� �  5��ZU<��<��u y%�9�5 �Ɇ%��������P<σ�<��v y%�9�5 
��#S��^]��Y�<��y |�9\6 l�)+^�cn�H���ظ�<� z 	~�9�6 ���<�� �k����:)��<��t  y$�9�6  g�];9  tW�e,j��%�<��w }�9�6  ��t.�!  �p��-��;��<��o �v.�9V6 C�oJF F���yO<--�<ʾ] �jC�9>6  �}�   oer�K<5��<Ͻ` �jC�9�6  �kzt  8��<R	� ��<��| {�8c6 ����������$�:��<�_ _S�8�6 ��� ܟ}��M����<��{ z�8�6 ��h���q�?q"����<�\ ]U�8�6 1�jD �V��h�׼u�<�| |�9m6 ���+QN]덽w�޼#��<�| {�986 �O+���-������'Խ<�(w v�<9�5 Rd�_�#��zH��2��<�(w v�!96 �� Ia�����2������<�(v w�H96 r�j���w��C�����<�'v w�-9D6 ��H�3����V0��%�<�{ {�c9�5 ��5L�O
�����/F�7p�<�| {�V9�5 "��A2-��ٚ�N���.[�<�~ }�~9�5 
�=*��T���i��oũ<�
~ }�q9�5 
-�B-�"�n᯽Ԕ�:��<��~ 	}�9-5 
G��Ev�����N��;#_�< �} }�905 
�8B�g���U;=ͮ<�} 	}�9^5 
B��..�
��������mJ�<�{ }�~9W6 ��KG��$��$#�x��<��| 	~
�9$6 +˹*�@��1��&�<�| |�p9 6 ���L������Ŋ�d!�<�~ ~��9�5 ��R*�t�,u��dS�g��<�%v x�b9�6 Z��w�~�����k����<�)u w�U9O6 Nyv����~�ġ����<�)u w�99|6 ���M�w�i��Փ����<�&v x�F9�6 <�VW$G�nS�߃���<�<�z 	z!97  )��!�   �r^�>�ü���<�} }�(9�6 �ʫ2$� ��i�S��jm�<��{ z�8�6 ��5�� ��t���ͼL�<�| }�9�6 Aʗ,A��F�^�(�<�W ZW�827   M�    y�\�?��|��<�Y [W�8�6  X��  ����H�;d��<��w {�9"6 Y��!���]���M��-:�<��~ ~�9�5 
�����⁩�1Y;�sj�< �~ ~�9[5 
Ɲ�2("kKd˽�/�=s�I=�  }�;�5   ��      �hɽ_ţ=��V=�6 ~�;�5   ��      Y'Ž�^�=��b=� b �~��;6   ��      x	�����=��l=�} �}��;I6   ��      �׾��4�=�i=��t �}	�;36   ��      %-��cl�=Nzl=| �x�;e6   ��      �b���R�=�j=��w �v�;H6  ��G     �҉X=�<C=�x �h(;�6 ����  Ϻ���6d=��A=3t �j;�6 ��Q  �U�� n=gOO=�r �a73;y6  ��)     ������z=�N=A�l �f+9;�6  %��-    �=����=�-=��� �_,m;�5  Sޫ!    �Ŀ�:^�=��=�� �`+m;�5  ��Z    00�� �e=�H=��� �X-';�5  ��#    �Ǹ�!	z=�,&=��� �X-K;�5  k��~    �A��	Nn=ѻ=�Գ �Y)%;�5  ��?     �����/�=�a=�װ �Y*I;�5  ��Aw    $	���~�=�$g=3�t �p};}6  ��n    ������=��f=��v �l'x;Z6  ��    �C��P<�|=�i �l@:37  ��\B�   �����Z;��	= �q �q8�9�7  ��Wf�  G�F��<M=ֳ[ �dL�97  0�X�  �_���N�<�' =��Q �t0V:�5  _�O�  �[���&�<��=��H �v)n:�5  ��C   �֗�'~�<���<��M z!b:�5  �y�i�  i���l�=$��<��8 z z:�5  ��[W�&  !����~=$�\=�p �b9W;i6  �}    }ᠽV=�=�o[=B�k �h,Z;�6  q��{    �{Խ�֗<�ܰ<��| �~:F4 
 H�&3�  �=׽�ac<�I�<��s �|�9/4
  ��B40  �#޽h����u�<��d �o5X9�3
 )��(I�bҽ�f��֗<��y �~q9H4
 a�:.,L�߽��+9v�<��{ �~�9�3
 y���
�iԽۣ^:RC�<��{  ~	�984
 ^�62Z�|��{ʵ�0;�<�x |�8�4 ���5� ���ý66���x�<� } }9�4 
K�� �|���W�ؼ���<�r  z��8+5 o-\�")���2���<��{ <m�8t5 &�$��u���h0�N�<��c <UG�8�5 ��U�p�讽u#����<��v +q$�8�5 i�@1�cD��o*/�?��<��] +UR�8�5  ���F�  �7ǽ�Z=���;�z� ���u:�4  Ü�bg   {ƽ�=��R<�} �h:�4  x��f�   �
˽�<�<����*� ���5�8 
 #��h9  ��Ƚ���<4�:�^� ���5S8 
 ���hx   ��
)=�W<<�g� � .�4�7  ��A_#  �Hs��=B�;�`� �m4 8  u�h|!  I��=�|�<�AE Le�}:O5 է+D��ɢ����<d�<�*g 5q�]:Q5 ��;��������</��<�K )wp:}5 `�Bb|� �2���|�<;n�<�a zY:�5 ǐ�\���ڙ�#�=�7�<�N RZ"�:A5 [��Ka$J ;*���=�Y�<�%% -t�:v5  3qJc�+  ����1�=�߹<�I� Ef�:&5  �h"S�C  ��=��<�*� 'u�:k5  �^�S�M  �5���n=�w/<�v� ��#58  ,��%�  �L�=��1<�z� ��X5
8   E�    ����L=�Qu<�s� ��/>5�7  z�=-F  �r���=�y<�w ��v5�7 ���[ �o���=�~:<�}� ����58  D�kN  �����=��;�t� ���~5#8  Q�{
2  `���-L=���;�o� ��55%8  ���
�   ㌒�R�=z��;�i� ���48  ���   ܕ����=V��;�e� ��48  ���=�  ���K� =�u2<�p� ��0�4�7  ��O;  ����ۀ�<j�9�Y� � 		5Q8  ��]   %}�����<M߳��]� ��]5U8 
6�*
YD ����&=L�9�V� ��4H8   ��
    �{��?=�jb: V� �p498   ��7"    ��Ž��=�E=��
 �j)�;�5  H��     |ɽ�3�=ߊJ=�� �t!�;�5   ��      �J���M=�f&=�� �Z/;�5 ��J   銶����=� ^=ζY �d2s;56  ��     SK���E�=(,O=��3 �]4p;6  ��e    \����]w=��T=ګV �[=S;B6  Ă:}    忿�7�=!>=��
 �]0n;�5  U�    �x����<U!�<��V �kA :6  �c_   ��d
s<O�<ŶS �dJ:`6   ��N    .�h���><��=ͱT �aN�9�6  ���H�   �k�� �<��'=��i �q4Q:�6    ��	    �{Ƚ���=�W=��; �}�;�5   ��      �Eʽ�I�=�N=�� �{�;�5   ��      3ƽ泜=y(_=��U �}�;6   ��      V��ƃ<�m�<��a �o;: 6   ��~w    =�c���	=X�;	U� �%4&8   ԥ*Z    hh��+��<8�*<5r� �6
	1�7   4��6    �^����<p�<&x �%	b0�7   ��    �����=�F�;d� �)H2�7   ��Pv    "`ؼ�I�<��L;o� ��18   ��xC    �6��p��<$�D:
v� ��08   i��    �1�U��<G?�Y� ��268   ĵ:J    [e
�~0�<NQ`�_� �2B8   :��#    �μ�|�<��ֻ�_� �!1M8   g��     �a<��K�<�ػN� ��2u8   ��    �����<�l	��M� �@2z8   ��h    �����<��G��5� �m1�8    ��      PJ��O��9��;��� �5�4�: Ȝ?�����X�6�<�̏ �I�I4�: ����
�b�"�j��@(:;�� ���0:   �}    2h ����A<�� ���g0<:   6��R    ��<��a���p;�� �	�'1$:   ��lQ    |�;�Kc#��<�� ����0N:   ��.    ��h�6j,��Z<<�� ����1m:   ��    #�j�pB ����;��� ��2H: ~�^'� � �ZS� �'�	�'<�� ���W1]:    ��    @U�0���p�;�� ���16:  �ʯ4V   Y@��0��1X<�� ��(2�:  ��33  i&���$����;��� ��r2\: �ځ!�� K���0���?<�� ���3�: z�6`]	� �z���9���<
� ���D3�: ��_r� &I����2��C<
�� ���3�:  ݄ n  B���-:����<� ���3�: �Ӄ+F C ]���4���<�� ���2�: ��(�R M���{�)�k� <��� ���2z: ��a3� ��"��E$���<� ���0r:   ��4    i�<�ދ)��ň<� ����0:   ��"    ��i�^C/��d�<� ���{1�:  Y���  k�T���,��B�<� ���1�:  ���I   bC~���0�iڝ<�  ����1�:  n���  ��i�^C/��d�<� y�8�6  Y���  bC~���0�iڝ<�  "y�8�6  n���  � ����o<�� ����/+:   4��v    F�B�
�D�;�� � �"0�9   ���R    >��k����< � ���H/d:   ̚2e    ~�W�� �;���<��e �o<�9�6  X�t  ;/=�A�s�^��<��o �w+�9.7  ���AI  <;�D����]�<�y y#9I7   ��_*    *�,���@��<�V ZX�8x7   ��$    ����.����<�x x& 9�7   ��I    Y�I��u��<�V YY�8�7   ��>H    ��"��E$���<� x�8�7   ��4    >��k����< � x�8�7   ̚2e    r^ϼo���A<%�� ����.:   ��o@    �ݲ����_O3;�� ����.�9   ~�    �ڼУ�n��<'� ���Y.W:   �e    �(�� ׻v��<��y }�9t7  ��4O  �^E�:d�!��<�x 	~��97  �M�
   �7��o����<�{ 	}�b9I7  ̃Nz�  ����M�$��<�} ~�p9�7  E�Y�  �Z��v��H�<�| �|�9�7  ��Z �  ����<������<.�u �}�988  ���J  ���'Ӽ���<�v x))9�7   ��U|    jz������< �U ZX98   4��}    �ڼУ�n��<'� "w�88   �e    �)���.̻؞�<-�v �}
�9�8   ��[     �]��":�1�<0u �}�9�8   ��Z     Vq��<�Za�<D�k �}
�9l8  #��L   �}���8���<F�i �}�9m8  ,���   ��黎SL��<0�t �|U9�8   ��t     &a��ad�3��<G�h �}W9n8   ��|    軑���靖<5�j �u/)9�8   s��     �U�ç��9�<N�^ z"+9r8   ���    �R�?ּxp�<T�J  o2�8z8   3��    s��:\¼@3�<>�R eH�8�8   A��     �f���5�]F<2�� �ݻu-:   ��n    ]Km�l���!<+�� ��� -�9   ��    �i��R����<M� ����,:   ��g    �)���弃�M<@�& ���!,�9   ��I    xs~�1��;�D�<T^ �{�9u8  0�!�   	��R�;���<7p �{��9�8   ��\     y�s���<�<\$N �v�%:�8   ��*	    �t�`^u<��<6/h �s�:�8   7��     %«�W�E"�<2�t �~	�9<8  ���  �r��,�i\�<
�~ �~|98  I�^1W  �X��'�۸�<-�# �Ƿ]-C:   Oׯ(    ;Ƈ�-o漖�<F�U m9	9\8   ��    �g������Vd�<?�h y$/9N8   P�    ���ۯ~����<7�q �}X9C8   ��    ��Ƽ�|ļ�[�<!�s w)/9#8   ��VB    ��ڼ�I��''�<�{ �}U98  _�F@Y   �k��������<+�Y aP938   ��:    ������ּ�����Ƒ �%��3�9 θ5<3�$Ѐ���ͼ�I��ˎ �% 3�9 ��9�
U㚽jF��)3��� �u4v9 
���� W��v�ѻd���� �� 4b9 
 ���;  ���>w<����� ��4�8 
 ?�yE   ^����<Uo��!� �
z4�8 
  ��R    [���-^��6ѻ�Ӌ ��4�9 
��Ht����N��h��� �
�4�9 
��P
� 1����R����� �*�4: X�t<�\1��}p��';��� �(��32: 1yutz	���_��̝��F*��� �3A9 
 t�H A   >_F�R����5��� �v239    ��      ]�\�������� ��2`9  �{ m   �A�`%��F*��� �=2O9   ��\     L_O�z���t����ԋ �"2�9  ?�=4�   �a7��鸼����Պ � �1�9   \Ӣ,    �OI��x�f����Ē �  �1�9  ��ac   �0�X#ڼq���đ ��Q1�9   �G    ��˽Y׷���8�Ύ �w5-: 
��.2�R���k����ͺ�ǒ �#(5: 
�|�td�Ž�Ἱ)�;�� ��/5g:  ���0c  5��UUԼB!�:窧 �'��49: g|�h��
O��<_���� �"5
9 
��f=�����l<������ �15�8 
 ���  �;D��0�;iuG��	� ��2�8    ��      �ra���;��:��
� �U3�8 
  ��M     ��%�8C<��C��� �.2�8    ��      �y%�F�;�fV��� ��1�8    ��      ��&�ת���;��� ��1:9    ��      ���gFr���V��� � 19    ��      �����M��r+��� �
f1[9   <��    �6���?��G��� � �0F9   ~��     �tE�>'�8�C���� �	�29    ��      yIa�I�W�݀9��� �.39 
  ��M     �])����ON��� ��19    ��      ��<��4[������ ��1n9   V��    EX�b4h�]�	��݇ ��29  ����   `�9�����=��އ �!�1�9   ��(    ��S��t������ۈ �!R2�9  p���   �#������]���Պ � 71�9   m��    M��<ɼ���Ñ ���0�9   ��*    �)������;��� ��1�9   	��]    ���zP����w�	�� ��}0�9   ��M8    �4C�`:�X	����� ���1�9   b��}    ��ͽ�:��ʻ�� �$�5[9 
��|hO�	��˽ҕ�������˔ ��5�9 
 )�7[�   ��ܽ?l7����� � � D6o9
 �-�	%��ڽ#+ ���H�ᬧ �*6�9
 M�)��ȭ���#;B���� �589 
��1~ ?���aU��@��� �
�4d9 
 =��  �����h�<ㅻ�B� �G5�8 
 %��	*  a���c�<S:���F� �	�4}8  ��� R   �M���8�<��s��G� ��4r8    ��      =y�K��<��U�J� �D4c8   ��5    �rZ�F}�<)��	P� ��3Q8   ��E&    `]\����<�$ջ B� ��3�8   ��    �E{�!�<ar޻�;� �34�8    ��      p����?�<
�߻�7� ��4�8 
 ;�a a   ޓ���󕼺$���ˍ � �~4�9 �ޝ�D v��fk���8��ȏ �%�J4�9 ��6��R���y�1����<�h TT+8�5 ���� ɞ��}]��7�<} R_��8N5 @�VLB���-:����<� =n~8�5 �Ӄ+F C ����G�<���<� \Tp8�5  ��    ������6��.F<�� �!�4�:  ��    ����G�<���<� ���3�:  ��    �����#�CN<�� �S�j4�: ��wp ����(��1�-<�*� �b9�4�: ��S�jƽO���2k<�l� �x-5�: ��d�fB��L� ���<�c 3s�85 ���#b�������P%�<�r (x�8`5 A�M%?1�Rݽ��m�̝}<�cC UJ�9�3
  ��Q�  �r߽:�c���<�r� l&�9k3
  ���  ;��5>��]�<�gD OC��8�3
 4��I� �f�����L<�u� i�9Q3
 ���h��Ͻ�	�Z N<� <k�8�4 �����dAݽC��j�<�d 3b<�8F4 ��� S �w����_à<} 6p��84
x�_�� F׽��_�a(�<�g {�(9"4
 ��3�b �f�����L<�u� ��A�6:
 ���h�GȽ�9��K<� ��D5�: ]��=���ǽ��C��<	{ \R�z825 )���   ��ý066���<�f aMk8q5  9��    ��½OLA��
�<� ���3; �l|   �vĽ��;�"aN<	�� �*�64�: +�T   �Ƚ
�'�#<�� �Z��4�: �;�   ��˽����;<�<� �PD�4�: ;���  �Sͽ�G����<�t� �t-5�:  ��Q  �&̽`
��ĩ<�eI e9��8�4 B�.�  2Žz��wg�<�dC `D��8�4	��	�� ����e��<�ӧ< ~ �zF:�2
 e���   �`���c�<���<�T �P\#:�2
 ����  �L��U�a<��,<�� ��Ak7�8
 �h|  �����<4K�;��� ��387�8
 ����   ����m��<8y�:��� �� 7s8  ��d    ���,��<��;�X� ����6B8  ��    �<���� =�l/<�~� ����68  ��.	    ����/V�<�N�<�]U �R�j:3  ��-	    M! �X��q�<~ �}��9C2
��� � GK�.���Ty�< ~ �~ �9�2
 W���� �#�5���d<�L �Kc`9�2
  ����  ���������;�� ��|=9�2
  z�|  O���� ���;	�� ����6�9
 �@�  �" ��%�����:�� ���6�9
 ���x   ���������;�� ����6�9
  z�|  ���j�V\(:��� �	��6�9
 ��� � � �����y���.�� � ��6�9
  ��� �   � ���̺��
���� �7�9
  ��F    o1��8��;aF:�]� �%�6O9
 ��#� ^ ߚ�8��;��:�[� �;7]9
  r��    �5����<_��;�} ��'+7#9
 ��
� a ���I��;�g�;�~� ��Y7-9
 ��<  V;��k�;z�j<�^T �S��9=2
 ��|�  ������;=[d<�YZ �Y��9�2
  l�KG  dOܽGN��t[J<"� Ka�8h4  ��{�  �k��{�Z=��<�#� �i4�:M5  ��(P  )ٚ��O=.��<�� �n�:v5  ��z  �Y���g=��<\� �5�6  #���   �k��{�Z=��<�#� �4Z57  ��(P  ���@kk=���<%s� �*
�4�6  w�    ��s��i=Ɂ=6r �7 �486  ��&    Ýp��d=�o#=B^5 �I �4�5  ��l    Ýp��d=�o#=B^5 �T��:&7  ��l    ��s�3bY=��0=;9` �k��:7  ��     d���6=q�+=��J �c/�:=6  ��  wI��iH8=�96=��j �l'�:y6  Jݴ"    �/��vK=�#;=!y �s �:�6  ��"    Fě���9=V�=��, �`,�:6  D���  ����޴?=,;=��| �r�:�6  U�    P
罁����;��� �u893
  �ܸ]  A߽ܡ!����;։� �T19N3
  {�<DG	  X潄Z���t<��S �RX\9^3
 ��Gv} ��0�;��d<�XV Z��9@3
 ��\	� u��l�<�Z�;�| ��9$3
  C�_#\  �5����<_��;�}  ��9�2
 ��
� a Pf�I������<�~ �~��9x3
 Q�i��.���;�<�#a x��9�3
 ��5 7
�m+�;gE9�[� �0�6@9
 c�o� u��l�<�Z�;�| ��+79
  C�_#\  P
罁����;��� �o6�9
  �ܸ]  ���a� �\�h8� �l6�9
 ��A
y A߽ܡ!����;։� �)^6�9
  {�<DG	  �"�;�A���[�� � ��6y9
 l�1_)��v���>q<�Z �YXl9�0
  ��h.    Ζ�z�R���<~ �|��9�0
  JԴ+    
��;�U;Kl<�ZY �V��9�0
  ��N2    �f�l�-�G.�<�~ �}��91
  ��Oy    ���1�3�p<�V �U\j91
  8��o    ��_�;*�j<�\U �S��9'1
  S��w    �*$������<�~ �{��9.
 Q�5w   �n)�b�����<�	~ �{��9#-  ��lS    �s#��-��y<�^ �ZSu9�-
 $�Y   �(���5��8v<�` �[Oy9�,  X��^    d"%��r�:�Lk<�]T �R��9.
 �c�   X�*���: �f<�[U �T��9'-  �e    ���|,`���l���� ��7�9
  `מ(    ��� ���;��� ��7�9
  ��'    ���2	��Eq:��� �8�9
  R��    (������J@;��� �8�9
  '��    �+�	��Q��: �� ���7�9
  "��g    5��%�3��	k�� � �	�7�9
  ��|f    �1�CC?��
<�  ����7:
  ��6)    �;���D��@<�  ���8:
 ��N   ���f�:����;�� ��~B91
  ؕ&j    �1�CC?��
<�  � ~E9�0
  ��6)    ���f�:����;�� ����7:
  ؕ&j    �(�;\[�� <�� ���m8*:  k��b    �-#�BrQ��!<�  ���M8$:  ��?    �t*��9;Ɗ<�}� ���9,-  ��Tz    �F%���:;K�<�|� ��9$.
 ��'  ��������<�~ �}��9�1
  Uߩ     WN�N`,����;�� ���17�9
  j�    ������틧:�� � �J7�9
  S�    ���3��Y��� � �

b7�9
  ^�    �2���;���:�Z� �~7g9
  s�    -8��^�;�I�;�~� ���789
  ��e    �����;�sk<�_S �Q��9�1
  =��"    �L��U�a<��,<�� ��z:�2
 �h|  T��D�<x�;��� �� 8'8 ����  �Z��v<�;�;��� ��/8Q8 w�+\  ���d�X<�R<� �=58{8 8��  \�^��<���<�
~ �v�u:�0 K�En  ���'�<�<�` �XNU:�0 ��v�  �����<��<�aP �I��:�0 1��8  ��)i�<�?�;�E� ����7�7 b���  :(��.�<s1<�{� ����7�7 6�<�  J��ez<;*�;��� ��.8_8 ��`   ���%r�<w��;�� ���758 }���   ��)�Y<)�I<� �?8�8 &�@�   �b�=$󼈷�<�` 9^>�84 ��	S   �%��@����e�<} 5q��8�3
 ��2�   J齢Y��K<� Gf�814 ���V   л�G���q$�;�� � ��5�:  ��[    J齢Y��K<� ����5�: ���V   v�ΝѼZPB;��� �26q:  \��    ]��;������;�E� �0o6K:
 ���W   ���#��?�<�w� ��D�6%:
 ���   �O�/���d�<�jA BB��8l3
 @�"�  R��a$�I)�;��� �18�9
 Y���   ���0����:��� �98�9
 ��h�   �����I���<�  ���,8:
 ��9  �R��r�F�c<� J#`f8P3  ��    �2νP|;�"�<�d hER8V5  mԑ+    �cѽW%#�U��<{ aM�a85  ��'*    ��ͽ��E� ��<� s)E8�5  !��/    �Ͻ�@��5]<�� �3�H4;  ]С/    ��ͽ��E� ��<� ���3;  !��/    `�ҽ��,�
!3<�� �_��4�:  ��"    [�ս-���E<�B� �QG�4�: ��t'�   ��ֽ.u����<�v� �y85�: ��~%�   aս��X��<�gE h6�o8�4 �ʹ1{   Ye[��0��.%���� ���1:  $�-a�   �uμ#�ۼ�硻�� ���/�9   ��    ��id��)���ɏ ��b0�9   ��     �ё�Ɯ��ͫ;��� �'�U3S: ��\?�
3��<.ƀ<��X<Bk ��d*J7    ��      �,�<W|�<��<cN ���*�7    ��      dzV<�'{<?ye<	Al ��,17    ��      ?;<d�<wK<cN ��z,�7    ��      ���<���<�C4: { ��`+
8    ��      E<�U�<��;{ ���,�7    ��      Ӵ_<l�<���y� ����+08    ��      ڒ�;*H�<`���y� ��-'8    ��      �e7<ԥ�<�-l��X� ���+X8    ��      ��9;՜�<!DP��Y� �L-W8    ��      ���"7�ʟ����� ��,�8    ��      d�<�8��ۜ���� � 5+�8    ��      �/9��(�A����� �!�,	9    ��      �|!<θ!��ӓ��� �#�*�8    ��      ��o8p�;������ �=-�8    ��      � <+\�;b����� ��+�8    ��      <O�K<#���'� �
 ,�8    ��      =�e:%3V<N���)� �[-�8    ��      ���<'�<�	�<&x �w��9Z9    ��      ��<.ƀ<��X<Bk �j��9\9    ��      1g<��<�q�<&x �w��9/9    ��      dzV<�'{<?ye<	Al �j��919    ��      �Bs<Ȇ����<�~ �}x9&9    ��      @'�<�pb�\��<
~ �} u9Q9    ��      �o<);�
�<} �|��9+9    ��      ��<�p>;�k�<
} �{��9V9    ��      �^f<Ƣ����<	�p �p:#99    ��      ���<�w����v<	�p �p:9B9    ��      �q<XF,���<�| �{N9 9    ��      �Ե<!�[]�<
�| �{K9K9    ��      .�h;���<'3<_R � �-w7    ��      ���;?�t<ţw<:o �2-7    ��      �B:�
�<���;{ � .�7    ��      "3�F��<��n�z� �
�.8    ��      �ɻ�~�<944��\� ��.S8    ��      �r��5�A ���� �$.9    ��      �O*�E��'����� ��.�8    ��      #m&�D��;������ ��.�8    ��      x��X/^<#���,� ��.�8    ��      �=�;b<���<	z �x��99    ��      ���;?�t<ţw<:o �n�:9    ��      ?��;�:��<~ �|��9 9    ��      X�;>���Y�<�~ �}|9�8    ��      �q�;5�5��œ<�| �{Q9�8    ��      W��;(p�� �<�q �q8&9�8    ��      6O<%︼X`@<�S �S_�89    ��      ��;���O<�T  U^�8�8    ��      D���I����w��ь �'-E9    ��      _��:����7z� Ћ ��-,09    ��      ڬ��RQѼ ,���� ���,m9    ��       FP;�!���v=��� ��3+S9    ��      }���n<�N�<2q �P.�6    ��      ��o��9�<�'P<YU �!�.\7    ��      $ܻ�@�<�;y �n/�7    ��      �,4��R�<	�ĺy� �	�/8    ��      q�}���<9��_� �	:0P8    ��      �a����^��ot��� �09    ��      �����<�ϓd��� �"�/19    ��      ^�����;�}��� �H0�8    ��      L �Fk�;�bh��� �-1�8    ��      ����)g<�)m��0� �Y0�8    ��      }���n<�N�<2q �r�:�8    ��      G΀�a��;���<z �z��9�8    ��      u�`8�`�����<�} �}~9�8    ��      �ùm�:���<
} �|��9�8    ��      rf�<����<�r �s4(9�8   z��     ��9�X>��R�<�{ �|T9�8   ��f     �dº����b<�W ZY�8�8   ��Y     ~���#��2�;� ���D,�9   y��     b"���wؼ��<"�. ����*�9    ��      � x�ɸмQ9���� ��.�9   ;��     �*���f��U�A��Ǒ �$�.a9    ��      �~�us=v�/=��m �w �:�6  ��q�  2��f�=l�2=��k �u�:�6  ��k    �E��$�
=y #=��[ �u%�:`6  �Ø3�  ���p=�%=��S �q&�:M6  �z|i  k���tF=�Q�<�*� w#�:>5  ���L�	  f�����==���<� � �~	�:d5  Ӿ�6L
  �֔�m�$=3=��= �n%�:6  =�LWt  k���tF=�Q�<�*� �	E?5\7  ���L�	  oV���'Z=��<�T� �$�47  ȰRL�  ������?=�9�<�J� �?�4j7  ��&U$  jnn��(P=i�< _� ��47  �T  %�j��b=��<!q� �'	�4�6  ��4RD  �T�X�U=���<+n� �1G4�6  ��~J�  �lY�I�_=-	=:p �:�N4b6  $�4X�   �A�O�P=��=Bl �B� 4w6  [ŉ8  NLV�fU=y�=?[= �J�&46  �~cd   n�<�HBE=�=@[< �K��3)6  [Ҕ+  NLV�fU=y�=?[= �X��:Z7  �~cd   *�Z�2�F=Ud-=1:e �o��:97  ��Ar    n�<�HBE=�=@[< �W��:�7  [Ҕ+  y7A��H4=��,=/9g �p��:m7  U�+.~  Fsu��#:=�Z�<�\� �1�4�7  iñ!�  �@[�m�E=�w�<d� � Q4?7  ��;�
  ��>�!PI=K��<2m� �64�6  ��,�  �)�=�A=��<Ej �E�k3�6  2�D�  � !�Mv4=kV=GW9 �P 3;6  ���*  � !�Mv4=kV=GW9 �Z��:�7  ���*  �x(�7�!=�	+=5.i �u��:�7  ���  iLt����<g3-=��l �v'l:�6  ��-�  ���x(=�<=��L �w!�:6  ���S�  �����=��	=��+ �w�:�5  �p�p3  �뚽<3*=Ϻ=�� �o�:�5  ���@�
  _���Z =��<��� �{�:�5  u{�[�(  >���2=vQ�<��� �w�:�5  ���5)  ���N�/=ޜ<�M� ��U5�7  ���B{9  !���-=4�{<�c� ��B�4�7  L��H!  ����+.=��<�0� 7r �:05  ;k�a3  �*��=(=�$�<�� }�:d5  2v\�-  |����1��9�<�/ ���t2�: ����	C T=���%&�\�<�d cM�8^6 ��D!�� �c�����s�<��| z�846 �y/f-���x(����<�\ [U�8.6 �6?�
-b���A�`�<��| x�86 ��T�7ݍ�����Z�<�| z��86 -�`5!*OK�����켖�<�{ !y��8�5 �h�T�&T����-���$��<�)v u�9�5 eE0�%d���r��:/�<�'w v�/9�5 #[�IX9�!�`����¼J8�<�%u !v�9�5 �J�E9j6m��w��:1�<�x x� 9s5 �V�H'4],�Ҧ�
#Z��?�<�| {�I95 +uJ�0 �1��qo��c�<�| |�;9E5 
�q�\L w5�����+�<�
~ }�c9S5 
fFET$�^���A&��4�<�~ }�V95 
`dAb�+�/w��z���*�<��~ ~}9*5 
�j@a2B�`���$�ě�<��~ 	~
�95 
o��W���!���M��=�<��~ ~p9�4 
�f.NoF��C��~�����<��} ~
�9�4
 ,l�j�$�|����1��9�<�/ /t�8b6 ����	C ��+�Z��d��<��~ ~C9q7  ŝ�aC   neF�Z����<�~ 	~�69%7   B��B    ,R� x���S�<�x z�T9�6  i{   �o^�Y�6�W��<�w {�p9�6 ȓZh[� А�4;[а<��{ }�9�5 �;j>Vc���Y�;���<��{ |�9�5 
�����s����5<n��<��| |�9�5 
Y��	[s�� ��;+�< �} 	}�9�5 
��g�	d����7<U��<�} }�9`5 
�ɴ g�����C:Tv�<��~ 
~	�9�5 
x�n�be���d_	=��;�y� ކ:�4  ���F�  ���X=-�U<�} �r:�4  ^��;�  �7ǽ�Z=���;�z� �  �58  Ü�bg   �
��.���o<� L$^O8�2 ����   E����0�y<� N"]98�2 j�<W   4���I'���<�$ O+X8�1  ��t,    )�b�ü�WK<�w� L	��8T1 ��`   ��$��-���<� D#d�761  	��    �*�U81���< � z�7�0   ��      �3�����<A<�x� D��8�1  Z��    _�������O5<�y� B ��8.2  7��    }.��I��ػ]<�t� o!�8�/   ��      ��'��W��kX<�x� e�=80  x��    ͌��v����,<�x� G ��8}2  �V    .����Ɨ��"<�w� G���8�2
 ǭ�Qd   ��!���߼D�X<�x� ^�U8q0  ��/.    >C���W�ef�<!� q''�745 t���  	�	��k���<� k"9"7�4  ��    R����n��'�<� ZS�6�4   ��      "����[��h�<"� o'-�7 5 ׭(K   �? �*����<�r� t ��7T4 ��D   ���&�$��|�<�t� q"�8a4 ��*  >��l��T@�<�s� p"�+8l4 ����  v�Q�B���<�m� p9�(7*4   ��      ʓ��};��֟<�q� u%�e714  F��    AD��^��<�u� o�B8{4 |�0R    ���ի�<�t� q�]8�4  ��Kg    ����Z�`����<$�	 r&&�75  ��    +���#f�ք�<� q&)S7�4  ��    �-�r�<�:3<�{�  ��:7.  ��    9�'�w��<�3<�|� ���:%/  ��C    <�+�2xG<c�Q<� �d]:-  ��?    @�0��xA<��G<��	 �Om:K,   ��      �m��\�<�*7<�{� ���:�0 ��a �   :(��.�<s1<�{� ���:�0 6�<�  ��)�Y<)�I<� �z+:�0 &�@�   \�1����<�N-<�x�  ���:A-   ��      5��f�=yx+<�~� ����:�3  I�>w  G���/�<�1<�~� ����:�1 9�kHZ   ������<�/<�~� ����::2  /��l    �0��W<�U<� �	u<:�/  ��    �[!�C�S<�S<�
 �uE:�.  ��hh    �"����<sm6<�|� ���:0  �f    �C&��M<͝T<� �nN:�-  ��Q    �����I���<�  � ~L9�.
 ��9  �;���D��@<�  � ~G9�/
 ��N   �O4�{u��<� ��od9�(  &��    h9��}��Q<�� �[r9�%  ��P     �����x;�<�}� ����9</
 �vx  ��;�G�g�t��;�t� <��9�'   ��      
�6��{�8҈�;�|� "���9�)  ��    R,�x;�;*u
<�}� ����9(0
 ��h�  �(�Di�;��<�}� ����9�0
 ���3Q   ���I��;�g�;�~� ����9;2
 ��<  -8��^�;�I�;�~� ����9�1
  ��e    �-#�BrQ��!<�  ��}P9�-  ��?    �(�;\[�� <�� ��|U9�,  k��b    j]0���:�\<�|� ���9,  ��)    �.�7�g�+!<� � x\9V+  ��1    �n��렼k!»�Պ �"�2�9 ��/�] ��}��o ���.��� ��3-9 
 o�� �   �n}�xӃ<Gg��#� �
#4�8 
  ��x     �b����)�+��Ó �# G2�9 6��w� F �۽f:>���<��� �d*9j3
  ��s*  �ٽ��1�]w�<��J �w&>94
 Iyr0i Ζ۽�%S���<�=� Dj�&9o3
  a��D�
  � ��ʉ==��<��  {�:�5  �r'L6A  i�<�ދ)��ň<� x�8Z7   ��"    k�T���,��B�<� x�87  ���I   aN��=�;7={ �{��:=7  ��p"�  �n<��=(-6=| �} }:b7  ���
K  �z���9���<
� .u�8�5 ��_r� �Ͻ�4�<�?�<�eK  K�S:i4   Xæ<    �Ľ(�=p��<�k@ A�[:�4  ��yZ   E���Y�=K�<�u( Q0��:�4 d�
�[�r���=�y<�w l,��:5 ���[ �o���=�~:<�}� ?��:�4  D�kN  ���ʎ=���<�f	 ��I^5�7  i��7�  ���ʎ=���<�f	 bB,�:5  i��7�  �ğ�Cd=L�<�d/ iE��:$5 >�&_\a�i��*=��8=��} �{�:�6  ��	#;  �[����<�7=��| �{s:7  ��n  �R�?ּxp�<T�J ې��+:   3��    s��:\¼@3�<>�R ����*:   A��     ��;���O<�T ����'�9    ��      �dº����b<�W ���b)�9   ��Y     �gT;�}Ҽ���;�. ���)�9    ��      ����� �9E�<A�3 Ư��,/:   (��    ����� �9E�<A�3 !K`�8h8   (��    "Th�΂Ƽnڑ��Ѝ �$�2�9 ��7q[ �{{��]��z0��� ��3Q9 
 �	�   �vý�v��Z�Z<�� }	�8�4 MǸ!�
�jƽO���2k<�l� f��8�4 ��d���½OLA��
�<� o4]8�5 �l|   �Sͽ�G����<�t� n��8�4  ��Q  �<���� =�l/<�~� ����:)3  ��.	    ���OA$<Y�;�o� X(��9R3
  ��RX  3��p��;�� <�}� ����9-1
  	��n    f����<=1<�~� ����:�2  ��'    �����<A�2<�}� ����:a1 ��9�  ���d�X<�R<� �
w3:R0 8��  ��/<u�Ѽ��;�- ���d&�9    ��      ��<4�Լ��; �. ����!�9    ��      6O<%︼X`@<�S ����#�9    ��      �ˡ<`x����.<�U ����9    ��      �2N����<TW2=��x �x%T:%7   ��a    Y����6�w��<�	 !y�8,6  
��Sr  �̞�p�+��F�<�Z !XU�86 5�.w�� 1&���P#=)Xt<�m� ��B
5�7  �*P�  Jw��e�#=&u�<�`� ��]25�7  !�KO�0  Si��q���޺�<�w %y��8�5 �{�B�"�}Y�����5��<��y #u!�8�5 ��^�q	�ι�*���/�<�| |�,95 
E�;��)̴��s��g��<�x z�975 A~U3�0�����/ͼ���<�t #x��8h5 &]�J�.F)�J���<�1�<�} } G9�4 
���D�,�\*̽�;��<��y �}�9r4
 x��ME%N�*ʽ��:�0�<��{ ~�94
 ,�gM��.�ǽ�8I�0%�<��| ~9�4
 m�QM�+i��ֽ���;'�<��v �~�9)4
 ��7,&�YAʽױQ�˝<�{ }79�4
 ɩf/�#���ý2���G�<��} 
~b9�4
 �Z�YJ�*�ν�\��b�<��y ~R9e4
 �o�c[+� e���d_	=��;�y� ����58  ���F�  �&�����<�F�9�`� ���5Q8 
 ���.B   8M����-�LN6<�� ��G3�: �SKaV Y����6�w��<�	 ����2�:  
��Sr  �,��6��.�ǻ�ٍ �!/5�9 
iɩ� �o�����، �#5�9 
���,*	97��'C����:彘 �2�\44: /��0 �_��O�M�d; �3�!4O: Ma�YG6���;!�ܻ�� �)�59 
����	��H��[`<o���� �+�5�8 
�ٯ� 9��A�������߉ �T5z9 
 ���!!  �p�����:�'	��� �u5J9 
��q'x/-ⱽ�q���#Y��ˏ �#�4�9 
3�N4��Dy����ȼYV}�ﻗ �'��4: ���."0k��п����;��� �*��3l: I��BK2������|�<2x��9� � �5�8 
 ���(g  @uϽk�<�M�<�y �{�+:g4 
 ��UH�  *gȽI!�<��<�}  ~�:�4 
 ���\�  �|̽��<��<��} �~:u4 
 7�BO�  �0ý���<:��<�"y z�-:�4 
 �ux  �$ɽ�A�<�,�<�Ak l�A:�4 
 ���b�   ��ͽ��]<.�<��y �}�9j4 
 jt&Nn=  :��	8�<���<�q {E:v5 f��CE�����o�<���<��n y$3:�5 \�-Uq�ۜ�Eh�<�W�<��k zI:�5 ʓ@^R��
����<*�<��c w+?:�5  }�sn  `b���n<k��<��} ~�9�4 
�}�S�-� ˼����<�
�< �~ ~:�4 

�M#� [�½���<cw�<��~ ~:�4 
 �w�s7  ���)�<�5�<�~ ~�:�4 
 u�!nh  ���u��<��<�~ ~:5 
��f<m� �5��>I�<��<�~ }�':�4 
��VIt �	ǽ��<z�<��}  ~�9�4 
 x\b�%  7ƽ��\<H��<��| �}�9�4 
pfW�A� zS���F�<$��<��r z<:c5 2�;0�������<́�<��s z *:�5 �M9cCPU���y=QL�<�m= 4?�k:�4 Dֆ$�j 2R����=<��<�s2 3�c:�4  ҤSZ�   �p���C�<��<�x "y�E:;5 +��U�	ꤽ�+�<���<��{ |%:^5 
N����	����;�<_�<��~ }:75 
�Ͳ#I�r�����<�6�<�} |�4:5 
9�7R]�괽0H�<\�<�6q p�K:�4 ���?Mn �ʭ���< ª<�Ff 3e�^:5 ��[���Ȧ�;�=�ƨ<�VQ NW�q:5 �٭�
�,A�����<�h�<��Y x'N:�5  y0v�  ���YfQ=��=��� �](;�5  \��     �ݦ��Y=K		=�Ҹ �_$;�5  ��P     |C��>�==A�=��� �c"�:�5  6���  �u���JE=��=�Ծ �i�:�5  ���  ��E�⚛<�0)=��s �s33:57   ?�    3g���5=��7=z �y��:	7  �v    &��9	���;�
 ����*�9    ��      �/4�|B༎#m��� ��,�9    ��      +%A��漍*^��� � �<-�9   ��Y    �7�O��?��<�~  ~
O9�7  ی�r�   �X��'�۸�<-�# +v�8C8   Oׯ(     ��;�ڼ�y���� ���)s9    ��      �[<�M޼s�x9� ����(�9    ��      ae{�99(=q�9=��} �y�:�6  ד'l    ����=~&=��< �x#�:�5  ���?h1  ���#��?�<�w� R��8!3
 ���   ��ֽ.u����<�v� q�y8�4 ��~%�   3Z�����<���<�Nb d�M:�4   ҁ,~    �"�����<.;�<�+v v�<:�4 
 ܖ�ha   ��-���<ʯ-��2� �w2�8   u��     6��&��c2��ۈ � 21�9   [��
    )�̽{�<7H4���� ��0�5�8 
 $��e$  �򼽇��<z����� ��5�8 
 3��   �笽�
�<P�ѻ�(� �=5�8 
 C���  iќ�?l�<Q޻�3� ��4�8 
 ��u�   h׽t"<��<��p �{�9)4
 �i�cj1p�ͽ��<�'�<��x �|�9k4
 �iUMG�oĽ�!<���<��{  |�9�4 
h=Y�;��ֻ�,,<NI�<��| }�9�4 
 �F"4�5����MD<���<��} }�95 
��:.�+������_<�-�<�~ 
~�975 
sÑ �t�ޥ��9y<Bp�<��~ }:`5 
S���
g���A2�<��<��y 	{:�5 
u�G!�Y����ґ<lp�<��q x(:�5 
n��B�MBΕ�rܝ<��<��h �u0":�5 
&��f� H  (��rN�<���<��[ �q70:�5  $�{q^  b"����<���<��U �r5B:�5  A��]�  ����+.=��<�0� ��eB5�7  ;k�a3  ����1�=�߹<�I� ��mN5�7  �h"S�C  k����� =��<�[V W�Z:�4  G��N  ��,<�Ն�س�� ˍ ���)9    ��      O2��鄻�/?��� �	2)9    ��      �ˡ<`x����.<�U �U]�889    ��      zlB<y"���8L� �� ���(>9    ��      n�|<8�߼v�{��� � ��%y9    ��      �b<.zؼ������ ���'_9    ��      Ӵ_<l�<��w � �P��4U1    ��      ���<���<�C4:w � �x��4�0    ��      �e7<ԥ�<�-l�x�� �j�n4�1    ��      <O�K<#��w�� �{�:4\2    ��      �,�<W|�<��<w � �~�g4}0    ��      � <+\�;b���w � �|�4�2    ��      ��<.ƀ<��X<w � �{�*4*0    ��      ���<'�<�	�<w � �x��3&0    ��      ��<�p>;�k�<w � �{�x3-0    ��      d�<�8��ۜ�w � �~�c3�2    ��      @'�<�pb�\��<w � �}�370    ��      �|!<θ!��ӓ�w � �~��2�2    ��      �Ե<!�[]�<w �  ~��2F0    ��      ���<�w����v<w � }12d0    ��      ��,<�Ն�س��w�� �}�w2p2    ��      �ˡ<`x����.<w�� x#�1�0    ��      ��<4�Լ��;w�� }�1�0    ��      n�|<8�߼v�{�x�� �x��1|1    ��      zlB<y"���8L�z� �}�2A2    ��      �b<.zؼ���z� �t1�1�1    ��            vertex_count    P        array_index_data    <6                           	  
   
                                       " ! " # ! $ & % & ' %       ( * ) * + )  ,  , -  . 0 / / 1 . 2 4 3 3 5 2 6 7 4 4 2 6 8 7 9 7 6 9 : 8 ; 8 9 ; < > = > ? = @ B A B C A * (  (         	 
 - 
  -        
  
         D E  E ,    D   D 8 : F : G F H J I J C I K M L L N K O Q P Q R P       Q O  O   + K N N ) + S U T U V T W Y X Y Z X Y W V W T V [ ] \ ] ^ \ _ a ` a b ` c e d e f d g i h i j h k l g l i g m o n o p n q s r s t r n p r p q r u w v w x v u y w y z w { s | s q | }  ~  � ~ o m � m � � � � � � � � � � � � � � i � j � � j t � r � � r r � n � � n n � m � � m � m � m � � i l � l � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � u v � v � � � � u � y u �  �  � � p � q � | q � � � � � � o � � � � � h � g � � g k g � g � � p o � o � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � | � � | | � { � � { � ~ � ~ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �   �  � � � � � � � � � � � � � � � 	� � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 
 
  	
� � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  !!� � � � � � � � � � � � � � � � � "$#$%#"&$&'$(*)*+),.-./-,-0-10*(2(324252657989:88;7;<7=*4*24=>*>+*6?5?@5ACBCDBEGFGHFBDIDJI/.@.5@1>0>=05.4.,4=404,0"#7#97<&7&"7KMLMNLOPKPMKQSRSTRUWVWXVYZUZWUN[L[\LAB]B^]_A`A]`acbcdbabebfeefFfgFFgEghEIiBi^Bjlklmk3(k(nkoqpqrpstotqopuouvoovsvwsxzyzmyn({(){z3m3kmn|k|jk{}n}|nl~m~ym]�]^�`]�]��b�bd��f�fb��g�gf��h�hg��^�^i�u;v;8v:w8wv8zx6x?6z63623������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������OK�K����������������������L�KL\�L��L\�������U�YUV�U��UQ�V��VR�Q��Q�������������������� � ���
	
	
f d f _ a _ e f f f _ Y Z Z \ \  `  _  _ \ [ [ 7 8 !8 F ! 3 4 4   = ? R ? P R 4 7  7 ! M / 0 0 L M   !  !E D G D F G !F  F D  "$#$%#$b %b a %&('()'*,+,-+.0/01/*323425767867595:9;=<=><=;?;@??@A@BA)DCDECFHGHIGJKFKHFKJLJMLNPOPQORSNSPN,*T*2TUVEVCEW X  XYX  X   Z\[\][^`_`a_  ZYZ[Ybc$ c& $ dfefge\h]hi]kjkljmonopnqr`ra`st�t��uwvwxvy�z��z{�y��y|~}~}��������������c �e c ������������������������������������������������������������# �! ��! B �C �I C ��" �# " A C �C J �ihqhrq��H �J H ��# ��# X Z �Z ���Z �Z �Y �Y V ���J ��J �! �! ��  ! �! ����3��33�4��4e �e ���a �%a ��%�#%��������������������������������������������������������������������������������������������8�68������������0�1��1����������������������������1��������k�k^ ����������������������������������������������������������������������������� ���������������	
���������  !"#"$"$%% &&%'%(%&()*)+*+,*--+.0/01/�0�0.�2����2�23�45�5��6�5��57�6��6�8�8�8�89�76:6;:<=�=����<�<}>|>?|@A}A>}�B�BC�DB�B��EDD�	E	FEGH|H~|IKJKLJM������N�NO��OIOKI��P�IP����Q������� RRS?T?>TUCVCBVBDVDWVDEWEXWEFXFYXZ[S[?SNM\M]\^T_TS__S`SX``XaXWaaWbWZb\cNc[Nde�ef��f�fg�hjijkiklilmilnmnomnpopqorsdsed�MNMtN1 vuu. 1 5 xww2 5 2 wyy6 2 6 yzz9 6 z{9 {; 9 |}< }> < B @ ~@ ~}�> �_> ~�B ��B ��_�^_����u��s�s����e�fewu�u��w������e�es���n�pn����������1�j�k��klk�k����0�10��l�nl0������������������������������������������������������������������������������������������������������������d�d��hi�i���i�im�mo�o��oq�q���r�rd�]����j�j|��|�|}�q�r��rt�q��q�l�lj�~l�l��������������C�D��DD�J��J�H�H���H�HG��eHeFH�c�ca��a�ae��� �� � �� � �� ���� �� � �� � �� ��� � �� ����� �� � �� �� � �������������������������������������������������������� � � � � � � � �� � �� � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � } �  } � �  � �  ��
�����������������
�
�������������+-�-��,+�+������,�*,�,�������������������������������������������������������������������������������������������������������������������� � ��������
	
	""#���##����������������!!�������������������� ������������
  � ��!#"#$"%uvv&%~$"$$'~'�~(*)*+))+,+-,,-.-/../0/10243453,yww),.zyy,.0{zz.03}||23)wxx()*6+67++7-78--8/89//919:14;5;<5=U !U #!#>$>'$?A@AB@CD*D6*%&E&FE����G�HJIJKIIKLKMLNPOPQOOQRQSRRSTSUTVXWXYW6H5HI5L:I:5I<N;NO;R@O@;OTBRB@RWY'Y&'VVCVWCH6Z6�Z��[�\[)C'CW'�]�]^�G.F./FO\N\�NN�R��RT_,_`,,`-`a-/1^1�^]M^MJ^`babcadUbUEb_d`db`H?I?AIK=H=?HL>K>=KP7Q79Q7P8PS8DcEcbE�e�ef���������g��g>#S #U S hij ih j � j� j� � � � k � kk � l� lm� k kl knl �h� hj � l n� no� pq� q� � � my mz y rs� s� � x pv p� v i� h � � h � t� t� � u� u� � � v� vw� � u� ux� yz� z� � z{� {� � |}� }� � � w� w� � � {	{~	� |� |� � ~		� xx�� }} ���!yy� �� �v� ��:�w:;�<��<t�����CA�A_���9�:9<�&�'&%�#�9#[�\��\��I�iI��r�pr��w�sw��p�up��s�tsu�;��;������������������������������������������r�����������������������(&�&���#��#��������������������&������������-�������u�u��J�I�PIFA�A��R�������R�SR5<�<���@@}������������EF�F������������������������������������������������������������7�78�8797:9G[�[��T>�>A��[�[Z�]M�MP��[�[c���r�sr��f�gf������������������c���������J�����r���C��C��J�IJ������������or� r� � � � t� qt� j� jl� ����-�����������������6c 7c d 77d 8d 88999::;<<������V =V U =p�����D�6�c 6�JZ��J��S�8S������������DC�C����D��D�������M�MK�J�K��K�S�SQ�P�Q��Q�U�US��(�(&��&�&Y��x�x���z�z���y�yz��{�{y�X�Y��Y�v�vx���~��~�~H�����v�g���������������������������	�	�����
�
������32�2���.�./�����.��2��2��<�=<<�������������������������4��4����������G��JHZ����fe����s���s��s��������s�ts������������������� � �����ff��f���+�*�3* � ���	��	������
	
���������� �������dfd% ' W'  Wegbgcb@BB�jj1 f1 / f& + ' + * '   Z \Z' *  *   a? _? > _     Z  <��f/ g/ M gP rO rhO �}}3O h h\ & c+ cK + \ ^ ^ k&BFBAFo�p��p? aP arP M K gK cg�l�lk��k�k���������������������� � ��������vv1 �������&vB&355��������?�A?���npp��o��o[���\]�]��^�^_��_�_`��`�`a��a�ab�c\�\���������������������������������������������������O�ON�Nt�t����� � �� ���Q�Q��L�LK��K�KO��S�ST��T�T���U�UV�VW�W��WX�X��XY�Y���ZZ��Z�ZS��i�i���� � s���\�\���� ����� �
	 	� 		F/J/^J^ ] �] �����������������������������������������������������!$$�"*")*������������������������^ ��������������   � ��������VXQXSQ��#��#��$�#$$%�%4�54&4%&&;5;65��!�!t'�'��|?G?[G��v�uv��w�xwt�'�('�()(*)�)�P���z�+*�*��,+�+��-,,�.--./.�/�0/��0�101�2�2omm2*(C(3C4�3�C3�4�����������
 5
�����������5�5
5f5������������%' '" �!"! "!��  � �	����	�	6�77$$7���


�������8�8�966	:;;�:�:�;99<>=>?==?@?A@@ABBACCADAEDDEFEGFFGHHGIGJIIJKKJLLJMJNMMNO����������#���#�$#����1�/�/1�/���
R
R

����������'�'��'(�(��()�)(�����P��P�P��������U�X��XG�����HG{G�{�H�H{�M�P��P	3�3���	�3	
=�=���
�=
�$%$%&%&;&�;�:;9:�:����9��9��!��!��������#���"##$"7"7���������(�(''("')')LMNMPN:L<LN<<>:>9:Q9L9>LLMQMOQ\O]OM][\�\]���[�[ ���� � ��������������������������D)+)*+cD,D+,ac-c,--a.a-../-/+-/0+0�+01�1��2X 1X �1mW 2W X 2nT mT W mS nS T n?>>S @'?'>?'@�@����dI I �I dH deH H e�eb�$ �b��b% �$ ��$ �% �% W���X�WX��Y�XYY[�[  �[]  ]"   ]i" i�" q�i��i`A qA �qA `@ `^@ �^@ ^����=�jll�0.2.T2TUVUXVBTVTVVABUBVUIAdAUdGI_Id_.GTG_T2404�0l���4�j���!�=��="!�!�"�")*(*)(      index_count         
   primitive             format    �}       aabb    X<B���n�b���@!Y>fh>���=      skeleton_aabb          �5��-:�b����>~��=�߃=                 ��  ��  ��   �7ǽZ��ʯ-���=���=|�n=   ��Ž��<z��;�Tj=p�w=�R=   Kd˽6VL=A��<�=�=�E�<                 ��  ��  ��   �m���1�B��� �=�'?=(=   ^�0�2xG<�Х9l�=�£<��<   ��8��xA<w��;$U,=hs�<ң�<                 ��  ��  ��   �F%�l`ּ��:���=��h=zi=   u�9��}���.�e�=eU�<:L�<   X<B��}���:|M8=�w�<8�<                 ��  ��  ��   )��9���.�y��=h{=;�"=   ��'��-�ZPB;l�f= �<���<   T"3�U81��#�;�
$=Hr�<]�w<                 ��  ��  ��   F׽OLA��G�.l�=T�{=@3P=   �? ���[�k!»�ǖ=vJ=�=   ʓ��k�#<�4[=d��<3�<   �����n��PR<��*=�T�<�g<      blend_shape_data           	   material             Skin J            Skin @         A      
   b_r_wrist B      ����C        �B   �       �˫�7  ��      �B˫�7   �       �D         b_r_thumb_0 E      ����F      ��B���j���5�B��tB���z��B�B}zB�!@�PZ?9ܖ>G         b_r_thumb_1 H      ����I      A�B�@P��b:��@B�(�B�����JB���=��B'��@�#�7�>J         b_r_thumb_2 K      ����L      �y�B���=���npOB��B(�x@B�tA$��B	A�.�?y}N�M         b_r_thumb_3 N      ����O      s9fB�ӓ����B :�B���H�9B����˰BH&4A�@7�>P         b_r_thumb_null Q      ����R      t9fB�ӓ�
���B":�B���K�9B@����˰BQ�KA��@��>S         b_r_index_1 T      ����U      ��B���@�m��!�{־@����K�_�0{�B�H�@�cA�⁾m�.�V         b_r_index_2 W      ����X      &��B�(�@��1��&JE?&�)�����Bn�?\gTAՂG���;�Y         b_r_index_3 Z      ����[      ���B��.AE~�@<�@�V��R��¿�-����B�6��vA�-
@n�o�\         b_r_index_null ]      ����^      ���B��.AD~�@=�@�V��R��½�-����B�6�R�A�-
@m�o�_         b_r_middle_1 `      ����a      ���BP�"A��&�Z�#�e��q���J�%�\��B�+����A�9��a��b         b_r_middle_2 c      ����d      ���B��0AZ� �V��8��8��§,7�B��B�Z�s\A$��ĥ�e         b_r_middle_3 f      ����g      ���B��SA��A��A,k�k:����E�g�B�#$����A�L!@0�h         b_r_middle_null i      ����j      ���B��SA��A��A,k�k:����E�g�B�#$�Y�A�L!@/�k         b_r_ring_1 l      ����m      ��B���A��2������;�����D-�����B����A�����w��n         b_r_ring_2 o      ����p      my�B2��A��E����~œ�����$���v��B��}�COA�>ܾN��q         b_r_ring_3 r      ����s      x��B|'�A�V��F:��X������w����B<����yA =�>M��>t         b_r_ring_null u      ����v      x��B|'�A�V��F:��X������w����B;����a�A�<�>G��>w         b_r_pinky_0 x      ����y      ���BvN�AM��;@3d"�g���6p�����B�G�a�}@Y��;Br�?z         b_r_pinky_1 {      ����|      ��BLs�Aq�f�q�'o���������Oy�Bl߳�8AgT���?}         b_r_pinky_2 ~      ����      ��Bp�B��`�e>S�����������W�B.�����:A5��<��?�         b_r_pinky_3 �      �����      �2�B���A�7���?������±���M�B����+YA��.?>��?�         b_r_pinky_null �      �����      �2�B���A�7����?������²���K�B�����8lA��.?<��?�         b_r_forearm_stub �      �����        �B   �       �˫�7  ��      �B˫�7   �       �   PackedScene    �      	         names "   �      right_hand_model    Spatial    ArmatureRight 
   transform 	   Skeleton    bones/0/name    bones/0/parent    bones/0/rest    bones/0/enabled    bones/0/bound_children    bones/1/name    bones/1/parent    bones/1/rest    bones/1/enabled    bones/1/bound_children    bones/2/name    bones/2/parent    bones/2/rest    bones/2/enabled    bones/2/bound_children    bones/3/name    bones/3/parent    bones/3/rest    bones/3/enabled    bones/3/bound_children    bones/4/name    bones/4/parent    bones/4/rest    bones/4/enabled    bones/4/bound_children    bones/5/name    bones/5/parent    bones/5/rest    bones/5/enabled    bones/5/bound_children    bones/6/name    bones/6/parent    bones/6/rest    bones/6/enabled    bones/6/bound_children    bones/7/name    bones/7/parent    bones/7/rest    bones/7/enabled    bones/7/bound_children    bones/8/name    bones/8/parent    bones/8/rest    bones/8/enabled    bones/8/bound_children    bones/9/name    bones/9/parent    bones/9/rest    bones/9/enabled    bones/9/bound_children    bones/10/name    bones/10/parent    bones/10/rest    bones/10/enabled    bones/10/bound_children    bones/11/name    bones/11/parent    bones/11/rest    bones/11/enabled    bones/11/bound_children    bones/12/name    bones/12/parent    bones/12/rest    bones/12/enabled    bones/12/bound_children    bones/13/name    bones/13/parent    bones/13/rest    bones/13/enabled    bones/13/bound_children    bones/14/name    bones/14/parent    bones/14/rest    bones/14/enabled    bones/14/bound_children    bones/15/name    bones/15/parent    bones/15/rest    bones/15/enabled    bones/15/bound_children    bones/16/name    bones/16/parent    bones/16/rest    bones/16/enabled    bones/16/bound_children    bones/17/name    bones/17/parent    bones/17/rest    bones/17/enabled    bones/17/bound_children    bones/18/name    bones/18/parent    bones/18/rest    bones/18/enabled    bones/18/bound_children    bones/19/name    bones/19/parent    bones/19/rest    bones/19/enabled    bones/19/bound_children    bones/20/name    bones/20/parent    bones/20/rest    bones/20/enabled    bones/20/bound_children    bones/21/name    bones/21/parent    bones/21/rest    bones/21/enabled    bones/21/bound_children    bones/22/name    bones/22/parent    bones/22/rest    bones/22/enabled    bones/22/bound_children    bones/23/name    bones/23/parent    bones/23/rest    bones/23/enabled    bones/23/bound_children    BoneAttachment 
   bone_name    r_thumb_finger_pad_marker    BoneAttachment 2    r_thumb_ip_fe_axis_marker    BoneAttachment 3    r_thumb_mcp_fe_axis_marker    BoneAttachment 4    r_middle_knuckle_marker    BoneAttachment 5    r_index_knuckle_marker    BoneAttachment 6    r_index_mcp_aa_axis_marker    BoneAttachment 7    r_index_mcp_fe_axis_marker    BoneAttachment 8    r_index_palm_knuckle_marker    BoneAttachment 9    r_middle_mcp_aa_axis_marker    BoneAttachment 10    r_middle_mcp_fe_axis_marker    BoneAttachment 11    r_middle_palm_knuckle_marker    BoneAttachment 12    r_palm_center_marker    BoneAttachment 13    r_ring_knuckle_marker    BoneAttachment 14    r_ring_mcp_aa_axis_marker    BoneAttachment 15    r_ring_mcp_fe_axis_marker    BoneAttachment 16    r_ring_palm_knuckle_marker    r_handMeshNode    mesh    skin    material/0    MeshInstance    	   variants    Y      
�#<            
�#<            
�#<               
   b_r_wrist    ����     �?                  �?      ��                                   b_r_thumb_0           ��#?dũ>4�1?^��>�7?E	 ���4�w�?��>�q �w䓿 [�?      b_r_thumb_1          �w?\i�@V�=���>�=U?e���6V�<�?:]?n����㲳      b_r_thumb_2          wYy?�z7>���h�A�x?d�4>I*>�p�!wy?&P�f�3���r�      b_r_thumb_3          �|?�>�k�=F�ֽ�z?̆1��$� ">�Cz?�FX�&J�4ЃD�      b_r_thumb_null            �?  0�  �4  04  �?����  ��  3  �?M@��  �4  ��      b_r_index_1    ��~?�^��BW�4��=�~?CҀ�P%=�Et=�U?��M;�o�@      b_r_index_2          ��?��˻(�k����;��?��S=�Mf<��S�á?�r��M�4�bŴ      b_r_index_3          F�|?�>.=T�-�6}?�$=40g=�4漙}?����5�I�3      b_r_index_null          ��? ���:2���0��? d2�:�  d���?QC��  �4  �3      b_r_middle_1    �D}?�ѽ�'Խ���=�~?��P<jN�=-ٿ�
�~?���5����0>      b_r_middle_2    
      ��?�݄;���(�|���?x�<X4<�η���?�]�����.3�      b_r_middle_3          ^�{?��=>�7��6=���z?΢�=��~<E���b?=Q0���2�߳      b_r_middle_null            �?  @� ��  @1  �?���0 �1������?`4��  ��  H�      b_r_ring_1    k�v?"��8�~���=QH}?Ob�=�t>x��@�v?���z&'��߿      b_r_ring_2          ��?��6�s=û��<<�g?���=�7�;2����j?4�y��%����9�      b_r_ring_3          >>?�L=��o=N�M�?�?[ݳ;�%n�Y�	�ێ?�*�'�F5�6U5      b_r_ring_null            �?  �1 ��  ��  �?  @����0  @3  �?Ә�  �4  ��      b_r_pinky_0    q�u?��< ����=��i?��>p<�>z�Ͼ"�_?!Z��%q��0�      b_r_pinky_1          �?�Wb�:�X<�kh=(X{?V�9�]EC�l�9>��{?���3kи�/f9      b_r_pinky_2          /�~?w��<���b׾�k/?E&�=��=�y���T~?W�D�k�� ca�      b_r_pinky_3          �w~?M�D=�	�=o5D�G�?�(o�.*ɽጺ�~?&��r9��i[�      b_r_pinky_null            �?  �) ��  �3  �? �3��0  �� �?�n��  �   5      b_r_forearm_stub      �?              �?              �?                 �?                  ��      �?    �O��2�s�`�ļ   ��=��'>�[|��[|�а�Pf����'��[y?ذ>�FX�  6  �3   p���p�)���{���{��3>��,=p�)>�jx?�3�$P�  6  �4     �?                  ��      �?    �t��(�?�,��     �?                  ��      �?    ����?9W@    �c��$�0Xu�PXu� w�=��$?0TT� w����M;�p�@    �~���v=�������w� ��9��v��?�w=��M;�p�@     �?                  ��      �?    *B �����:@   �N1�]���~�<�~�<�ޖ����]�?��/�`ޖ<���5����0>   �#ɽ`&Z�R�~�R�~� �p<���=`&Z<�?��p����5����0>     �?                  ��      �?    ���f(��}=     �?                  ��      �?    ��xt�/�>     �?                  ��      �?    �]��u�>��   @�(��P~�x��=x��=`�⽊�|��P~?�=�h��=���x&'��߿   �_v�\��RPw�RPw����=Vzj>\�=�}?�������x&'��߿     �?                  ��      �?    �-���2��                               node_count    $         nodes     4  ��������       ����                      ����                           ����x                           	      
                                 	      
                                                                                                    !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7       8      9   !   :      ;      <   "   =   #   >   $   ?      @      A   %   B   &   C   '   D      E      F   (   G   )   H   *   I      J      K   +   L      M   ,   N      O      P   -   Q   .   R   /   S      T      U   0   V   1   W   2   X      Y      Z   3   [   4   \   5   ]      ^      _   6   `      a   7   b      c      d   8   e   9   f   :   g      h      i   ;   j   <   k   =   l      m      n   >   o   ?   p   @   q      r      s   A   t   B   u   C   v      w      x   D   y      z   E   {      |                 }   }   ����   ~                       ����      F              }   �   ����   ~                    �   ����      G              }   �   ����   ~   	                 �   ����      H              }   �   ����   ~           	          �   ����      I              }   �   ����   ~                    �   ����      J              }   �   ����   ~                    �   ����      K              }   �   ����   ~                    �   ����      L              }   �   ����   ~                    �   ����      M              }   �   ����   ~                    �   ����      N              }   �   ����   ~                    �   ����      O              }   �   ����   ~                    �   ����      P              }   �   ����   ~                    �   ����      Q              }   �   ����   ~                    �   ����      R              }   �   ����   ~                    �   ����      S              }   �   ����   ~                    �   ����      T              }   �   ����   ~          !          �   ����      U              �   �   ����   �   V   �   W   �   X             conn_count              conns               node_paths              editable_instances              version       RSRC             [remap]

importer="scene"
type="PackedScene"
path="res://.import/right_hand_model.glb-5462a0aefd8dcabe7f35f5f18c012b18.scn"

[deps]

source_file="res://addons/godot_ovrmobile/example_scenes/right_hand_model.glb"
dest_files=[ "res://.import/right_hand_model.glb-5462a0aefd8dcabe7f35f5f18c012b18.scn" ]

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/root_scale=1.0
nodes/custom_script=""
nodes/storage=0
materials/location=1
materials/storage=0
materials/keep_on_reimport=true
meshes/compress=true
meshes/ensure_tangents=true
meshes/storage=0
meshes/light_baking=0
meshes/lightmap_texel_size=0.1
skins/use_named_skins=true
external_files/store_in_subdir=false
animation/import=true
animation/fps=15
animation/filter_script=""
animation/storage=false
animation/keep_custom_tracks=false
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
          RSRC                    PackedScene                                                                       resource_local_to_scene    resource_name    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    script 	   _bundled        
   local://1 1      
   local://2 �      
   ArrayMesh             TouchL       	         array_data    po  ��<^Լ(�< �~  |<[`��< �~ ��J<��{}�<�| x�G<.��#�<�u �N<�WӼ@m�<�| ���;��� ��<��|  ��;�WӼ�n�<��| ~��;{@��T�<��u  �a;�м�t�<��u ��;.��#�<��u ~?�;�\���<��m [H�<;+��`��<@�g �Ԭ<�z��<Y�X �V�<�W����<;�j ���<=P_���<R�_ �a�<\����2�<^�R ��<ߞ̼]��<D�i ��<�4� &�<C�j �ݥ<�ڼ��<\�Q ۍ�<>��ޏ�<U�W \�<�?Ǽ��<`�N ��l<~\��<4�m �v<^B�U�<.�u ��<����<H�a ��<n��<��< �x � �<@)��|��<C�g ��<��'�<,�s { �<����\�<(�s �;�=1��@��<��g ��H;\襼�-�<��s `+B8+��\�<��g �LU;��{�<��s �+>�����-�<��R �aS�^m��/�<��M ��<�,�����<D�h ��<�l��|W�<.�t �Q<|$��\x�<�y �i<?���\R�< �| :�P<I��~��<�{ H<�������< �} �$�;A����<��{ ���;�"�� q�<��y  �L;�r���?�<��t ��H�;���`��<��L ��:��(��<��<��h <��м�k�<.�u =��<����>��<b�L ��<^m��[.�<b�M �o�`6Ǽ���<��O ���9��̼���<��i ��$;_�����<��a �u�:�)㼼#�<��j ���\�ڼ��<��R �2�9[v켝��<��X ��t:6I����<��h ��W��%_��N�<��` ���: �]���<��m J�):>Z����<��j ��);��;�݉�<��q x^O<�T�����<�x Y�;�K����<��x @M<�u��_%�< �z }�F<}�V���<�w �@<8N)�ߵ�<�} ?y<7�U�[��< �x �<7�'��0�< �~ ���;��V����<��w f�;�:)�>��<��} �\j<<�0��W�<%�x �Bs<�9Z�}��<!�s ~ߙ;8�0��V�<��x �/�;�3Z�ܕ�<��s ��K<?N��'�<�v ��{<���~Z�<$�r �s<6��%�< �x �G�;N���<��v  	o;<���`�<��s ��	��z���<��X ��<��]��<6�m ]�<��H����<G�h �\�<�<����<6�q �\:|iD�^m�<�\ �`;;�5��V�<�h �d�;>[*�[��<�r ��;?�"���<�!x @�< � ���< !z �O�;��|A�<�] �T�;/��?��<öR ��;���9�<��C ��<mz��< �c 4E9����^��<��: ����_�ۼ�ϯ<��- z�B<?�"���<!x ��<@�5� \�<Ch ��l<?\*����</r �ܖ<6SD�g�<T\ Ѯ<w�u���<l	A \Ť<:QZ����<bM }R�<|���]u�<t3 �q�<]౼}A�<x�! ߾�<��Ǽ���<s�& ��<{�ۼ�կ<l�- ^*�<}������<`�9 ��<[[����<x�& ��<=-��^.�<S�B ��n<�����<=�R =�F<��|A�<�] ����vu�޼�<�	A �ˏ��EZ����<�N ��M�ߪ���r�<�2  i(��Ǽ���<��' �VV��߱� @�<��! �fb�[[�����<��& [l�<{ͼ��Y<i�� ���<|�ټ�|�<i�� ��<�}޼}V<X�� u�<������<W�� �믺|�ټ�|�<��� ��&�?�ż�}�<��� �g��{ͼ��Y<��� ��&�>޸��rb<��� ��<x�{ �< �� ��;�����<�� ��<� ��~[< �� ~]�;���}V[<�� =g�<��7,W<D�� <�< ���;��<D�� /�9������<��� :�}޼}V<��� tb<�|����X</�� x8j<�t�`k�<.�� ��1;��7,W<��� ��; ���;��<��� 9j?<�����<�� �8<���=V[<��  ��;�|����X<ѐ� �%�;�t�`k�<ҍ� >Ŷ<������q<|�� }U�<�v���K�<|�� �w�<>޸��rb<u�� �x�<?�ż�}�<u�� ��X�������q<��� �|U��v���K�<��� ��i��q��;��<��   Jg�{K���R�<� 
 �׸<�q��;��<~�  ��<{K���R�<~ 
 [ֶ<���;f�<}�  �Y�����e�<�� �2Z���{��c�<� �MS�\؈��L�<� �!�<;ܼ�'�<n� ��<����c�<a� ��&��kW�]�<�&  � � Zq�}��<�!% ��,���Ǽ~�<�� ��Ǻ;ܼ&�<��  *�;O����<�) ��<������< �- }d�<������<Q� ���7�.���<�I+ V��9v�@��1�<�8B �q�:�7� ��<�X4 ��;8�0��d�<�DN t*�8���;d�<�� ;�<��{��c�<} �v�<�kW�]�<w& \�<؈�]L�<{ =��<Yq����<t!%  ��;���#�<�c; �Z�;��$���<�LX w�o<>��?�<;� ������?����<�8 �Ŧ��6V�_��<�.4 �
;������<�� \r�<�.���<]I+ �΋<�7� ��<JX4 �/�<� A�4�<[9B ~N�<|�0��f�<ICN �r<���#�<3c; �n<w�$���<3LX �;@!�]��<�j? ���;������<�Q] ���<��?����<m8 �<�V����<j/3 ~�D<O����<�) ��<��
�<��< lA ��<�b����< S_ ��;^����<ŕ ��G<@!�]��<j? }�E<������<Q]  D�<��Ǽ`�<w�  n;�%ʻ^���~� ��"���ϻ�թ��S� ����eû�t���T� }�C���g���<�\ �H4�k3�9�F�<�^ ��޺����P�<|� U/��~����}� �l<��K���;�n� ��<���v� }� :�=<��l��Ѡ:�k� ���;���z�3<�t� ��;�� �~��;�q� ��$������<|�  V�� ��:��<�e3 �*$���;�!�<�f: ��:e�4:<��<|�  �;��:��<|� wPC<�K�:?�<�|�  �<��!;�=gI ��[<� ;�b=gH �<�;�;!;�T=�gH ��U;��;O*=�gE �O9���;޸�<�fA �s�<��;`�=gD =��< R�:�f�<�|�  �<�=����m<�w  ����o:���<�` `ݻ���:=��<�c+ ?(�<�F;۰�<%g? �-�<�;}�<.f: >�< ��:=�<8e3 ���<��:`��<@c, ]Ƭ<-��8E�<| �N���N�	f<�Z� z^C���$� �;�S� �����y���
��T� \��<�!����;�ST� ��<�����e�TT� �-�<���� Xn��}� |��<���� g��}� �J�<��л����TS� \Z�<�%ʻ����~� ���<��û�4��TT� ��<���?]� }� q�������T� 7O��i���!<�U� �qR��ӳ�{Z4<�W� ��t<�s��wԹ�j� @٘<���!8N�i� �P�< �P���;m� �O�<�
o��u�8k� !�<�G*���;*o� ���<��4���m;UT� � =����I�;WT� [�<�Ǥ�5FF<.u� n�=Fxh���]<YY� �o=�[��}&9<ZX� >7�<��)����<T] �. =2����<W[ �O�<��)�v�|<'x �a<�Ÿ]��<�{ >u�< �8�8�<�| ��-<4����<�y ?�< �ֻ���� ~� ��=��@ӻ�ż�S� ���<��ӻ]1ȼQS� ���:��һ{ݼ�S� @�<1ֻ�ݼ ~ ��$;~�л��꼻R� �1�;�0λ d���R� �e�<��һ@�ܼLS� ^��<��л���ER� �or<�Nλ]L��7R� ���;��˻�v���Q� �<�ʻ}� Q� >cW<~�˻۪��$Q� �<�;���:_=�{  �<��:м=| �o=�K�>1<<~  n�=�q�>�`<~ \��<&�n�Y� \a�<����sۼe� }�7<���:�x"<q4� �;'<�M�:?#<�w�  �B<�3�:�%G<e-� >
4<��;�AM<�y� ���<W���	;�Ld ���<��s����:�V\ ��<�
=��xB;�K[ �<��k���#;�US ���<���:�iR<�+� <��<�+��7�g<�7� �"�< <;�:n<�%� \)�< }�Y�<�2� ���<��;}3Z< z� {�<�C3;|)z<| ��<��8;At<RY% \�<Ϸ:���<:]> T9���:\<�<�p ��U;���:��=�w ^7�<h�\%�<w* �. =�u��\o�<{ ���<��򻟪Ƽl�� �I�<�﻿��r�� �H4�#+��ˡ<�
2 }�C� �����<�! >$:<xz]:��;n< ��I<�D�9~D�;_C2 9�)<���:o�;�t� �;<v�<:���;�r� �5�<s�T9�[�;�FF &�<��X����;�Q? ���<��:~��;�@' ���<��<��;�K" ^��<�t;�`<�"� ݙ�<�>�w�<�/� ;Z�<��;��<!� ���<��.�@�<.� ��<Y��9��a;q� [y�<�5��7!;CA� <A�<��49�5;o� ��<�t0���:&>� d�< �:<�1<&x� ��<.Z��7*A<_S \��<�ß��m/�x�� ���<��q���y;y�� ���<��B�_f�<{ ��<�D:ë<O_  �<�+ʺ��;�J� �{<����X�;�D�  ,$����:{��<�h ��<�vȹ}H�<p9 ���<��� ���u�� �N����i<� ��<L̻@?�� ~� �bd<���8 Eu;CHO �iZ<�^�9��;;�p� �h�<A~�:?	<�9 <q�< O�?U<�E  ��z<�;��z<-#� x�r<��N�׋<*0� }�D< ,��e�:�@� ���ԉ��#�<�D `ݻ�:#�<�S ���<��:�+�<\U >>�<Zde:=��<P_ ��<�黮� � � @�<�dʻ�� ��R� ��<�H��  ��� ����s���g����� z^C���a�&�;��� ]x�<>�\8���:o� >�0<��ź6�Z<_9�  �#<�3�@M/<j@� ���<��>��U��<� �9�<db�8���:�o� �;x<��=����8�=� <��<�{���(</r� �=���?�<ZU� [�<�tB;��<} �ۏ<�\F;=w�<�} \�<�P:}o�<`M �Ύ<��Z:^�<�aQ  Z<��f�>�/<�Q� V���e:���<�_ ~��<�7�:|C�<Ia" ~��<(9���<gH ~��; �������� �`�;����]����� 7O��U9�?,
<��� �qR����d7<�   ~����)⻛킼��� �p�����?����� ���<'J̸ �0; K` B�< h�:xH/<�2� ��<���j><�>� �<Z<��;v�e<N'� z\L<�ō�|�~<I3� 8&t<��>;<`�<�} ��e<��+:�Ø<�`I �-�<��:]��<Dh _(�<���:{5�<7p z�4<oʻ� �R� ��4<�R�  �� �OW< �����,� ��"�~���N����� ~�< fû�X�w�� O�<��d:���;#s� �|&<��&�7<hG 8�8<��F����;YM- �,�<��⺀��;WF� =�<�G���	<aL� {��<�O�: �<'u� �<�s��y�e<�W ��$;��r鼨� ��:����ۼ�� �s�<��:�='v ��[<���:o$=z � =�,P��`�;{�� �=�/�?�<~�� �wr<����>���F� ��N<��+;��p<�{ �UX<�:`���_;?SG ���<��o���;VX 8�5<w��9�\�<�\6 �r=��$��ļ��� �� <~�û����U� {A6<��û��� U� ��<��û\�� U� >P6<~�û�{�� UX < �û^y���UX @�< �û�!�� U^ �L6< ���{��+ w w�M<�滛?��Q a ��M<��û�?��<UH v_<�û���QU/ �Vh<��û Q��\U ~z�; �û`����U/ ���;��û}I���U  �<��!��    
<��y��� w ��M<~�û�ۼ<U� �)�; �û�ۼ�U� �A�;��û�:���UH �:�; �滞:��� a �_<��û|�ѼQU� j�;��û��Ѽ�U� �;~��]I���  s�;���?���� ? �;�û��ļ�U� �Sh< �û~�ļ\U� y_<~��\�Ѽm � �Ph<���>�ļ} � ~#�;����ۼ� � �c�;��滛�Ѽ� � {Sh<����P��}  ;_<�������n ? �<~����  � �� < ��ߣ�� � 5>6<~��~��+ � ��;��滜�ļ� � ��M<����ۼQ � ~�;�U��Vۻw� �h*;���B�u� �Y�:��������}� u��9�f����u� �i���G��׻�w�  4��Ǻ�ɍ��z� ��&��ٟ�� ��} �5�: 
���{Ժ�~ �3s;��� �} ~n�;��������z� �����9���;	v� �"'����: �<�}� 
��9��:��;x� �3L:�i:��<{� �#p�]٥9�;�u� ���i��9~��;�w� ����S�L:��<�z� �������:��;<�| �L)� 4�:x�H<�~ xҹ�-�:�5<<} �W���'������X� '�W��y2�����V� �(���Y����� ������c��o��� m-:��h��"��� u��9 �5�����U� �G;�Eg���"�� �:;��4��/�U� ��U��Q� ����`� ��A����׻�[� �u���:�~����"� �,b���K��KԻ�� ��D� ���YZ��c �X^���)���?��(& �r��ܺ dܺ�g' �� ��_������.I �mw��ʺ>�Y��j7 �E���j���~��2d ��j: "��2>V��lA ?3:�e���9�4q �K;�G��[�o�l@ �L$;�(�@��95p ���;�Kúg=q�(k6 ���;��
�,���=3b ��;�aҺ���=i$ ~�;����Ǻ^0E ���;�����d�Ke "�;�#��=K�r+"  ��;���~Q��Oa� ~��;��3��
��y%�  ��;���CܻJ]� �8�;��D� ڻq�  {�;��"��"�<Z� ���;�KT��b�Z� ��q;�h/� ��%W�  �; A`����;� ��%;����:{ r�9:����")%:�| �焺~%����68�m �<���� ���
R ��\��ؕ���,��- ��;���� ��� _�:1�� \��� �Ss� c���|����  ��;���H�=� �}`� �����ʻ��� Y�;������_�� �m&��Э� ������ ��;�\���лv�� ��;�d����bO ���; ����w8�x( �I��~ز�?���� �d�; Ӛ�����~� �̊;]��kT�Ak ��̻�5n���;�Y� �����*�����;�V�  Cջܕ���,�;�� ����풺~��;�� �W]��	���΀;��  pb�~ֹ �;�V� ��˺���~^�;�  �źuŹ|�;V� �w�Z�/9�<�_� ~��Ei����;�[� �������<�!� ����+P� 0�;�� �2��ȷ9?�*<�c ~��M5��:�0<�'$ �Ȼa�:F<�f& ��׻���9�J<�,G ����~>:�|T<�i7 �{���v�8��]<�1c ��V�k6]:y�_<�kA �&e��P99Xh<�3q ����3c:�_<
kB �Oۺp9��h<4q Rc�� T:}BU<&j8 �LF8;)79��^<:3d �^�: ::�$G<;h' �	�:�n18��K<\/H ��;��:9�+<Je �u;L���o2<p+& �J;�m�9?<Ob� ��2;�ʹR<y%� �1�:��8���;J^�  ,;m�$��8�;r � �[�:+�ո�'�;=[� �;�:��_����;\� W�p�&�����;'X� �z9�o���&�;>� �K׺����l<| �$c���@�l<�{ �z�������Pb<�l  �ֻ �@O<�	O ������6H5<�) ��Ǻ�M��;�� �U[��O����;��� ���6����;���  �����&� <��� �?�:�
:� a�;b�� ��?9��E����;@� �AԻ��B����;��� �-!;�K+� ��;w�� �����K�C�;�� ��4;�P���<~ �w;����6<v, ��:�����MP<`Q �h�8�5���c<>m ���<��;��$;�� V�<��;��C;!�� �՟<�z;~��;$�� ܰ�<~*�;�;:�� ��<���;�D�;L�� �< �;�n�;R�� ^��< E�; ��;T� ���<�]�;�� <S�% �u�<~��;�<Y�%  �< i�;��?<G�@ 7�<���;�+X<3�U �ء<��;�Jg<�b ;�<�6�;�X<<6�Y ��<~L�;^c<߳^ �ac<��;v�P<ưN �X}<q�;<�7<��R ��N< ��;��5<��7 �
E<~��;^<�� y�j<)�;<�� yG<��;�[�;��� ��T<�Ց;�f�;��� ~Ul<�L�;��p;Η� �Gt< ��;�&�;��� ���< /x;�!�;暻 Ő<U�;7.k<��e ��<�ȩ;?H<��j <��<�k�; 54;�� _U�<J�9�o_;�H� �B<��_��O�:�9� ��S<9%:&�;�O� �:2<�24����;�A� ��<��f;�aM<�V] �X}< +Z;�=<�P@ ��R<�_�;���;�I� wjK<���;� �;�� z�D<��;�;�O� <<<<��;���;��� u�D<���;��5<�8 =�[<~Y�;�T<�[ ��<!CQ9�Zo;#I� ^��<��[��e;(:� y�j<��=;�U<�C  >�j<���;��D;�E� ~�e<��;��:;�� ��{<�a�;��h<�s ���<kZD:M�;OQ� ]h�<�@)��;ZC� �Gt< �; ��;�6� _,�<���; v;�B� |�<��;�!�:�� �p�<@a <�iq<�} �d�<���;~�;~�� ���<���;��;q�� �<�J#;  �;`8� �u�<�C;Q<iF ��<�Q�:� -<V] ���<�v;���;�-� ���<��;�a�:A� ��<�ج;���:� >�<�T<�1<[W ��<@�<y�7<N]" �C�<���;�<{ ���<��;;�@<j	E ]p�<��;9m<$x ;��< B�;��[;W� ]��<��;��x<�jE ;�<��];v�A<@RH [��<��;�me<4f4 �՟< Y;~��;*.� ���< ��;��b;@F� _ק<� �;��;%B�  ��<9�;�	;2� <��< f<y Q<8a: �3�<�p<~�`<dH ���<���;�C\<Kd �hb<�;;�]<�e. ���<����;#@<bP ��<U�;~�;TK� ���<?0<��d<�eL ��C<���:�!<�[� |��<U��f�<<[@ ��<�N�;�F�;]Q� ><��<��\<�dD ��<}/f��ޔ<�^T ~�a<��<x�I<�`3 �G<m�-�-�<�Y9 8�L<�
<��-<�[ �<��ٺ� 0<�M� 6�B<�< �<�U� 7�9<~��;?�<�� �Ј<�x�;�^;	~ >�< b�;�?R;�~ �Ƣ<���;�j;�~ ��< �<O<�x� �j�<?�<:(<�v� <]�<�H<��:<�u� ���<��<��F<�t� �q�< <��I<t� ���<��<�C<
t� =&s<�.<�G5<u� |oc<�)<?s <w� ��[<?O<��<x� 6r]<O	<��;z� ��g<��<�;|� �z<?< O�;} �ɭ<� <~��;�}� \��<#<�0�;�{� �n�< �
<���;�y� ��<��;� �;u, ���<���;�dw;�u/ �=�<~��;j�;�t) �0�<�y<��%<�c� ��<L<E<�g� ��<��
<��6<�a� �r�<@�<��@<�_� ���< K<w�C<_� �#�<�C<�A><_� �tx<?�	<x{1<,b� �Vj<�$<?�<:e� ��c<��<?z<Bh� x�d<���;x�;Al� �Vn<�8�; ��;8p {�~<���;~�;(s! ="�<���;�;�r �8�<���;�l�;�o	 ^��< ��;��;�k� �&�<���;�b�; |� �<�<��;Ȍ; |� ��k<�>�;��; |� ?�{<~��;�˰; |� �<�g<9�9< |� �Uw<<��#< |� �'�<��<�< |� >�<@�
<>F5< |� �\�<��;���; |� ����o�������I ���������N �묻�0��A����@  ���>�~`}���F #��Ӽ�޼� [�^'ܼ�м� ?C��¼~eҼ� �
�<ɼ��¼�� ����Լz1V��cM  g��	༾�8��R` ����qԼv�g�n< �q��|߼{IF�_Q ޻{*˼;�w��jB ���_˼�A��p8  ��9�ޭ��� ��뻠����!����$ �~ �<�ۼ�K���� ��껟H�>x���� �-�\���?ߗ�q7  ?򻿍�������m< ���N�������, ���������* ��
�����ü��" ?4����>�����! ���۶��0���o:  w/�ޅ��쨼q6 ��)�?����ǻ�s2 �!�����<͵��r1 ���^��M��ᬧ �W�>��%���� �C��?�}���ų� �1�o)����Ȟ� ���ʨ��ϼ	z! �� �^H��]�ɼ�y �y
�=���p����  ��<�Ѽ�i����  ) �>���ɼ̔� ���p4�}�ڼ�� �g�=I�]Z缄 �	�]��� �м� �3��~��[�Ǽ�� ~����g��А� �λ_H�������/  ���P���~���: ~�ͻ�T��I~���* �v���{���Gd���8 3 ��?-������� �N»pN�����ҍ� Bܻ2��֠���8 ��л���������5 t[L:�J �s���� �5����_���܇� ���\���}���_� � � ����-���\� ����O��~����m� �g������*��j� ���<_��^��J� �ͫ�����~=	��L� @9�۴Ƽ>���6�   ��{�ȼ�$��6�  ���ݼ;���  k	�^�Ҽζ��� ��׺��޼����� �wƺ�Լ����  ���T�`���� ����i���o��� �����|�켃 @��;����'ἃ ����̼|�輂 �y��6����輂  ����#Ǽ�C�  @Q��I���D� @,�~���;&޼�	  �����2���j���B  l��   �<�R���A �A�����}J%��} �.��Q��c*��y ���:@�v�-��| ��;?���!3��x ��:;%���,�z 鞄�>�케�1�=l ���;;����#�} ��0�i���,(� 2t  <;����>Y�
�X �zl����5�R���X  �.;_9���i��L �[��^��c���L ��S��W��3��� �W�:?� �\ɋ��� ����J��|y��6 ��;?|��z���5 +3*��0�6�E���c �r7;�7�?CM��c HH�����1��s �u ��P��:� �l  �";�E��4:��r ��,;���}`C��l �Z��{����׼�|  �m�{r�����~  ���a������v� �!ͺ�֦�\a��y� ������.O��� �&��+��^?��˒ ���>���e��� �i�_���o/��Μ   �{��.Y�� ?��ۼ���� �����ݼ���� �1���Ҽ[��� �zd��#�{�z���M ��b���=nl���J ��b��
��\���H �[U������H���F ���~o��.Z���G �>�~�{MQ���D �z2�o��8`]���J ��/������P���I ��5���vSi���K ��+�/9�7�B���I ��.
���<���D �� �`����2���= ���/C��,F���D �����ʼ< ��� �|���[���� w�&����鼂  m�޽���j༂ � �������*ռ��� @�� c���^ʼ��� ?��>��6���� �K
������襼��
 ���;�Ƽ�}���� ����UѼ��|��� ��׻�ټ��^���( ��>^��QA���2 �x�����[4���7 �1G�������0���: ��
�����8���D ?����Ӽ� �� ���\����49�  �����?���3� ���ܑ�������-� ?j�[�Ǽ>���&� ����Ѽ�E��� �3�ݫܼ����� ?��܌�m��� ?Z����`���� ������������� ��~g�~�뼋�� � ����_�ż�� ����`��_����� ��ٻ�y�\�����  ���O�O����4 ������Ѓ���A ��P������u���M �g�^��81b���T ����^q��R���W �Yغ.F�z)F���[ �Ⱥ_��|b<���_ ��ɺ���;�3���b �M׺����-���e ���^����'���e ��0�������%���h �Xe��D�r)���h j�����7�7��a  �Ի��׼7�V��N ��� �μ>�v��&= � �|ü�����1. ��
��������7( �H�}��������9 �$�����~�˼�D  F�{���^�׼�D� ��]ߩ��㼕?� �#�<ntg�pd�u�� \y�<Tn�N	\�r�� ^ǋ</�|�0jt�b�� �Ɔ<�m����h�[�� ?��<��U�=a��e;� �Ŗ<x�/��c
�IP� ۋ�< ��ފ�NV� ?ؑ<�Y��z�?^� >X<� �O��#_� 6�{<������0c� >�X< s�0��j� �����T���м��� H����b��̼�� ����=!��?,缋�� ��7�~Y����!� ��;}�v������� ��;]f��㉽�ڱ  ��;�{�OO��԰� ��;��i�����͕ `:�<��n�~��g�� �s]<>{�w$��>�� ��[<_W��N}�<�� �P�<=a��z�<<n� O�<;}q���<m� `�<�?\�g<h�$ ���<�v;���K<f� O�= ���ُ;s�� �=~n�?"<d� ެ =��G����;n�  �=����3<d� �����C�@5|�� � �%�9P�P�o������ �u�WP�>�q���� 5�c��!_��5����� =��<�S�Ot�v�� �'�<o]��n�v�� ;��<�fa����g��  ;�T�]���� ~[�;0X�� ���� �����i��z���� [���q�n�o���� �q����Y�j���� �� �b���_���� �j�;�G������� �c;�E��,���� ���<��A��͇�c� ���<?�4�G���\� ��<�;�^J}�r�  �<_�0��~}�o� �<��X������ ��<��k�WG��	ǐ ��<7ʂ�>�K�\� �Z�<��s��I�m� <�`<.j����AΠ  <_g}����� _��<��U�|;��u � �3�<\g��^Xʼv� \��<@�� ���^I� �ל:�Y��z��X� �_�� ��ފ鼪K� ��@:~�� U޼�y� �{��~�ớIɼ�x� ���<|���@�s<f�8 ��<���]��<^�< ��"����?+!��� ����fM�������� vP�3���^��� {+9�~91�f�6���� ��8�}�G����;��� ��&o����:��� _���v�@g
<��  �������~;��� ��<�K���� m� @�<��.�� d� Rsb:��3���	��C� ��n;�������`� n�;� �O���]� ��; s�0���j� ?���j�:v��'� ��@�� ����.� �u���YZ�zcs���� ����z�^������ ���ٵ�?7 ��t� 澻�ɻ��b��u� ~�����׻<E���v� �F9n�E��)��� � �_;�a6����� 9>�8o<9��󄽏� ��:o��Z���/� f�C�>�%�]{��� ��<���@�ʼUR� \��<��	��<�j7� �ݣ<~�ớIɼ#x� ܠ�<~�� U޼y� <a�<�A��z�:�(t� �a�<~6���gڻ%t� _��<�M� Tٻn,� �G�<��׻<E��%v� ~�</�^���C�w� �Us���ռ���;��� �����ݼ�@M<�� Uܻ�`��?&<��� �Cλ����?>[<��) �� =�o1��c <�u� ��=�=���:<�W� PZ= �(���;�p� �=� v��5�;�� >���� v��5�;R� ��O��=���:<WW� yV� �(���;p� y�K���1��} <.u� /�=��4<�)�<�g ���<�����f�<�O� {�����4<�)�<Eg ��G������f�<]O� ��B:��&���~���D �޹��#�����7 ��:>~8�;-����= �,J����^���+6 �$���f��^ۼ�5/ �7P��#(��Ѽ�� �������＃� ��:]�@��� ~��;-l� ���ۣM �ͨ:3 � @ֻ��A ~	�;~t��C�ַ^ ���:~N���0��� �)q�?����c ��� �}��^x����)� �j�=-���L	��� �����S��W)��,� �O��܄ؼ0n��0 ��l�~���#��� �-����＾��. ���� ������ <������@����  ���}���뻤�0  ��:�A��HG���.  ͕;��,�8'[�ҲX ��M:_t!���i��6 �Ⱥ=W"���#= �}׺/1��ﹼ��+ d��n��^����1) ����,�`����  �ք�^,� >���
 �e��� ��U���   [����>��5��� �Æ�O�2���(���� �t�<�}��G�<@�M �U�<>�:��.�<��7 ]ǲ<�O�|*�<��< �<���<��<'�c �;i<���`��< �@ |��<y�%��N�<��9 �I��\�ּ�3@��-� ��`�|��?�0��� ~8��|5�������� �|���cμw]���� �Jۻ}Ɗ��Bb���� �[���ѹ�<�0��� ��v�~ּ ���� ��d�]��y�&���� �Y��=������ �;���}��G�<��M  .8��O�|*�<�< �C��>�:��.�<�7 ���;���`��< �@ ���;�g_��Q	=��o �G����<��<ٽc ^�w��W1���=��j ��:y�%��N�<�9 �=h</�z��}�8�8 ��<��~�ϊ��A 7`c<����W0�9�' ?�<�m���t.��. ��<x�I���&� c� 8VV<��N�`}%�#_� �δ;7�5��՛�  P<����m��
�� ��k�n�O�n2���   r�?�C�?=���� �ݫ:��	��'w��<� ����`p��l��"� ���:`���$L��F� �i�:�1��^�3��H�  �;o���?g���� �e�:�q����L��� �轹Jx��^���� �kԹ�z���J��� �i��wf���:��� ��?�I^�.�D���� ���}[n�nqI���� �*��i�.�T���� �4�;������:݇� ��;���R�;�� �a�:�����:��� b��9�����;��� ��<�i���xL�LJ� ��<]o��.�4�HN� ���<�%ټ��?�h1� =O�<܃��/}(�e5� އ�<���'2��W/� }ߥ<��%�^�w�n� ͺ<��*�����g�' ^�<��9� ��R�; �ϵ<O�<����j�" ���<>�L�;8ռW�4 \��<����<7��~�� ]��<{Q���n�~�� #ݻ�������}�  b������.�{� �#�J���t��u� }9Z<��ٻ���|� 6�V<�ۻ��� ~ {Av<�ܻ;���{� 9
q<�ݻ?����~
 }[�< ໻s��#x� ��J=/�'=����p � n�R=@(=����u� �IE=��=?A��i� ]�L=NX	=���m�� ��,=_�S:z<Z�� ��4=�	C;?5`<_� �!= &	�z�6<Y� ��&=w���<Z� ��_=���<���:~�
 �]=���<-�;}�  ^=�R�<�B#�{�� ^*[=]�< #:x�� �CR=�)=~�D�t/� �W=/�=�x%� o�W=�8=<b�x� ��=��]=����FI� ��=N`l=��ҼCa� ��=χT=���QB� �v=�Zc=�wüNZ� Pw(=��>;=�<Z�7 �^&=��;^�<W�L ?m=�9~9��<Q�? ^(=�&�;���<M�R �e��.�?.X��+� �O�P�_�H��� ~
��8=<b��� �[���<ݏ���� P2��N =�#2��� N��߼�<��q���� ��n��iq=���X� ���;�]t=�	��Z� gg���^=h��:�  ��;M�a=@���<� /�����<-�;�� oW�]�< #:��� ��;8�<���;�� �P	���v< lR;��� �9���7=xs��9�  ���/�'=����� � �p��)=~�D��/� ��@(=������ 6�1���e=O~��P� .{���]=�����I� �R.��qt=��߼�g� ��v�N`l=��Ҽ�a� ���0����Z<��
 <�a�������<�� [>�� .���<��& ��n�����@l�<��3 w�o<�Q���d<-� y�e<�=� ��; �� ���<�U ��V<R� {�<�O��~��;@�� �ϼ l <[(�<��F �����;^�<��L }$ż|�\<�s�<�-m �٧��})<[C�<�)p ��}���p=��W��eH 0��/^m= Q���j� ;U���h=��:��dI +����c=̅��c� ����O�`=�� ��cI ?j���,�<`�<�=b �h�ޏ�<8�n<��2 @��v�<;Υ<�7f �C��_��<�`�<��9 8�j<��=[�Ƽ|� ��d<XK�=�x��jE �n�<ױ�=�S¼{� ;�<��=*��jE _�V=��= !�s1 ^�Q=r,=���p:
 �?M=�!*=���:-UQ �G=�6= X��,XO ��i<��;��=�u� ��<�}�:�n= x� 9Qb<�r!;�b	=�~ ��<�+;�	= ~ �C:=;�<�^�</3j ��C=�v�<;Υ<27f �|2=�ڈ<�Я<�[ ΰ;=�{�<��<�U% �9=?zM=����&^K _�0=пV=���!`K ��0=�H=����Z ?�(=_�P=�����_ �'=��;�u=%u O�=��;_��<#&s ޟ�<���;]��<�s ��=��<_��<�n ���&=���:bK _����!*=���:�UQ #�?=��Y;c#F ����= �z;�QS �#����;��=�#w ��� �;�A�<)w  �RQ���;�u=�%u ��C����;]��<4s `DV=<W�<��H�q�� nV=<�<��o�� ��I=���<xV}��� ��H=>I�<��O��� I�<��^=h�:� �w�<��Y=.7�)6� �h�<�@N=��"�͍ �a�<n�I=o��ˎ ^@�ܠ�<�ٻ��� ���|�z<u�'�魤 ����7r< u���� \��SH<�G��쫤 >݋��s2=�}��ƒ ߖ�^�B=ޤ��&� �h\�~[;=����Ȑ wNo��sK=����,� ~dG=?=��Y;�#F ��C=�&=���:�K 8@=a�<�օ���� �==�w�<�4����� o*A=��<}Zh���� >�I=�=���;�,@ 9��P�=~��X�� ����_�P=���S�_ �\����=^�Ѽ_�� _�ż�H=���XZ 3���)Z=?��L�d �4���&=���P�� �����=���;c,@ �����<}Zh�s�� _��a�<�օ�q�� ����<��<�s�� �
��o�=?�	<b4; ^F��71f<�?�<La |����ì:�`;\� �4<=��=|ϼ�� _�B=���<|��� ?24=��=|������ �:=���<������ �;�Q=�%��̍  .�;ߛM=�� ��¸�@N=��"��͍ K�9��J=���� ���]��<�쐼紟 ;q�����<xV}�갠 ?݅��L���^�;��� �w���_s� 1�;ࡳ ����ڼ��p<��| ���@N��w}<�z ~���?�����)+ ��B������36  E�o6
�|����;- �\,;����nK��� ��$;�����^���  ��\<�����<�� ��<������< � ��<���;{�< �@ �h�<�]l���7�m� `�<�i~�o3�[� |��<^a'���X�z	� ���<�F��'D�y� ���<��;�@}F�}�� �_�<��)�p0�}�� ��<����X�;�� @�<������:��� ;�b<������:�� ��X�n�H������ ��C�?AY�Ў'��� ��:;=k����H�  9�;?iO��g%��]� �m�;_I��/I;��]� ��<�Z��o�<� b� @�<���	��S� �5�;��Ò��N� ��<^�ڼ>n�\� ���;}iݼAl��W� ��<~�/�9�O���_ ��<~������d �!�<z�f����FQ� 9'U<>2��oR;�%]� �G�<��ټ#�x� <��<�Y�����w� ���<on��p�~�� �~�<���^_Լ~�� �K���׼�E��� ��:�:��� ��� ߨ<�iF��ay�u�� �D�</2S��Ά�f� ��o<A��f��-�N ��m<�L-�>�X�&�Y ��<��C��퐼 �V ��<������ӻ�|� ���<�����.��{� �,�<J���t�#u� ��<��ٻ�� � ~ ��<�׻�� }�  $�;��ٻ����|� ��;�ܻ;����{� <��<:߻]��z� ێ�<�?��N�x�
 ���<>�-����w� ׯ<��N��~�l� ?\=�N =�#2�{� �&^=]+�<���|�� O�T=߼�<��q�p�� m%Z=���<��<y	% ��[=>��<L�;y  �K=>�7=�_�kD  �=��u=|=��:o� /�=/^m= Q��Dj� ��<�.��>��<4�X ��Z<x#���uk�8�� ��<�0��^�n��� �����3��cm���  M;�Ϛ$���\��� T�]+�<������ nq�<W�<��H���� �����< Z����� /��<�<����� ~�ǻ�pl=�2
��T� H����Y=.7��6� �	�{w�<��=<��+ nR����<��<�	% 6��>�7=�_ﻕD �뼏�D=@�#��L �?�}=�Ȱ��t� �4c���u=|=���o� ��d��;�Y�<��X ު���&�;���<��R y#o����<��<��G �4���9~9��<��? ��wP��<��B �{��9s�['�<�H �;���:��=�"z ��<�q:_�= "z ��<�,l�
= �p :üo�Z=}+m��\� 0����<{�p<�@_ �7�<���;��=#w �<�c�8~i�<8�^ �=�;�Y�<B�X �Z=^=�U�9v' ��P=��= �z;1QS ���<g޹��<�W� -e0=|�\<�s�<--m �(=71f<�?�<�a P�%=O�`=�� �cI l=�)Z=?����d }6�<��:Nx=!y ���<�jA;��=�} �Gh<���:��="z @���6= X���XO ���2=�S��_P Ť;XK�=�x���jE @QY9��=*���jE ��;'��=<^���x ��1:��~=�B���w PU=ܠ�<�ٻm�� �JG=|�z<u�'��� \=�<`�C=���̎ ���<��S=>��62� �G��x1E<������� `���h<V��쪦 �.�`�C=����̎ 9(���S=>���2� �8=�<=��]��U Ͽ>=2=�S���P P�-=��=^�Ѽ��� �}ؼ���<���i�� <�ռ�<=��]�]U ��̼��=|���e�� ]$��w�<�4��m�� �F=ݕ�<_	���� ��<�MR=�$&� Ћ ��<�N=� � ��ݕ�<_	��ⷝ �O��qU���S;槪 >i<�g_��Q	=�o ������]��<��: /���쏼�<�` ����U ��V<�� ѭW:܍����u<��{ ��&�����Fټ�7. ��׺/ �]F���14 ��<��-�ތ�<ۋ >��<y�?���<ϓ( ���<\ �>R-�y� �ѭ<�4�͎U�j,� �;�6�O{���"� @�<��l����K �;��{�_��Л; ��;��i�?}��ϢE ~k�������� �<o�6���!� �<���X֊�?� �Ⱦ;����f���=� �&�;/�@��!��ϫO ��<;=��c�QD� ��o<�DU� 0Ǽ3�G �d�<����$�;�M _P�<����û/�I �~j<�������] u�e<]d��Ŷ��Q ���<�f»�'7��}� ;��<~Kٻ?i���~� ��;�ۻ��� ~ ��x��2��ɼ�<� ��� ໻s���x� �)�:ߴ꼟c��E�  �;�l���ZT��Z� ���<@�ռ ��W�! ߴ�<�٫��ϻu� \��<]���L^:d� ;��<�����-�v� ��^=���< Z��|�� ��<�iq=��X� |��<�pl=�2
�,T� ��Y=;8�<���;z� ��V={w�<��=<w�+ ��I=�7=xs�o9� �[C=��D=@�#�eL @��<�qt=��߼7g� ���<}=�Ȱ�0t� Л	=���<��<H�G ��U<?:� ���0M� |�T<��ݼ��k�,V� �%�<ͮ	��w�U<� ;��R�<�B#���� ~���χT=��꼯B� n��<w<x,<�� �8���=������ �/�^=�U�9�' N��.�=~cٻ�� p 	���= !��1 �%м��N=��J� �\��~�X=�����R� �&���~����<��O ����c�8~i�<��^ ��<?�=��� r� �I�;p�=@Q���q� ��<���=}�ȼ }� �B�;��=[�Ƽ�|� ��<��	j< �  <�;�Q���d<ԍ ��<'�=�x�� kC �|D�>x=6p��fH � .=?<�IY �'�>��<L�;� ^��ޗ�<��F<�E\ ���<�5ĺ~�=+�e `��<��<;��=$x �A=^jA=��W�([N �"�<�;�;.=�{  _��< �;�A�<�w  �x�<�;�:S�<�d� `�<�:^��<�_� <�/�g޹��<LW� v�{���<_��<=n �N�NO=���;�NV &�/�~=~Q���hF ~�?v==oz�.�r h���=�'���hF ��X���z=����$�t ο!=�})<[C�<))p ��Q=�7r< u�j�� �vM=x1E<����g�� �XC=�SH<�G���� %?=�h<V���� ��	=�sK=���B,� /�=~[;=���Ȑ ���`�;��p;��� ��?J<���:��� �7˼��;�}��멧 �~׼���;�
Z�쩦 �򦼾�'=���� ����7=������ �o$=P�=~�伨�� O�=�&=������ ��=�ì:�`;�� #=��t;��:�� /�H=]��<�쐼�� 5Yg<�Q=�%�̍ {�c<ߛM=�� ��<��J=���� ?�ܼ��=|ϼ庚 �h鼼��<|�川 ��=�L���^�;a�� �=�_s� 1�; �� �V�<��ȼ��P<j�# <~�<��ȼ:vs<�| ~V�<��㼼�N<a� �ԭ<�ڼ��p<�| g�P:͢�?l���%3 5�`��I������.: �<�_ۼ�
��= �3��	� q
��? �4,�?�����]<6�q �坻�3��]Q�<�r  �U�}Ǖ�>m<?�e ���<9s�['�<�H ��<��_����<Ƣ< ��T<�L���T�)Z� ��<``��^�U� `� >��<���N�h�l%� �\�<ߛ����:8� �]Z��6������� �zE�bR�_�O���� �\�~Uͼ��;���  ͯ�;(���&*��� �N�;]��.$L�ˎ  O�;8�~�l�ώ� ��<�o����K�� �⺿�B���⼒�( �-�<>ڊ�nD�d9� ?�`<Ƈ�� L�:�
 e�<B'�y�p�I�F �<^��������Q �7�<�Q��0�x� �é<�v_��#�m� �.Q=��<ݏ�o�� xk<M�a=@��<� ~{n<�]t=�	�Z� �#W=��v< lR;t�� ���<��e=O~�9P� Z�<`L�ЀZ�{�� ����@<�z�;�� ߾ҼΜ?=~�Ƽ�2� ������I=�ؼ�:� zu)�z����<��@ �����.��>��<̷X ��<�Qu=^�� [� l�79��:Nx=�!y B=^�B=ޤ�M&� ��=�s2=�}�ƒ ^�ɼ�-=~㼢� {k���`=������� ��<�8�==?�� �y ��`<'��=<^����x �z"=qU���S;�� ۡ;�C���<��| �}�<[у���<¹S ��<�~��8�n<��d ~��<�쏼�<�a ���<�����;�<��q ^�<Oaq�O��\�( �?;���;|���� z[_<�X��1��?� �c=:�$a��~���5 ��:s�.���-  �;ǭ���/�ϓ) ���:� ��^�2��� ��;��U��sƼΧJ ���9+M��Լ��: ��<��ټ�Y;T� ܣ�<�߼���;[�� ��<0�X�^���Q �#�<���a���~  `�S=<w<x,<v� ��P=�@<�z�;p� =v\=.�=~cٻ{� �_=��=����}� ^27=Μ?=~�Ƽd2� ��+=��I=�ؼ[:� ��5=��N=�aJ� ^�*=~�X=����XR� y&n<p�=@Q��q� ~�<��ȼ��5�v� �A�<[��$�W�2 �����8D<}�W<��# ~���<��<�� 0�	�/�=��%� �G���Zc=�wü�Z� ��c� �==���o� ��<O�b=��� >� 5)�~�(�U�<��-  S�|�`���j<��" �Y��t�=|����x� 
�`�=�"U;� \��<�W1���=�j ��:= GO=��F�^T�  p/=o�Z=}+m�W\� ��<���:|u�<�m� �K����:|u�<m� ��>:�jA;��=} �|�;��;��=u� ���;�r!;�b	=~ �e�����<7�7<a<5 �wf��i=�|N�>�l 8k0��o=�+e�7�o BG=?J<���:c�� n�9=���;�
Z��� p�'=�7=����V� �2=�-=~�^� nL!=��'=��� ��+=�`=������  h߼��!=�jμ�� ��μ.\=?��潘 ���=?A���� �.�< �b��eW;�y� ���<�"[���-; v� �z+=�
�;�k��	� >Z@=��<��<���� ��<�gF=��ۇ  �����:�׋:먨 _r����t;��:c� �<܍����u<�{ ��:}�<�z��+ ���>+¼�!���1 5�f<�C���<�| �F^<]���{`<�1t ��<߼�TW<�&w ��U�[у���<>�T ��2���_����<:�< ���<�&`�8�Z�/ �m�~�ڻ�.3;�� �4V�����;��� ��<�&���2m;d� }�<��¼ X
<k�  �7�<���&׼w� ��<��^��w� _ӟ<�@���Ƽ�~ ~��;�ݻ?���~
 ��=~���u׺r � �;Q=ޏ�<8�n<s�2 �h$=��c=̅�Nc� ���<��~����<?�O o	�r,=����:
 ^5�ױ�=�S¼�{� ~)�<~�(�U�<X�. �+�<wP��<L�E �@=xEM<�2�<h�@ ��I=_��<�`�<n�9 <�<��~=�B����w ��񼟢�<w�^<^E0 �0����;_��<�&s nD@=`�;��p;_�� �n3=��;�}���� ކ=~N����a<Y� �f=�3a=��3���h �p=�i=�|N���l -=_�0=�����  � =^�8=��	�đ ��A=�ٺ<[Y�<�M* of1=�<�8���  i���gF=��%� [Sɼ�ڈ<�Я<Q[ �>=�ن<����� �V�<}�@=��ϋ �O���
�;�k�g	� �����漺j=���� �zS��$Ӽ?3m���� ��<^c	�< �| ��<�$��}pc< 0u �0;@����<� ��;�����<� �ګ;������܌# ��<϶��h���% �Y��N0��OP��� �En�^�:�JF���� �=s�.��^�<��� ������)� D2�� � �{׺N�U������$ ��<P}G�WH��� uxc<��� ���( �
�<~�����2�, }f�<� �6J�]�1 |��< �}q��c�, ۑ<~��߃ۼ�~ �|;:߻]���z� �3+;���܏�~	 �IL=�8D<}�W<p�# �YI=�<��<k� ���< �==��o� `��<6|����}�� <u�<�T�����|�� [����<Ղ<��) \��~Q�;|h:<�� ���}��<�c��� �|�/'3=\����)� �<�ТB=�=���B� !û��z=;���l�  (���5ĺ~�=��e ��5= l <[(�<a�F ��=�h=��:�dI �G=��p=��W�eH �J=�,�<`�<3=b �!S=NO=���;2NV ���<�=�'��hF ��<��z=������t _)輛ٺ<[Y�<[M* �'���3a=��3�F�h ��6=��];�v�;\�� ��*=��:�׋:�� ��==��!=�jμd� n#5=.\=?���� ~a�� &	�z�6<�� ^G��_�S:z<��� �r��NX	=������ M�F=���<w�^<�E0 �6=��7<������� -�:=�^<�޻��� �a	�}�@=��1� ��ۼ�{�<��<VU% �&Ǽ�<�8�j� �-�:߼�TW<&w ��m�ܾż��R<(w ��:�|�����.���� x�;]���{`<1t  99��-�ތ�<%� ��l<��h�?���6�B ]�'���t�~�5��� ����/!g��R��� ��.�^�?�Ͼa����  uA�?J� VX���� |/W<Ͻ�w9��3:� �������a��~  ��r�~Kٻ?i��~� �8?=~Q�;|h:<e� ?�B=/'3=\���k)� /$B=��<Ղ<j�) �]`=}��<�c��~ ��[=`�=�"U;x /qA=ТB=�=��hB� =n�<��z=;��*l� ;|�<t�=|���%x� ��7=���;��<c�0 _yӼ���;��<��0 �c�xEM<�2�<��@ �"����<���:��
 \�ټ GO=��F��T� ��>��,;�=�K<�� �����<;��=�$x ���^jA=��W��[N <��<>x=6p�fH OkR=ޗ�<��F<4E\ ��S= .=?<4IY K���;�:S�<)d� ��{��;�;.={  �O=���<{�p<5@_ �I=���<7�7<�<5 <9�</�~=~Q��hF ��<?v==oz���r ��<�o=�+e���o ]�ؼ;�<�^�<�3j �hżпV=����`K ^�	= �ػ��M;u� >XJ=o�=?�	<�4; [���_�0=���G�  }�ټ�^<�޻p�� `~἞ن<��r�� ?�Ѽ��7<����m�� �'I�^�8=��	�<� ��-������伐��  pO�}����м��� �@K:n��|�/��� �'��y�?���<1�( ^��<p����~�� �`[<oM6�x��8� �X��� ˻x`_�}� �< ��>���v� �H����>;=�<��7 }�<� �_���;�v� ���>I�<��O�쮢 ��n�I=o���ˎ �N�^3��@����� �~ ;�M	� :��� ���<@����<� ���@���Ƽ~ �8���h�$'��� � �����n?��� 70^<��F�돽=� ���:~��߃ۼ~ �)μ�	C;?5`<�� ^uѼ��];�v�;��� �ּ?zM=�����^K  ���:^��<9_� ��2���g��c=;#y� .�<ܾż��R<�x �<�}���T<��u �Dr�����?����� ���<�;8�`�j�y� ??�<���܏��~	 ���w���<�� �U���{�n<��4 >�=�m9��D�<S�' <H�<?�����]<��n �=?����<W� ���^���6<�� ��w����}<��� }�T���!�y6<�� �`�<z����<H�@ .�	=����@l�<O�1 ���<@N��w}<��x {Z�<=��� �Z<j�+ |��<�Ƨ��5<o� ~��<|���~ƫ;l� ��<>u���&;s� m�=�62���Y�x�� ~
��������       vertex_count    �        array_index_data    *N                   	 
  
                                     	                   !    "  " #  $ & % & ' % ( * ) *  ) !  +  , + 	           ) % ( % ' (     -  & $ # $  # "  .  / .     /  * ,  ,   + , 0 , 1 0  1 * 1 , *   (  * (    '  ( ' &  '    '  & - & # - "  #  - #  "  " .   -  -   
 2  2 3   3  3 1  1 3 4 3 5 4 1 4 0 5 3 2    6 8 7 8 9 7 8 6 :  $  $ ;    )  < ) ) < % < = % = ; % ; $ % > @ ? @ A ? B C @ C A @ ? D > D E > C B F B G F F G : G 8 : H I ; I  ; J H = H ; = < K = K J = K < L <  L L  9   9   M   M 9 M 7 9  N  N O  I      N E P E D P  I N I E N > E H E I H @ > J > H J K B J B @ J B K G K L G G L 8 L 9 8 O N P Q R 6 R : 6 R S : S F : T U C U A C V W 	 W 
 	 X 2 W 2 
 W Y V  V 	  Z 5 X 5 2 X [ 4 Z 4 5 Z \ ? U ? A U ] P ^ P D ^ _ O ] O P ] `  a   a b  `   ` c d . d  . d e  e   e f  f   c . g . / g h i  i   j  i   i Y  j   j f h  h   g / b /  b k l M l 7 M m k   k M   n 0 [ 0 4 [ o + n + 0 n o p + p ! + p m ! m   ! q s r s t r u w v w x v y { z { | z s } t } ~ t  � u � w u } � ~ � � ~ �  �  � � � � � � � � � � � � � � � � � � � � � � | � z | � � � � � � � q � q r � y � { � � { v x � x � � � � � � � � � � � � � � � � � � � � r t � t � � � � � � � � v � u � � u z � y � � y t ~ � ~ � � � � � � � � u �  � �  � � � � � � � � � � � � � � � � � � ~ � � � � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � z � � z � � � � � � � � r � � r � y � y � � � � v � � v a  _  O _ l Q 7 Q 6 7 S T F T C F ^ D \ D ? \ � b � b ` � � g � g b � � c � c g � � � c � d c � � d � e d � � e � f e � � f � h f � � h � i h � j � j i � � Y � Y j � � � Y � V Y � � V � W V � X � X W � � Z � Z X � � [ � [ Z � � n � n [ � � o � o n � � � o � p o � � p � m p � � m � k m � � k � l k Q l � l � � � � Q � R Q � � R � S R � � S � T S � � T � U T � \ � \ U � � ^ � ^ \ � � ] � ] ^ � � _ � _ ] � � a � a _ � � ` � ` a � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � 		

� � � � � �   ! � � � � "� #"$� %� � %&� &'� ()� )� � *,+,-+.0/01/243453687897:;; � � � � � � � � #� #%� � � &� <� <=� � � � � � � *,*../223>� ?� � ?@A,A-,� � B� "B� $?$C?� '� 'D� � � E� )E� � � � F� +-G-HG0I1IJ14K5KL5� � � � � � H-M-AM� � N� ON� P� PQ� 
SRSTR� � U� VU8W8XYXW[Z[\Z� ]� ]^� _a`ab`c@@,� � � � � � � � � � � d� Bd?CeCfe	ghg� � i� ji� � k� lkGHmH[mInJnoJKpLpqL8W9WZ9`brbsr� � � � � j� Ej� t� tu� vwwx� � y� ky� z� z<� .606{042`2_`*+|+}|M\H\[H~{�{c�cS
	� � O� dOP� f� efS	T	gT� � V� iV� � l� Ulm[[Wnn:pqXq� � � �:;:� � � � � � � � � � F� ���� �� ��� � �^��^��� D� Dz� I�n�:nKrpr�pGm�m��{6~67~?e>>e� e� � F� � � � � � � (� N(� Q� Qt� 
RvRwv.6862_2*Y*|Yv
h�h� �� �� ^�� �� xx�p��m��noors�s��� � � � � � � �  � ��� u� u�� � =� =��  � �� y�� � � � � � I0�0{�K4r4`r+G}G�}^]� ]� � !_!a_�����F� � � � � ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� ���  ���		
	

�����
��������� !!"!"���"##	$#$ % &%'(')*)���($	$*%%
������'++�),,��-�+-,,.������& - �-.//0/0 1 ���������100� � A� MAA@� @� � @c� c� � � � �� c���� �� � � �� �s� � s� sb� � b� ba� � a>a!>>!� ! � �  �  ;� � ;];]~]~� ]� � 7� ~7� � 9� 79� � Z� 9Z� � \� Z\� � M� \M2435768:9:;9<>=?A@AB@CBDBADCDEFHGHIGJK?KA?<;>;:>J=K=>K6787:8345475LI2I42LGIFEHEDHMONOPNQRKRAKSUTUVTBW@WX@YMZMNZARDR[D\S]ST]@X?X^?_Y`YZ`D[H[aHb\c\]c?^J^dJ8e6ef6g_h_ihHaIajIkblbclmonopnJd=dq=6f5fr5Qtstusvg4g74wxrxyrz|{|q{<|;|p;3y2yl2thuhiuIj4jv4xkykly|zpznp=q<q|<5r3ry3RQ}Qs}_`i`~ifrwrd�q�{q;p9po92lLlcL[R�R}�ui�i~�f�fe��d�d^�9o8oe8LcGc]Ga[O[�Osu�u��omem�eX�^��^G]F]TFjaMaOM}s�s��7g:gh:��W�XWFTETVEvjYjMY�}�}��:h>ht>����W�EVCV�Cgv_vY_O�P��P>tKtQKU�V��VC�B�WBbk�k��x�k��kmn�n��z�n��nz{�{����{��{�������������������������U�U��S�U��US\�\��b�\��\xw�w���w��w�����m�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������/��//�|}//}�XY//Y|X/q/LqL/5/353///o/JoJ/1������������������������������������������������������������������������������������������������������������������������������������������������������������� ���������������
	
		������
  !���!�!�������� "$#$%#��&�'&())*,+,-+*.,.',(/-/0-()/)1/02-2+-'.&�"�"#�����3�%��%34�4 � 5�56�6�������������#%�#�����������������������������������������������'('-,(,'(677��78�8�89��9�9:��:�:;��;�;<��<�<=��=�=>��?�>?)@?@1)@0/A/1A3%B%$B�C�CD���E�DE��F�EF��G�FG��H�GH �I�HI! J IJ!J�JK��K�KL��L�LM��M�MN��N�NO���P�OP�Q�PQRQRSRSTSTUTUVUVVVWWWXXXYY
YZ

ZZ[[�[\��\�\]��]�]^���_�^_�_�_`��`�`a��a�ab��bbcccdd�dC��K�KJ��L�LK��M�ML���M�NM��N�ON��O�PO��P�QP�&Q&RQ&.R.SR.*S*TS*+T+UT+2U2VU0W2WV2AX0XW01YAYXA@Z1ZY1?[@[Z@>\?\[?=]>]\><^=^]=;_<_^<;:_:`_:9`9a`98a8ba87b7cb76c6dc65d5Cd5 C DC 4D4ED43E3FE3BFBGF$HBHGBH$I$"I�J"JI"egfghfikjkljjnmnomprqrsqtvuvwuxygyzg{}|}~|���������������x��u�uw��������������������w�w��h�f��f����y�����i���������{�}{������������o�m��m����������������������������������������i������k�lk������������f�e������������������������������������������������������������������������������������������������������������� ���r�sr��
	
�m�v�����������  !"$#$%#&('()'*,+,-+��.�/.021231�4�45�67�78�9;:;<:�=�=��>@?@A?BDCDECFHGHIGJ?K?LKMONOPNQSRSTR� U VUWYXYZX[]\]^\_a`ab`cedefdgihijhkmlmnloqpqrpsutuvtwyxxyzy{z|~}~}�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������p�p�����������s�����������������������+�+������������������������������:�9��9� � �;l;nl2�G	F	
FK�J�JNPP����zz��u��u�[][a__eccijj! !" 	#	$#%&&'(z{)||}*�+�,+-.�.���/���/��/01�1����2�324656�5�7�78�9;:;<:��=�>=�?�?@��A�AB��C�CD��E�EF�E���G�8IHIJHHK8K�8K�������L��LM�N��NO�K��K��P��P��Q�'Q#$R$SR��T�UT�V�VW�����V���X�YX���Z,�,[���\��\^]^_]`�`ab\bc\d�����e[*[,*�1f13fgihijh�k�kl�m � ���o�o9���n�on�qpqpl�rtstus�v��v��w�xwyzGz	GJ{|{}N~N~ST,T���������e��`�`��h�����}a}�a��������(�z(!�������������'�����9��wwx�������+�*+�����������������E�E��45�5��������������������������@?�?����������������G��G��3��31�����I�J��J��������������J�HJ��������������������������������Y��Y������[�����r�p��p������#%�%�������������b�c��c������-������h��h�i�ig�i�j��j��k��k ��������p���L������w�GIyI�y?J>J{>�M}MN}��������������gDDa�b��b��Y�Y�����������\�\��T)�)��%�%����))��,�T,�|��|����/��F�FE���*��*������:<�<����0�10=>�>���������B�BA��������F�F��N�������1��1L�����MN�N���OHOKH������TU�U���W�W����������������������������� �������_�_^�������`��``��d��� ��rrij�j���i�i�����f=��l������q��v�H�=H�x@x�@y��	

�����srs`b�bA��DhDgh����W�YW�����\�[�[^\�\�'T')T##R�������4�4����2���5  !.�����*�������"��"w�#�$#vu�u����%�&%')()*(+-,-�,.�/��/����0���;�<;N���;�����1�����2�,���J�P�3�43q5�5������6��7�7��8959:5;S<S$<�=�=���� ���_���^��^pUU�>�>?��dd�@A@����4�=332�i�i��BC�C���=D=D mmE����������F�H=I=�IM�O��OzyGyG--�HI,I+,����200B��b�Ab������}����J�xzz����K�A��A}�L�MLK::��������T�RT|���N�O��O �!��!����F�����P�)�Q�"Q����$�Rv�v��S%T%&T��'�)',�+��+UD�D��VXWXYWXV�V3��0Z0[Z�\<\�<�]�]4��1>1^>�2?2_?�,�,��34�4`���qo5o85����6�aabcd8d98eff]�]_���^�q�q���g�gh�ikjklj�m m� na�a\�j�o�hohpprqrgr�g�D�Ds�EtEut�����e�e*�I������@M@�MvwwKLL
OPO�wwx�����n�n���y�yz������������{||�}}d~c~c[�������zyuysu�9K9:K7�J��J�R0R�0H�H2���O�G��G�����.��.��P��P|)�)Q�{y�y��%!&!�&�S�ST���@��@����P��X�XO�Z�����[�Z\�����]�4�`4>^�^��?_�_Y��������`�`��������������U������aa�d�dc�e
e�
3=f=�f���phohjo����� � ���"�"��no�o���g�g�������������,Z-Z�-b�����o�����jm�m�./�/����y�5y�w�wS���>�@>v�O�NO���-{|�|�x�����CE�EQ�fW�WX�{���s��}�}����(��iil��������J7�7���������	�
��
���������������u���]��{�{���%!%�/F/�F@�A��AB������OZOXZ��]�^]2�_��_�1�1��1�^��^������Q"�"����Q��QT&0&[0)�*��*C�������������M��M�r�rp������<$�$	�f]f�]�����p�po�t�v�v������������(&�&g��i�ij�����q�������Z�����t�����rpp�a�b��br0�01�������t��������4���C�\c�c��C�B��B	(�(����C��C�vFvHF��	�	x���}��Q�QR�����f�df-f�-�_�_`�efWfhj�j��t"t "q�r�r������(�({���s�us�~�~��
�����N���0��Z�Z��23�3V���&�6&7�8�I8������>���8������M�M��������]�P2P�2�#�#��"������T�T0�*���G��C\C�\����������c�r�����������������=��������d�d��!$�$"���o��o����k�l��l��m��mn�a��a��-�+-��������t�������c�����.�.��wS%SO�
�'
�v�vw��v�>{�{��wxxx�xI+�+��|��|�~�~+���{�|{}���~����g�igt�s��s�454 RR����Q664~���z�	��	�������������W�W���~]~�]�������R�R��A���L���7�87Z����M^M^�WY^���������$������&�[&�X)X�)�������B�B���'��������p��p������
�	��	�]]������u�t��t�)�)(�!�!�����&�g�hgpU�Um�������n��nh�o��o���������s�tu�u���*�*+�;9n9on�%��%
'	'(	GOvO�K��KHPHPx�x��CBrB0r|���~d+d-+{�{��}�c�K�K�������s5sy5�����������'&Q&6Q2HG�z��z������������������~|�|��yw�w#���9�;9(*�*������-�_�Y��Y#$���`��`�������Y�YX�����������B�����������:�5:bb���U��U���f���yx�x�������.�����m�##��(�(�� %!%$!�""#��'�&'��Z��Z@ttr����������������6�;<�<��B���e�[e=���k�������?ALA�L��N��NF
�
����}�}~�E�Q�SQ������UVVYZZ��_�eJeJjx�o�op�tv vR �����~�����������-�.-5�5������Z��V�VW���������I��I�����LL������������DCC�����P��������G�G������\�������o�8�c8����7�������X�������Y�XY�eXe�Xf�e��ef��9d�:�����9�:��:����������������Y<Y�<<�;��;�������7�������������Wa�����a���V�bVVbWbaW��6��6����6�����~L~}L����P�P3���v�wvzyy�������% � ��gzhzh����/�/�����gexe�x��e��e������������/����������������njlki�����s�������������������"m�m��mk�k���3�3��k�����!n"nm"��k
�
���!�n!�nln�#�#�8�8���`�`��?�������l�kl?�����>�?��?��>��>��������l�S�S;�RS�S��R�R��������������I�ILM�M�����I�L�L������Q�Q�����������������{��{�{|��|�|���.�./�����/�����������S�S��U��UDUEU�E��B�DB�U�U��U��F�����CqCrq1�����qhqgh��q~����~�|~M������;�;��p�pq�qn�n��qsns�n�����������A�@��@��A��A�������������zFz�Fu�z��zt�u��u@�t����l��ljl�j��j������������ �V�kVViVki�i�������������������������������������������� ��         index_count    '     
   primitive             format    }       aabb    ����o��WH��t�=�)>�
�=      skeleton_aabb              blend_shape_data           PackedScene          	         names "         touch_controller    Spatial    TouchL    mesh    material/0    MeshInstance    AnimationPlayer    	   variants                             node_count             nodes        ��������       ����                      ����                                  ����              conn_count              conns               node_paths              editable_instances              version       RSRC        [remap]

importer="scene"
type="PackedScene"
path="res://.import/touch_controller.dae-173498c575c00b5da5457c9fbea54cbe.scn"

[deps]

source_file="res://addons/godot_ovrmobile/example_scenes/touch_controller.dae"
dest_files=[ "res://.import/touch_controller.dae-173498c575c00b5da5457c9fbea54cbe.scn" ]

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/root_scale=1.0
nodes/custom_script=""
nodes/storage=0
materials/location=1
materials/storage=1
materials/keep_on_reimport=true
meshes/compress=true
meshes/ensure_tangents=true
meshes/storage=0
meshes/light_baking=0
meshes/lightmap_texel_size=0.1
skins/use_named_skins=true
external_files/store_in_subdir=false
animation/import=true
animation/fps=15
animation/filter_script=""
animation/storage=false
animation/keep_custom_tracks=false
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
sun_energy = 16.0

[resource]
background_mode = 2
background_sky = SubResource( 1 )
ssao_blur = 1
  GDST@   @           �  PNG �PNG

   IHDR   @   @   %�   sRGB ���  VIDATh��ILSAǧ�
(H�-���[�� 1��p�`ƫ�[5.@� 5$��A1�*ִ*
B)в
�Z�,�C��x�7}+���N}�l����f����p of���s�o|`�(z;<:��c�(~��!`�
���)y���� ���j�c��a!L�w W�1�����)q���E�>t�hu�/[<���:z2�!�z @��;Q�zDUd�d?њ܍��]\�ŉ�k[����^���kOj��/�OL�����  �H\�u�ƛ7n��Wpѐ�;�748S��]���
:��P_�n�&��j]��^{D|6�q.�?����'"r�5����^�\m��H?h� j�dr����c��M&WW����@�@V!}��#:�\ �)HIS������u��7U�6ܛ2���]���P\~�V��w�Wd�,�,��-��t�0�]޴8x�n�N�n.;�k��#eX���ȼB�� pv��ͮ�i=�P�Wďz ��P��t�I�;���;H6:��Ydrt�A4��[ݍ8��H��,ME����@Saβ6Z���8�7�CE�9�o5���C-�@�y�n~�����y)1� 'U���|�s�o��x\{��e'U��{��R��H3��xv`�p)b�0W�1�!�QX��F�΁��
��=���e�ӫN)i��
WL��Jg~�3ONq����H�ؾ2|yX0�"t��б�5����c�J�,BP����G7��#��c�,�\��m�+�0�{s�U,u�"rַ���7�.D����  �=V�z"�]15�JÃ�bDh�V�vt�$ƈ�MP�Dm+�}S�"J�H⬖��ؓ��r+��4 H�"ޥ�H8M���5�"t?8�p��z1��)qD(�-�����K*�� ��+�`K�UYg J�J���	�����X�&��$��4�9�0ogz(C��'�?�C��
��G��e��*1��3þu�c[���P֝z���L)��Y\P��l΋W.�u()v�|JE��,���־���;��J2��.��?sX�Cv������od�!,$ Y�8-!"B�V�l:��A\��� �����>��j    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
�PNG

   IHDR   @   @   %�   sRGB ���   gAMA  ���a   	pHYs  �  ��o�d  ?IDAThC�YlLQ�g:�jAu�JT=�Rm-���Ո�xh�Z���'/b7x�E��H��"B-U5tB�BK]�.�h;���͸s�9w�;wF�I�}g2�~�{���s�U����<��x(�W �Č-=�h��N�|�ĺ!�
շvm�z	� �Sc�±�TXdo�0r8�/`���/���P��:r"8�����
S�K��@�O!l�̼r�`�G���,I|�X���j���,��Y,��g�ƯZ�<~呣G�{z�GF
�s���4L�D�l�L�
��g��(�H�sނ�$R��Q@�>��pA����'񾦅�Tg|Z�'�^@rva_���z�iUӿ"}��W�ܕ�]������3աB��MhuS�L���3U�8��>�%Kh��VR�0�ԉ�gN�� ��c)X`V[��u�H���lH�o�$�K/��m�GNk�'���(�A9��C��єpM�nssڡ�k`�N>x^�A vC���
����l�-H�DM����]`����d�l�	тe�.���p�ܒ�	������;[���+����&((,w��sR���
P� ��x�2J�v+���C=����0��BnN�E�[��6,�㧝 ^S�)�q��(�@ݩ5pdF���˸�����BxX���ŵw�k{-|"_�zE�n�	�F@�a��I�S�W3X8D��L!�h��[�!�E �8��]XIy kG�BV��Y���c��1C�-$
*~`?�5�IݢK`�'!@ ���'��|rA�`�	���	Dtk��X:��:k�B�s�|^��"�[Q�Yn�2��G�$�G�p�)C���3
��
���_��1��3��� �>��u�:�6z���;������=��B́{����G�%��eE���B�k���V�ҳ�9����!!:x�b|�R�%�ʖh1GN�{>`�Iwf�_�J��ƨ�㇃������8bA;�����G� ��Nt`xZ����M��6..\���C�d�)@�m��� ��p*�����Qy��    IEND�B`��dֿ�sj��<���@ׯ�o���	P���yё��Ǡ��l�wy���}l����l�WZB��h�v�˗�C�լ�v��� ���o�x��W7�|�U�N#�j�/�׫���=��qŅ���*�B��#�mn��k��=�4lް���E���'b�����\�:��6_X44Y�6�1� ��{;3� �lSM�']a��ǻ)��a�LML�OLK�P^YÇ��7��� ���:Ԓ�s�T���QK
���:�����(p��
����ݹ)��ҺՔ��;7�W�n�bÕ^�G4�ӧ{Y��2��=�Ѫ$��CI��AC����c���z����df��dHZ�/�k���`m�+ǁ�8�>?�toD�#^�u���8/�E�1 ��ƽ��ܓ�ʻ{����ͅ�����\`����J�(+�������hvz{(�T<��`Oq�ed�8w��-f��G���l6n�Ȃ���HY.=QGzb�����,�������l��~�ŋs��9��q,-+�F��sH,^�b�n7�~����� 8�N^�u����������dV/,e��RJ����Oaf߾�����8��A����,��r�n7����{8���b@AEE��[��]�< ���|s�$�$A�9�������}�X,TTT �`pJ���쀦k�O�V2]���d�~�ds�ф�{t��d�{|��hlss���|

��.%Ib����>v���̙3���*����ū���Ob�
+����2����b�op���<��̝�q�ͬX����HO7S�@+W�@A��'�P=6A�3m����xfZ���!pz�l=ZǺ��!��=�������yj�`^x�e�4*E��e�>��*K������p���O��
�Z����9|�`�ח1^[_�8u9d_@a͞j��&˨�j���B�Yb�7��z5�PX�eM�r#�y3��'�b@�-@����Q�I�Ë�����\�쥢������e$�(�H�d�`2h04�����j����r����7ٹb�`4h�I�c� c�<-.~�ցee%1:��c:���fN��|`ţ%dܰ(�j�`ux9��ƀ-9ƞm7Up��*�����x��O�?��Ia�?�@٦���RY��P������_Tauxivt]��=��؋%��|� *��r���uV%�Ft*	w���,	2���l�;+�����|J�R�%A ��N%��%ꬮ�A�,��C����lms`��9,f���
���7�ʜ�C%K�\qt�7��\q��%�7��a����.u��h���j�-��BÇ���n��7�UO|s�������iq�P�}к0{i�?4! 9N�A�"N�U͎�B1<#���z�������)&��=�2�8U߽����2No��x�
�V�ɠ!��s�^�U���K=wp�Z�:<��khs�hluc���:�8<~?W�^v�m
Y�(+�Lck���Ԭ�7G�5����3�s�v~��I���ǐ�<�����~(�xk���ǋk61,#��(�v:G-D{$xXF"/��ԫ���0�c�1r�SY2o&*Y���g�m+<RT��_�c�p3�}����EW>�
Wo����ҧf�o��՝���[��f���O��m2���-�����eȩy#�@��<�t���5L9���C�����r?O�����lb��!�pR�--,e-�v�J���>TF�	�B�R�Y�3����i����t#'j[8Uߊ�~W&Rtj���$�s��2�Lj���6;�?���>��?�%rG'�'t��e&�UĬ)�_2�,*TYlT_qP�좱͍��M�ˇ� Th�vL.I�F�z�L�^MZ�s��,���IK@��@�/��a�_��H9���;8���VMqa.%����#7�L�)��'���T�5r��y�WTs�L5�(z�pDuF(�O�������4j�&2R�$���kQIƤ�p���N ����fw���LC��/�9�͢RP��(J�������[���op+P�����B=�_&���i�B��t���w����a��k�.	X�(J��q}'ZA0���q�(J@�j���5jԨUw|d�!�m�J�?n{(
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG      _global_script_classesx                    class         OculusHandTracker         language      GDScript      path   B   res://addons/godot_ovrmobile/example_scenes/oculus_hand_tracker.gd        base      OculusTracker               class         OculusTouchController         language      GDScript      path   F   res://addons/godot_ovrmobile/example_scenes/oculus_touch_controller.gd        base      OculusTracker               class         OculusTracker         language      GDScript      path   =   res://addons/godot_ovrmobile/example_scenes/oculus_tracker.gd         base      ARVRController     _global_script_class_iconst               OculusTracker                OculusTouchController                OculusHandTracker             application/config/name         Oculus Mobile Demo     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     debug/settings/stdout/print_fps            display/window/size/width            display/window/size/height      �     display/window/vsync/use_vsync             gdnative/singletons          $   rendering/quality/driver/driver_name         GLES2   7   rendering/quality/intended_usage/framebuffer_allocation         %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/quality/directional_shadow/size         #   rendering/quality/shadow_atlas/size         7   rendering/quality/reflections/texture_array_reflections          .   rendering/quality/reflections/high_quality_ggx          5   rendering/quality/shading/force_vertex_shading.mobile          :   rendering/quality/shading/force_lambert_over_burley.mobile          5   rendering/quality/shading/force_blinn_over_ggx.mobile             rendering/quality/filters/msaa            rendering/quality/depth/hdr          )   rendering/environment/default_environment          res://default_env.tres  1   rendering/quality/voxel_cone_tracing/high_quality                         