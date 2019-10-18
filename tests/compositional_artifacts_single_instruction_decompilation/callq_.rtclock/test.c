void main() {
  __asm__("callq .rtclock");
  __asm__(".rtclock:");
}
