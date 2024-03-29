# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `mechanize` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

class HTTP::CookieJar
  include ::Mechanize::CookieDeprecated
  include ::Mechanize::CookieJarIMethods
  include ::Enumerable

  def initialize(options = T.unsafe(nil)); end

  def <<(cookie); end
  def cleanup(session = T.unsafe(nil)); end
  def clear; end
  def cookies(url = T.unsafe(nil)); end
  def delete(cookie); end
  def each(uri = T.unsafe(nil), &block); end
  def empty?(url = T.unsafe(nil)); end
  def load(readable, *options); end
  def parse(set_cookie, origin, options = T.unsafe(nil)); end
  def save(writable, *options); end
  def store; end

  private

  def get_impl(base, value, *args); end
  def initialize_copy(other); end

  class << self
    def const_missing(name); end
  end
end

class Mechanize
  def initialize(connection_name = T.unsafe(nil)); end

  def add_auth(uri, user, password, realm = T.unsafe(nil), domain = T.unsafe(nil)); end
  def agent; end
  def auth(user, password, domain = T.unsafe(nil)); end
  def back; end
  def basic_auth(user, password, domain = T.unsafe(nil)); end
  def ca_file; end
  def ca_file=(ca_file); end
  def cert; end
  def cert=(cert); end
  def cert_store; end
  def cert_store=(cert_store); end
  def certificate; end
  def click(link); end
  def conditional_requests; end
  def conditional_requests=(enabled); end
  def content_encoding_hooks; end
  def cookie_jar; end
  def cookie_jar=(cookie_jar); end
  def cookies; end
  def current_page; end
  def default_encoding; end
  def default_encoding=(_arg0); end
  def delete(uri, query_params = T.unsafe(nil), headers = T.unsafe(nil)); end
  def download(uri, io_or_filename, parameters = T.unsafe(nil), referer = T.unsafe(nil), headers = T.unsafe(nil)); end
  def follow_meta_refresh; end
  def follow_meta_refresh=(follow); end
  def follow_meta_refresh_self; end
  def follow_meta_refresh_self=(follow); end
  def follow_redirect=(follow); end
  def follow_redirect?; end
  def force_default_encoding; end
  def force_default_encoding=(_arg0); end
  def get(uri, parameters = T.unsafe(nil), referer = T.unsafe(nil), headers = T.unsafe(nil)); end
  def get_file(url); end
  def gzip_enabled; end
  def gzip_enabled=(enabled); end
  def head(uri, query_params = T.unsafe(nil), headers = T.unsafe(nil)); end
  def history; end
  def history_added; end
  def history_added=(_arg0); end
  def html_parser; end
  def html_parser=(_arg0); end
  def idle_timeout; end
  def idle_timeout=(idle_timeout); end
  def ignore_bad_chunking; end
  def ignore_bad_chunking=(ignore_bad_chunking); end
  def keep_alive; end
  def keep_alive=(enable); end
  def keep_alive_time; end
  def keep_alive_time=(_arg0); end
  def key; end
  def key=(key); end
  def log; end
  def log=(logger); end
  def max_file_buffer; end
  def max_file_buffer=(bytes); end
  def max_history; end
  def max_history=(length); end
  def open_timeout; end
  def open_timeout=(open_timeout); end
  def page; end
  def parse(uri, response, body); end
  def pass; end
  def pass=(pass); end
  def pluggable_parser; end
  def post(uri, query = T.unsafe(nil), headers = T.unsafe(nil)); end
  def post_connect_hooks; end
  def pre_connect_hooks; end
  def pretty_print(q); end
  def proxy_addr; end
  def proxy_pass; end
  def proxy_port; end
  def proxy_user; end
  def put(uri, entity, headers = T.unsafe(nil)); end
  def read_timeout; end
  def read_timeout=(read_timeout); end
  def redirect_ok; end
  def redirect_ok=(follow); end
  def redirection_limit; end
  def redirection_limit=(limit); end
  def request_headers; end
  def request_headers=(request_headers); end
  def request_with_entity(verb, uri, entity, headers = T.unsafe(nil)); end
  def reset; end
  def resolve(link); end
  def retry_change_requests; end
  def retry_change_requests=(retry_change_requests); end
  def robots; end
  def robots=(enabled); end
  def scheme_handlers; end
  def scheme_handlers=(scheme_handlers); end
  def set_proxy(address, port, user = T.unsafe(nil), password = T.unsafe(nil)); end
  def shutdown; end
  def ssl_version; end
  def ssl_version=(ssl_version); end
  def submit(form, button = T.unsafe(nil), headers = T.unsafe(nil)); end
  def transact; end
  def user_agent; end
  def user_agent=(user_agent); end
  def user_agent_alias=(name); end
  def verify_callback; end
  def verify_callback=(verify_callback); end
  def verify_mode; end
  def verify_mode=(verify_mode); end
  def visited?(url); end
  def visited_page(url); end
  def watch_for_set; end
  def watch_for_set=(_arg0); end

  private

  def add_to_history(page); end
  def post_form(uri, form, headers = T.unsafe(nil)); end

  class << self
    def html_parser; end
    def html_parser=(_arg0); end
    def inherited(child); end
    def log; end
    def log=(_arg0); end
    def start; end
  end
