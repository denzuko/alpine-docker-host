package packer.analysis

default allowed = false

allowed {
  input.variables.vm_memory > 4097
  input.variables.vm_cpus > 1
  input.variables.disk_size == "12G"
  input.builders[0].iso_urls[0] == "http://dl-cdn.alpinelinux.org/alpine/latest-stable/releases/x86_64/alpine-virt-3.18.2-x86_64.iso"
  input.builders[0].iso_checksum == "sha256:6bc7ff54f5249bfb67082e1cf261aaa6f307d05f64089d3909e18b2b0481467f"
  input.builders[0].communicator == "ssh"
  input.builders[0].ssh_username == "root"
}
