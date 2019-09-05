void leaf() {
  __asm__("rclq %cl, -4(%rbp)");
  }

void main() {
  leaf();
}