/// @description Move the View

#region Move the View

view_half_width = camera_get_view_width(view_camera[0])/2;
view_quarter_height = camera_get_view_width(view_camera[0])/4;

camera_set_view_pos(view_camera[0], x - view_half_width, y - view_quarter_height );

#endregion