end

Mechanize::AGENT_ALIASES = T.let(T.unsafe(nil), Hash)
class Mechanize::ChunkedTerminationError < ::Mechanize::ResponseReadError; end

class Mechanize::ContentTypeError < ::Mechanize::Error
  def initialize(content_type); end

  def content_type; end
end

Mechanize::Cookie = HTTP::Cookie

module Mechanize::CookieCMethods
  include ::Mechanize::CookieDeprecated

  def parse(arg1, arg2, arg3 = T.unsafe(nil), &block); end
end

module Mechanize::CookieDeprecated
  private

  def __deprecated__(to = T.unsafe(nil)); end
end

module Mechanize::CookieIMethods
  include ::Mechanize::CookieDeprecated

  def set_domain(domain); end
end

class Mechanize::CookieJar < ::HTTP::CookieJar
  def load(input, *options); end
  def save(output, *options); end
end

module Mechanize::CookieJarIMethods
  include ::Mechanize::CookieDeprecated

  def add(arg1, arg2 = T.unsafe(nil)); end
  def add!(cookie); end
  def clear!; end
  def dump_cookiestxt(io); end
  def jar; end
  def load_cookiestxt(io); end
  def save_as(filename, *options); end
end

class Mechanize::DirectorySaver < ::Mechanize::Download
  def initialize(uri = T.unsafe(nil), response = T.unsafe(nil), body_io = T.unsafe(nil), code = T.unsafe(nil)); end

  class << self
    def decode_filename?; end
    def directory; end
    def overwrite?; end
    def save_to(directory, options = T.unsafe(nil)); end
  end
end

class Mechanize::Download
  include ::Mechanize::Parser

  def initialize(uri = T.unsafe(nil), response = T.unsafe(nil), body_io = T.unsafe(nil), code = T.unsafe(nil)); end

  def body; end
  def body_io; end
  def content; end
  def filename; end
  def filename=(_arg0); end
  def save(filename = T.unsafe(nil)); end
  def save!(filename = T.unsafe(nil)); end
  def save_as(filename = T.unsafe(nil)); end
end

module Mechanize::ElementMatcher
  def elements_with(singular, plural = T.unsafe(nil)); end
end

class Mechanize::ElementNotFoundError < ::Mechanize::Error
  def initialize(source, element, conditions); end

  def conditions; end
  def element; end
  def source; end
end

class Mechanize::Error < ::RuntimeError; end

class Mechanize::File
  include ::Mechanize::Parser

  def initialize(uri = T.unsafe(nil), response = T.unsafe(nil), body = T.unsafe(nil), code = T.unsafe(nil)); end

  def body; end
  def body=(_arg0); end
  def content; end
  def filename; end
  def filename=(_arg0); end
  def save(filename = T.unsafe(nil)); end
  def save!(filename = T.unsafe(nil)); end
  def save_as(filename = T.unsafe(nil)); end
end

class Mechanize::FileConnection
  def request(uri, request); end

  class << self
    def new(*a); end
  end
end

class Mechanize::FileRequest
  def initialize(uri); end

  def []=(*a); end
  def add_field(*a); end
  def each_header; end
  def path; end
  def response_body_permitted?; end
  def uri; end
  def uri=(_arg0); end
