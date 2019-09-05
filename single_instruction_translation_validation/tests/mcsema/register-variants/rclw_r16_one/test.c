void leaf() {
  __asm__("rclw $0x1, %bx");
  }

void main() {
  leaf();
}