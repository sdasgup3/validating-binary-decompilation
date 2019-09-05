void leaf() {
  __asm__("cmpb $0x77, %ah");
  }

void main() {
  leaf();
}