end

class Mechanize::FileResponse
  def initialize(file_path); end

  def [](key); end
  def code; end
  def content_length; end
  def each; end
  def each_header; end
  def file_path; end
  def get_fields(key); end
  def http_version; end
  def message; end
  def read_body; end
  def uri; end

  private

  def dir_body; end
  def directory?; end
end

class Mechanize::FileSaver < ::Mechanize::Download
  def initialize(uri = T.unsafe(nil), response = T.unsafe(nil), body_io = T.unsafe(nil), code = T.unsafe(nil)); end

  def filename; end
  def save_as(filename = T.unsafe(nil)); end
end

class Mechanize::Form
  extend ::Forwardable
  extend ::Mechanize::ElementMatcher

  def initialize(node, mech = T.unsafe(nil), page = T.unsafe(nil)); end

  def [](field_name); end
  def []=(field_name, value); end
  def action; end
  def action=(_arg0); end
  def add_button_to_query(button); end
  def add_field!(field_name, value = T.unsafe(nil)); end
  def at(*args, &block); end
  def at_css(*args, &block); end
  def at_xpath(*args, &block); end
  def build_query(buttons = T.unsafe(nil)); end
  def button(criteria = T.unsafe(nil)); end
  def button_with(criteria = T.unsafe(nil)); end
  def button_with!(criteria = T.unsafe(nil)); end
  def buttons; end
  def buttons_with(criteria = T.unsafe(nil)); end
  def checkbox(criteria = T.unsafe(nil)); end
  def checkbox_with(criteria = T.unsafe(nil)); end
  def checkbox_with!(criteria = T.unsafe(nil)); end
  def checkboxes; end
  def checkboxes_with(criteria = T.unsafe(nil)); end
  def click_button(button = T.unsafe(nil)); end
  def css(*args, &block); end
  def delete_field!(field_name); end
  def dom_class; end
  def dom_id; end
  def elements; end
  def encoding; end
  def encoding=(_arg0); end
  def enctype; end
  def enctype=(_arg0); end
  def field(criteria = T.unsafe(nil)); end
  def field_with(criteria = T.unsafe(nil)); end
  def field_with!(criteria = T.unsafe(nil)); end
  def fields; end
  def fields_with(criteria = T.unsafe(nil)); end
  def file_upload(criteria = T.unsafe(nil)); end
  def file_upload_with(criteria = T.unsafe(nil)); end
  def file_upload_with!(criteria = T.unsafe(nil)); end
  def file_uploads; end
  def file_uploads_with(criteria = T.unsafe(nil)); end
  def form_node; end
  def has_field?(field_name); end
  def has_key?(field_name); end
  def has_value?(value); end
  def hidden_field?(field_name); end
  def hiddens; end
  def ignore_encoding_error; end
  def ignore_encoding_error=(_arg0); end
  def inspect; end
  def keygens; end
  def keys; end
  def method; end
  def method=(_arg0); end
  def method_missing(meth, *args); end
  def name; end
  def name=(_arg0); end
  def node; end
  def page; end
  def pretty_print(q); end
  def radiobutton(criteria = T.unsafe(nil)); end
  def radiobutton_with(criteria = T.unsafe(nil)); end
  def radiobutton_with!(criteria = T.unsafe(nil)); end
  def radiobuttons; end
  def radiobuttons_with(criteria = T.unsafe(nil)); end
  def request_data; end
  def reset; end
  def reset_button?(button_name); end
  def resets; end
  def save_hash_field_order; end
  def search(*args, &block); end
  def select_buttons(selector, method = T.unsafe(nil)); end
  def select_checkboxes(selector, method = T.unsafe(nil)); end
  def select_fields(selector, method = T.unsafe(nil)); end
  def select_file_uploads(selector, method = T.unsafe(nil)); end
  def select_radiobuttons(selector, method = T.unsafe(nil)); end
  def set_fields(fields = T.unsafe(nil)); end
  def submit(button = T.unsafe(nil), headers = T.unsafe(nil)); end
  def submit_button?(button_name); end
  def submits; end
  def text_field?(field_name); end
  def textarea_field?(field_name); end
  def textareas; end
  def texts; end
  def values; end
  def xpath(*args, &block); end

  private

  def file_to_multipart(file, buf = T.unsafe(nil)); end
  def from_native_charset(str); end
  def mime_value_quote(str); end
  def param_to_multipart(name, value, buf = T.unsafe(nil)); end
  def parse; end
  def proc_query(field); end
  def rand_string(len = T.unsafe(nil)); end
