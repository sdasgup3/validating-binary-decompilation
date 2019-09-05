void leaf() {
  __asm__("rclb $0x77, %bl");
  }

void main() {
  leaf();
}