/* libmediaart-1.0.vapi generated by vapigen-0.26, do not modify. */

[CCode (cprefix = "MediaArt", gir_namespace = "MediaArt", gir_version = "1.0", lower_case_cprefix = "media_art_")]
namespace MediaArt {
	[CCode (cheader_filename = "libmediaart/mediaart.h", type_id = "media_art_process_get_type ()")]
	public class Process : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		public Process () throws GLib.Error;
		public bool buffer (MediaArt.Type type, MediaArt.ProcessFlags flags, GLib.File related_file, [CCode (array_length_cname = "len", array_length_pos = 4.5, array_length_type = "gsize")] uint8[]? buffer, string mime, string? artist, string? title) throws GLib.Error;
		public bool file (MediaArt.Type type, MediaArt.ProcessFlags flags, GLib.File file, string? artist, string? title) throws GLib.Error;
		public bool uri (MediaArt.Type type, MediaArt.ProcessFlags flags, string uri, string? artist, string? title) throws GLib.Error;
	}
	[CCode (cheader_filename = "libmediaart/mediaart.h", cprefix = "MEDIA_ART_PROCESS_FLAGS_", has_type_id = false)]
	[Flags]
	public enum ProcessFlags {
		NONE,
		FORCE
	}
	[CCode (cheader_filename = "libmediaart/mediaart.h", cprefix = "MEDIA_ART_", has_type_id = false)]
	public enum Type {
		NONE,
		ALBUM,
		VIDEO
	}
	[CCode (cheader_filename = "libmediaart/mediaart.h", cprefix = "MEDIA_ART_ERROR_")]
	public errordomain Error {
		NO_STORAGE,
		NO_TITLE,
		SYMLINK_FAILED,
		RENAME_FAILED;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	public static bool buffer_to_jpeg (uint8 buffer, ulong len, string buffer_mime, string target) throws GLib.Error;
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	public static bool file_to_jpeg (string filename, string target) throws GLib.Error;
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	public static bool get_file (string artist, string title, string prefix, GLib.File? file, out GLib.File cache_file, out GLib.File local_file);
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	public static bool get_path (string artist, string title, string prefix, string? uri, out string cache_path, out string local_uri);
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	public static void plugin_init (int max_width);
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	public static void plugin_shutdown ();
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	public static bool remove (string artist, string? album);
	[CCode (cheader_filename = "libmediaart/mediaart.h")]
	public static string strip_invalid_entities (string original);
}
