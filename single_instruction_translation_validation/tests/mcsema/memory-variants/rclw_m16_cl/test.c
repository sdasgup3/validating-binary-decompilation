void leaf() {
  __asm__("rclw %cl, -4(%rbp)");
  }

void main() {
  leaf();
}