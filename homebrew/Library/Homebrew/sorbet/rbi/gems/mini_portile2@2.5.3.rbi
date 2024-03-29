# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `mini_portile2` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

class MiniPortile
  def initialize(name, version); end

  def activate; end
  def apply_patch(patch_file); end
  def compile; end
  def configure; end
  def configure_options; end
  def configure_options=(_arg0); end
  def configured?; end
  def cook; end
  def download; end
  def downloaded?; end
  def extract; end
  def files; end
  def files=(_arg0); end
  def host; end
  def host=(_arg0); end
  def install; end
  def installed?; end
  def logger; end
  def logger=(_arg0); end
  def name; end
  def original_host; end
  def patch; end
  def patch_files; end
  def patch_files=(_arg0); end
  def path; end
  def target; end
  def target=(_arg0); end
  def version; end

  private

  def archives_path; end
  def computed_options; end
  def configure_defaults; end
  def configure_prefix; end
  def detect_host; end
  def download_file(url, full_path, count = T.unsafe(nil)); end
  def download_file_file(uri, full_path); end
  def download_file_ftp(uri, full_path); end
  def download_file_http(url, full_path, count = T.unsafe(nil)); end
  def execute(action, command, command_opts = T.unsafe(nil)); end
  def extract_file(file, target); end
  def files_hashs; end
  def gcc_cmd; end
  def log_file(action); end
  def make_cmd; end
  def message(text); end
  def newer?(target, checkpoint); end
  def output(text = T.unsafe(nil)); end
  def port_path; end
  def tar_compression_switch(filename); end
  def tar_exe; end
  def tmp_path; end
  def verify_file(file); end
  def which(cmd); end
  def with_tempfile(filename, full_path); end
  def work_path; end

  class << self
    def mingw?; end
    def mswin?; end
    def windows?; end
  end
end

MiniPortile::KEYRING_NAME = T.let(T.unsafe(nil), String)
MiniPortile::TAR_EXECUTABLES = T.let(T.unsafe(nil), Array)
MiniPortile::VERSION = T.let(T.unsafe(nil), String)

class MiniPortileCMake < ::MiniPortile
  def configure; end
  def configure_defaults; end
  def configure_prefix; end
  def configured?; end
  def make_cmd; end
end

class Net::HTTP < ::Net::Protocol
  private

  def edit_path(path); end
end

Net::HTTP::ENVIRONMENT_VARIABLE_IS_MULTIUSER_SAFE = T.let(T.unsafe(nil), TrueClass)
Net::HTTP::ProxyMod = Net::HTTP::ProxyDelta
