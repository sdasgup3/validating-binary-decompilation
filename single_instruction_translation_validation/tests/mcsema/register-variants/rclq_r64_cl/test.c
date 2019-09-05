void leaf() {
  __asm__("rclq %cl, %rbx");
  }

void main() {
  leaf();
}