end

class Mechanize::Form::Button < ::Mechanize::Form::Field; end
Mechanize::Form::CRLF = T.let(T.unsafe(nil), String)

class Mechanize::Form::CheckBox < ::Mechanize::Form::RadioButton
  def inspect; end
  def query_value; end
end

class Mechanize::Form::Field
  extend ::Forwardable

  def initialize(node, value = T.unsafe(nil)); end

  def <=>(other); end
  def at(*args, &block); end
  def at_css(*args, &block); end
  def at_xpath(*args, &block); end
  def css(*args, &block); end
  def dom_class; end
  def dom_id; end
  def index; end
  def index=(_arg0); end
  def inspect; end
  def name; end
  def name=(_arg0); end
  def node; end
  def node=(_arg0); end
  def query_value; end
  def raw_value; end
  def search(*args, &block); end
  def type; end
  def type=(_arg0); end
  def value; end
  def value=(_arg0); end
  def xpath(*args, &block); end
end

class Mechanize::Form::FileUpload < ::Mechanize::Form::Field
  def initialize(node, file_name); end

  def file_data; end
  def file_data=(_arg0); end
  def file_name; end
  def file_name=(_arg0); end
  def mime_type; end
  def mime_type=(_arg0); end
end

class Mechanize::Form::Hidden < ::Mechanize::Form::Field; end

class Mechanize::Form::ImageButton < ::Mechanize::Form::Button
  def initialize(*args); end

  def query_value; end
  def x; end
  def x=(_arg0); end
  def y; end
  def y=(_arg0); end
end

class Mechanize::Form::Keygen < ::Mechanize::Form::Field
  def initialize(node, value = T.unsafe(nil)); end

  def challenge; end
  def generate_key(key_size = T.unsafe(nil)); end
  def key; end
end

class Mechanize::Form::MultiSelectList < ::Mechanize::Form::Field
  extend ::Mechanize::ElementMatcher

  def initialize(node); end

  def option(criteria = T.unsafe(nil)); end
  def option_with(criteria = T.unsafe(nil)); end
  def option_with!(criteria = T.unsafe(nil)); end
  def options; end
  def options=(_arg0); end
  def options_with(criteria = T.unsafe(nil)); end
  def query_value; end
  def select_all; end
  def select_none; end
  def select_options(selector, method = T.unsafe(nil)); end
  def selected_options; end
  def value; end
  def value=(values); end
end

class Mechanize::Form::Option
  def initialize(node, select_list); end

  def click; end
  def node; end
  def select; end
  def select_list; end
  def selected; end
  def selected?; end
  def text; end
  def tick; end
  def to_s; end
  def unselect; end
  def untick; end
  def value; end

  private

  def unselect_peers; end
end

class Mechanize::Form::RadioButton < ::Mechanize::Form::Field
  def initialize(node, form); end

  def ==(other); end
  def [](key); end
  def check; end
  def checked; end
  def checked=(_arg0); end
  def checked?; end
  def click; end
  def eql?(other); end
  def form; end
  def hash; end
  def label; end
  def pretty_print_instance_variables; end
  def text; end
  def uncheck; end

  private

  def uncheck_peers; end
end

class Mechanize::Form::Reset < ::Mechanize::Form::Button; end

class Mechanize::Form::SelectList < ::Mechanize::Form::MultiSelectList
  def initialize(node); end

  def query_value; end
  def value; end
  def value=(new_value); end
end

class Mechanize::Form::Submit < ::Mechanize::Form::Button; end
class Mechanize::Form::Text < ::Mechanize::Form::Field; end
class Mechanize::Form::Textarea < ::Mechanize::Form::Field; end
class Mechanize::HTTP; end

