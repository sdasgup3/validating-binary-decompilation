void leaf() {
  __asm__("rclb %cl, %ah");
  }

void main() {
  leaf();
}