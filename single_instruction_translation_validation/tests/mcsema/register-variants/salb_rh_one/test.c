void leaf() {
  __asm__("salb $0x1, %ah");
  }

void main() {
  leaf();
}