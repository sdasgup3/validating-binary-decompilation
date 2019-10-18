void main() {
  __asm__("callq .strtoll_plt");
  __asm__(".strtoll_plt:");
}
