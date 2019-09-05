void leaf() {
  __asm__("salb $0x77, %ah");
  }

void main() {
  leaf();
}