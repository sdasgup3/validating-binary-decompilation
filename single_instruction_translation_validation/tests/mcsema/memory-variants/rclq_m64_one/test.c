void leaf() {
  __asm__("rclq $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}