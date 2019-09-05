void leaf() {
  __asm__("rclw %cl, %bx");
  }

void main() {
  leaf();
}