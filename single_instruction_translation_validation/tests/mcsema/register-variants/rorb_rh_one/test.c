void leaf() {
  __asm__("rorb $0x1, %ah");
  }

void main() {
  leaf();
}