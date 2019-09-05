void leaf() {
  __asm__("rclq $0x1, %rbx");
  }

void main() {
  leaf();
}