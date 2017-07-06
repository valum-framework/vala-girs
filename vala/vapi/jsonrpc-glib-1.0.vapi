/* jsonrpc-glib-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Jsonrpc", gir_namespace = "Jsonrpc", gir_version = "1.0", lower_case_cprefix = "jsonrpc_")]
namespace Jsonrpc {
	[CCode (cheader_filename = "jsonrpc-glib.h", type_id = "jsonrpc_client_get_type ()")]
	public class Client : GLib.Object {
		[CCode (has_construct_function = false)]
		[Version (since = "3.26")]
		public Client (GLib.IOStream io_stream);
		[Version (since = "3.26")]
		public bool call (string method, GLib.Variant? @params, GLib.Cancellable? cancellable, out GLib.Variant? return_value) throws GLib.Error;
		[Version (since = "3.26")]
		public async bool call_async (string method, GLib.Variant? @params, GLib.Cancellable? cancellable, out GLib.Variant? return_value) throws GLib.Error;
		[Version (since = "3.26")]
		public bool close (GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.26")]
		public async bool close_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public static GLib.Quark error_quark ();
		[Version (since = "3.26")]
		public bool get_use_gvariant ();
		[Version (since = "3.26")]
		public bool reply (GLib.Variant id, GLib.Variant result, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool reply_async (GLib.Variant id, GLib.Variant result, GLib.Cancellable? cancellable) throws GLib.Error;
		[Version (since = "3.26")]
		public bool send_notification (string method, owned GLib.Variant? @params, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.26")]
		public async bool send_notification_async (string method, GLib.Variant? @params, GLib.Cancellable? cancellable) throws GLib.Error;
		[Version (since = "3.26")]
		public void set_use_gvariant (bool use_gvariant);
		[Version (since = "3.26")]
		public void start_listening ();
		[Version (since = "3.26")]
		public GLib.IOStream io_stream { construct; }
		[Version (since = "3.26")]
		public bool use_gvariant { get; set; }
		[Version (since = "3.26")]
		public virtual signal bool handle_call (string method, GLib.Variant id, GLib.Variant? @params);
		[Version (since = "3.26")]
		public virtual signal void notification (string method_name, GLib.Variant? @params);
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", type_id = "jsonrpc_input_stream_get_type ()")]
	public class InputStream : GLib.DataInputStream, GLib.Seekable {
		[CCode (has_construct_function = false)]
		public InputStream (GLib.InputStream base_stream);
		public bool read_message (GLib.Cancellable? cancellable, GLib.Variant message) throws GLib.Error;
		public async bool read_message_async (GLib.Cancellable? cancellable) throws GLib.Error;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", type_id = "jsonrpc_output_stream_get_type ()")]
	public class OutputStream : GLib.DataOutputStream, GLib.Seekable {
		[CCode (has_construct_function = false)]
		public OutputStream (GLib.OutputStream base_stream);
		public bool get_use_gvariant ();
		public void set_use_gvariant (bool use_gvariant);
		public bool write_message (GLib.Variant message, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool write_message_async (GLib.Variant message, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool use_gvariant { get; set; }
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", type_id = "jsonrpc_server_get_type ()")]
	public class Server : GLib.Object {
		[CCode (has_construct_function = false)]
		[Version (since = "3.26")]
		public Server ();
		[Version (since = "3.26")]
		public void accept_io_stream (GLib.IOStream io_stream);
		[Version (since = "3.26")]
		public uint add_handler (string method, owned Jsonrpc.ServerHandler handler);
		[Version (since = "3.26")]
		public void remove_handler (uint handler_id);
		[Version (since = "3.26")]
		public virtual signal bool handle_call (Jsonrpc.Client client, string method, GLib.Variant id, GLib.Variant @params);
		[Version (since = "3.26")]
		public virtual signal void notification (Jsonrpc.Client client, string method, GLib.Variant @params);
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessageAny {
		public Jsonrpc.MessageMagic magic;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessageGetBoolean {
		public Jsonrpc.MessageMagic magic;
		public bool valptr;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessageGetDict {
		public Jsonrpc.MessageMagic magic;
		public weak GLib.VariantDict dictptr;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessageGetDouble {
		public Jsonrpc.MessageMagic magic;
		public double valptr;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessageGetInt32 {
		public Jsonrpc.MessageMagic magic;
		public int32 valptr;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessageGetInt64 {
		public Jsonrpc.MessageMagic magic;
		public int64 valptr;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessageGetIter {
		public Jsonrpc.MessageMagic magic;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessageGetString {
		public Jsonrpc.MessageMagic magic;
		public weak string valptr;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessageGetVariant {
		public Jsonrpc.MessageMagic magic;
		public weak GLib.Variant variantptr;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessageMagic {
		[CCode (array_length = false)]
		public weak char bytes[8];
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessagePutBoolean {
		public Jsonrpc.MessageMagic magic;
		public bool val;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessagePutDouble {
		public Jsonrpc.MessageMagic magic;
		public double val;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessagePutInt32 {
		public Jsonrpc.MessageMagic magic;
		public int32 val;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessagePutInt64 {
		public Jsonrpc.MessageMagic magic;
		public int64 val;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", has_type_id = false)]
	public struct MessagePutString {
		public Jsonrpc.MessageMagic magic;
		public weak string val;
	}
	[CCode (cheader_filename = "jsonrpc-glib.h", instance_pos = 5.9)]
	public delegate void ServerHandler (Jsonrpc.Server self, Jsonrpc.Client client, string method, GLib.Variant id, GLib.Variant @params);
	[CCode (cheader_filename = "jsonrpc-glib.h", cname = "JSONRPC_MAJOR_VERSION")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "jsonrpc-glib.h", cname = "JSONRPC_MICRO_VERSION")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "jsonrpc-glib.h", cname = "JSONRPC_MINOR_VERSION")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "jsonrpc-glib.h", cname = "JSONRPC_VERSION_S")]
	public const string VERSION_S;
}
