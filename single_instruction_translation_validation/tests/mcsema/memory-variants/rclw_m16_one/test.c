void leaf() {
  __asm__("rclw $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}