class Mechanize::HTTP::Agent
  def initialize(connection_name = T.unsafe(nil)); end

  def add_auth(uri, user, password, realm = T.unsafe(nil), domain = T.unsafe(nil)); end
  def add_default_auth(user, password, domain = T.unsafe(nil)); end
  def allowed_error_codes; end
  def allowed_error_codes=(_arg0); end
  def auth_store; end
  def authenticate_methods; end
  def auto_io(name, read_size, input_io); end
  def back; end
  def ca_file; end
  def ca_file=(ca_file); end
  def cert_store; end
  def cert_store=(cert_store); end
  def certificate; end
  def certificate=(certificate); end
  def conditional_requests; end
  def conditional_requests=(_arg0); end
  def connection_for(uri); end
  def content_encoding_gunzip(body_io); end
  def content_encoding_hooks; end
  def content_encoding_inflate(body_io); end
  def context; end
  def context=(_arg0); end
  def cookie_jar; end
  def cookie_jar=(_arg0); end
  def current_page; end
  def digest_challenges; end
  def disable_keep_alive(request); end
  def enable_gzip(request); end
  def fetch(uri, method = T.unsafe(nil), headers = T.unsafe(nil), params = T.unsafe(nil), referer = T.unsafe(nil), redirects = T.unsafe(nil)); end
  def follow_meta_refresh; end
  def follow_meta_refresh=(_arg0); end
  def follow_meta_refresh_self; end
  def follow_meta_refresh_self=(_arg0); end
  def get_meta_refresh(response, uri, page); end
  def get_robots(uri); end
  def gzip_enabled; end
  def gzip_enabled=(_arg0); end
  def history; end
  def history=(_arg0); end
  def hook_content_encoding(response, uri, response_body_io); end
  def http; end
  def http_request(uri, method, params = T.unsafe(nil)); end
  def idle_timeout; end
  def idle_timeout=(timeout); end
  def ignore_bad_chunking; end
  def ignore_bad_chunking=(_arg0); end
  def inflate(compressed, window_bits = T.unsafe(nil)); end
  def keep_alive; end
  def keep_alive=(_arg0); end
  def log; end
  def make_tempfile(name); end
  def max_file_buffer; end
  def max_file_buffer=(_arg0); end
  def max_history; end
  def max_history=(length); end
  def open_timeout; end
  def open_timeout=(_arg0); end
  def pass; end
  def pass=(_arg0); end
  def post_connect(uri, response, body_io); end
  def post_connect_hooks; end
  def pre_connect(request); end
  def pre_connect_hooks; end
  def private_key; end
  def private_key=(private_key); end
  def proxy_uri; end
  def read_timeout; end
  def read_timeout=(_arg0); end
  def redirect_ok; end
  def redirect_ok=(_arg0); end
  def redirection_limit; end
  def redirection_limit=(_arg0); end
  def request_add_headers(request, headers = T.unsafe(nil)); end
  def request_auth(request, uri); end
  def request_auth_digest(request, uri, realm, base_uri, iis); end
  def request_cookies(request, uri); end
  def request_headers; end
  def request_headers=(_arg0); end
  def request_host(request, uri); end
  def request_language_charset(request); end
  def request_log(request); end
  def request_referer(request, uri, referer); end
  def request_user_agent(request); end
  def reset; end
  def resolve(uri, referer = T.unsafe(nil)); end
  def resolve_parameters(uri, method, parameters); end
  def response_authenticate(response, page, uri, request, headers, params, referer); end
  def response_content_encoding(response, body_io); end
  def response_cookies(response, uri, page); end
  def response_follow_meta_refresh(response, uri, page, redirects); end
  def response_log(response); end
  def response_parse(response, body_io, uri); end
  def response_read(response, request, uri); end
  def response_redirect(response, method, page, redirects, headers, referer = T.unsafe(nil)); end
  def retry_change_requests; end
  def retry_change_requests=(retri); end
  def robots; end
  def robots=(value); end
  def robots_allowed?(uri); end
  def robots_disallowed?(url); end
  def robots_error(url); end
  def robots_error!(url); end
  def robots_mutex; end
  def robots_reset(url); end
  def save_cookies(uri, set_cookie); end
  def scheme_handlers; end
  def scheme_handlers=(_arg0); end
  def secure_resolve!(uri, referer = T.unsafe(nil)); end
  def set_proxy(addr, port = T.unsafe(nil), user = T.unsafe(nil), pass = T.unsafe(nil)); end
  def shutdown; end
  def ssl_version; end
  def ssl_version=(ssl_version); end
  def use_tempfile?(size); end
  def user_agent; end
  def user_agent=(user_agent); end
  def verify_callback; end
  def verify_callback=(verify_callback); end
  def verify_mode; end
  def verify_mode=(verify_mode); end
  def visited_page(url); end
  def webrobots; end
