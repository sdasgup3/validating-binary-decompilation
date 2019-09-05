void leaf() {
  __asm__("rorb $0x77, %ah");
  }

void main() {
  leaf();
}