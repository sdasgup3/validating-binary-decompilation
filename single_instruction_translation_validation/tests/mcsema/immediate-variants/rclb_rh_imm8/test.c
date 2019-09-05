void leaf() {
  __asm__("rclb $0x77, %ah");
  }

void main() {
  leaf();
}