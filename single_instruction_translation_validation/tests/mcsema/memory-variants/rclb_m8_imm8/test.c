void leaf() {
  __asm__("rclb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}