end

Mechanize::HTTP::Agent::CREDENTIAL_HEADERS = T.let(T.unsafe(nil), Array)
Mechanize::HTTP::Agent::POST_HEADERS = T.let(T.unsafe(nil), Array)
Mechanize::HTTP::Agent::RobotsKey = T.let(T.unsafe(nil), Symbol)

class Mechanize::HTTP::AuthChallenge < ::Struct
  def [](param); end
  def params; end
  def params=(_); end
  def raw; end
  def raw=(_); end
  def realm(uri); end
  def realm_name; end
  def scheme; end
  def scheme=(_); end
  def to_s; end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Mechanize::HTTP::AuthRealm
  def initialize(scheme, uri, realm); end

  def ==(other); end
  def eql?(other); end
  def hash; end
  def inspect; end
  def realm; end
  def scheme; end
  def uri; end
end

class Mechanize::HTTP::AuthStore
  def initialize; end

  def add_auth(uri, user, pass, realm = T.unsafe(nil), domain = T.unsafe(nil)); end
  def add_default_auth(user, pass, domain = T.unsafe(nil)); end
  def auth_accounts; end
  def credentials?(uri, challenges); end
  def credentials_for(uri, realm); end
  def default_auth; end
  def remove_auth(uri, realm = T.unsafe(nil)); end
end

class Mechanize::HTTP::ContentDisposition < ::Struct
  def creation_date; end
  def creation_date=(_); end
  def filename; end
  def filename=(_); end
  def modification_date; end
  def modification_date=(_); end
  def parameters; end
  def parameters=(_); end
  def read_date; end
  def read_date=(_); end
  def size; end
  def size=(_); end
  def type; end
  def type=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Mechanize::HTTP::ContentDispositionParser
  def initialize; end

  def parse(content_disposition, header = T.unsafe(nil)); end
  def parse_parameters; end
  def rfc_2045_quoted_string; end
  def rfc_2045_token; end
  def rfc_2045_value; end
  def scanner; end
  def scanner=(_arg0); end
  def spaces; end

  class << self
    def parse(content_disposition); end
  end
end

class Mechanize::HTTP::WWWAuthenticateParser
  def initialize; end

  def auth_param; end
  def auth_scheme; end
  def parse(www_authenticate); end
  def quoted_string; end
  def scan_comma_spaces; end
  def scanner; end
  def scanner=(_arg0); end
  def spaces; end
  def token; end
end

class Mechanize::Headers < ::Hash
  def [](key); end
  def []=(key, value); end
  def canonical_each; end
  def key?(key); end
end

class Mechanize::History < ::Array
  def initialize(max_size = T.unsafe(nil)); end

  def <<(page, uri = T.unsafe(nil)); end
  def clear; end
  def inspect; end
  def max_size; end
  def max_size=(_arg0); end
  def pop; end
  def push(page, uri = T.unsafe(nil)); end
  def shift; end
  def visited?(uri); end
  def visited_page(uri); end

  private

  def initialize_copy(orig); end
  def remove_from_index(page); end
end

class Mechanize::Image < ::Mechanize::Download; end

