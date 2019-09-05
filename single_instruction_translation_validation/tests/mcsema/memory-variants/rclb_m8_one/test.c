void leaf() {
  __asm__("rclb $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}