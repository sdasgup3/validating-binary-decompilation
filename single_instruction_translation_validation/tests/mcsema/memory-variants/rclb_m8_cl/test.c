void leaf() {
  __asm__("rclb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}