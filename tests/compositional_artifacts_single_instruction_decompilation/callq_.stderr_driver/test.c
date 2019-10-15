void main() {
  __asm__("callq .stderr_driver");
  __asm__(".stderr_driver:");
}
