void leaf() {
  __asm__("rclw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}