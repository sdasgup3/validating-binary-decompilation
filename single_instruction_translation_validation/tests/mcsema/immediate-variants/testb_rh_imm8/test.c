void leaf() {
  __asm__("testb $0x77, %ah");
  }

void main() {
  leaf();
}