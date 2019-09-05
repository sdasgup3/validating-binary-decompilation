void leaf() {
  __asm__("rclq $0x77, %rbx");
  }

void main() {
  leaf();
}