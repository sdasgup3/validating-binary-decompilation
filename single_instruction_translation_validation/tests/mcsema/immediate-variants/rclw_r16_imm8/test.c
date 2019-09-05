void leaf() {
  __asm__("rclw $0x77, %bx");
  }

void main() {
  leaf();
}