class Mechanize::Page < ::Mechanize::File
  extend ::Forwardable
  extend ::Mechanize::ElementMatcher

  def initialize(uri = T.unsafe(nil), response = T.unsafe(nil), body = T.unsafe(nil), code = T.unsafe(nil), mech = T.unsafe(nil)); end

  def %(*args, &block); end
  def /(*args, &block); end
  def at(*args, &block); end
  def at_css(*args, &block); end
  def at_xpath(*args, &block); end
  def base(criteria = T.unsafe(nil)); end
  def base_with(criteria = T.unsafe(nil)); end
  def base_with!(criteria = T.unsafe(nil)); end
  def bases; end
  def bases_with(criteria = T.unsafe(nil)); end
  def canonical_uri; end
  def content_type; end
  def css(*args, &block); end
  def detected_encoding; end
  def encoding; end
  def encoding=(encoding); end
  def encoding_error?(parser = T.unsafe(nil)); end
  def encodings; end
  def form(criteria = T.unsafe(nil)); end
  def form_with(criteria = T.unsafe(nil)); end
  def form_with!(criteria = T.unsafe(nil)); end
  def forms; end
  def forms_with(criteria = T.unsafe(nil)); end
  def frame(criteria = T.unsafe(nil)); end
  def frame_with(criteria = T.unsafe(nil)); end
  def frame_with!(criteria = T.unsafe(nil)); end
  def frames; end
  def frames_with(criteria = T.unsafe(nil)); end
  def iframe(criteria = T.unsafe(nil)); end
  def iframe_with(criteria = T.unsafe(nil)); end
  def iframe_with!(criteria = T.unsafe(nil)); end
  def iframes; end
  def iframes_with(criteria = T.unsafe(nil)); end
  def image(criteria = T.unsafe(nil)); end
  def image_urls; end
  def image_with(criteria = T.unsafe(nil)); end
  def image_with!(criteria = T.unsafe(nil)); end
  def images; end
  def images_with(criteria = T.unsafe(nil)); end
  def inspect; end
  def labels; end
  def labels_hash; end
  def link(criteria = T.unsafe(nil)); end
  def link_with(criteria = T.unsafe(nil)); end
  def link_with!(criteria = T.unsafe(nil)); end
  def links; end
  def links_with(criteria = T.unsafe(nil)); end
  def mech; end
  def mech=(_arg0); end
  def meta_charset; end
  def meta_refresh; end
  def parser; end
  def pretty_print(q); end
  def reset; end
  def response_header_charset; end
  def root; end
  def search(*args, &block); end
  def select_bases(selector, method = T.unsafe(nil)); end
  def select_forms(selector, method = T.unsafe(nil)); end
  def select_frames(selector, method = T.unsafe(nil)); end
  def select_iframes(selector, method = T.unsafe(nil)); end
  def select_images(selector, method = T.unsafe(nil)); end
  def select_links(selector, method = T.unsafe(nil)); end
  def title; end
  def xpath(*args, &block); end

  private

  def html_body; end

  class << self
    def charset(content_type); end
    def charset_from_content_type(content_type); end
    def meta_charset(body); end
    def meta_content_type(body); end
    def response_header_charset(response); end
  end
end

class Mechanize::Page::Base < ::Mechanize::Page::Link; end
Mechanize::Page::DEFAULT_RESPONSE = T.let(T.unsafe(nil), Hash)

class Mechanize::Page::Frame < ::Mechanize::Page::Link
  def initialize(node, mech, referer); end

  def content; end
  def name; end
  def node; end
  def src; end
  def text; end
end

class Mechanize::Page::Image
  def initialize(node, page); end

  def alt; end
  def caption; end
  def dom_class; end
  def dom_id; end
  def extname; end
  def fetch(parameters = T.unsafe(nil), referer = T.unsafe(nil), headers = T.unsafe(nil)); end
  def height; end
  def image_referer; end
  def inspect; end
  def mech; end
  def mech=(_arg0); end
  def mime_type; end
  def node; end
  def page; end
  def page=(_arg0); end
  def pretty_print(q); end
  def relative?; end
  def src; end
  def text; end
  def title; end
  def to_s; end
  def uri; end
  def url; end
  def width; end
end

class Mechanize::Page::Label
  def initialize(node, page); end

  def for; end
  def node; end
  def page; end
  def text; end
  def to_s; end
end

class Mechanize::Page::Link
  def initialize(node, mech, page); end

  def attributes; end
  def click; end
  def dom_class; end
  def dom_id; end
  def href; end
  def inspect; end
  def node; end
  def noreferrer?; end
  def page; end
  def pretty_print(q); end
  def referer; end
  def rel; end
  def rel?(kind); end
  def resolved_uri; end
  def text; end
  def to_s; end
  def uri; end
end

