void leaf() {
  __asm__("rclb $0x1, %bl");
  }

void main() {
  leaf();
}