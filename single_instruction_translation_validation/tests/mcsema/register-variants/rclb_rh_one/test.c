void leaf() {
  __asm__("rclb $0x1, %ah");
  }

void main() {
  leaf();
}