class Mechanize::Page::MetaRefresh < ::Mechanize::Page::Link
  def initialize(node, page, delay, href, link_self = T.unsafe(nil)); end

  def delay; end
  def link_self; end
  def noreferrer?; end

  class << self
    def from_node(node, page, uri = T.unsafe(nil)); end
    def parse(content, base_uri = T.unsafe(nil)); end
  end
end

Mechanize::Page::MetaRefresh::CONTENT_REGEXP = T.let(T.unsafe(nil), Regexp)
Mechanize::Page::MetaRefresh::UNSAFE = T.let(T.unsafe(nil), Regexp)

module Mechanize::Parser
  extend ::Forwardable

  def [](*args, &block); end
  def []=(*args, &block); end
  def canonical_each(*args, &block); end
  def code; end
  def code=(_arg0); end
  def each(*args, &block); end
  def extract_filename(full_path = T.unsafe(nil)); end
  def fill_header(response); end
  def find_free_name(filename); end
  def header; end
  def key?(*args, &block); end
  def response; end
  def response=(_arg0); end
  def uri; end
  def uri=(_arg0); end
end

Mechanize::Parser::SPECIAL_FILENAMES = T.let(T.unsafe(nil), Regexp)

class Mechanize::PluggableParser
  def initialize; end

  def [](content_type); end
  def []=(content_type, klass); end
  def csv=(klass); end
  def default; end
  def default=(_arg0); end
  def html=(klass); end
  def parser(content_type); end
  def pdf=(klass); end
  def register_parser(content_type, klass); end
  def xhtml=(klass); end
  def xml=(klass); end
end

Mechanize::PluggableParser::CONTENT_TYPES = T.let(T.unsafe(nil), Hash)
Mechanize::PluggableParser::InvalidContentTypeError = MIME::Type::InvalidContentType

class Mechanize::RedirectLimitReachedError < ::Mechanize::Error
  def initialize(page, redirects); end

  def page; end
  def redirects; end
  def response_code; end
end

class Mechanize::RedirectNotGetOrHeadError < ::Mechanize::Error
  def initialize(page, verb); end

  def inspect; end
  def page; end
  def response_code; end
  def to_s; end
  def uri; end
  def verb; end
end

class Mechanize::ResponseCodeError < ::Mechanize::Error
  def initialize(page, message = T.unsafe(nil)); end

  def inspect; end
  def page; end
  def response_code; end
  def to_s; end
end

class Mechanize::ResponseReadError < ::Mechanize::Error
  def initialize(error, response, body_io, uri, mechanize); end

  def body_io; end
  def error; end
  def force_parse; end
  def mechanize; end
  def message; end
  def response; end
  def uri; end
end

class Mechanize::RobotsDisallowedError < ::Mechanize::Error
  def initialize(url); end

  def inspect; end
  def to_s; end
  def uri; end
  def url; end
end

class Mechanize::UnauthorizedError < ::Mechanize::ResponseCodeError
  def initialize(page, challenges, message); end

  def challenges; end
  def to_s; end
end

class Mechanize::UnsupportedSchemeError < ::Mechanize::Error
  def initialize(scheme, uri); end

  def scheme; end
  def scheme=(_arg0); end
  def uri; end
  def uri=(_arg0); end
end

class Mechanize::Util
  class << self
    def build_query_string(parameters, enc = T.unsafe(nil)); end
    def detect_charset(src); end
    def each_parameter(parameters, &block); end
    def from_native_charset(s, code, ignore_encoding_error = T.unsafe(nil), log = T.unsafe(nil)); end
    def guess_encoding(src); end
    def html_unescape(s); end
    def uri_escape(str, unsafe = T.unsafe(nil)); end
    def uri_unescape(str); end

    private

    def each_parameter_1(key, value, &block); end
  end
end

Mechanize::Util::DefaultMimeTypes = T.let(T.unsafe(nil), Hash)
Mechanize::VERSION = T.let(T.unsafe(nil), String)

class Mechanize::XmlFile < ::Mechanize::File
  extend ::Forwardable

  def initialize(uri = T.unsafe(nil), response = T.unsafe(nil), body = T.unsafe(nil), code = T.unsafe(nil)); end

  def at(*args, &block); end
  def search(*args, &block); end
  def xml; end
end
