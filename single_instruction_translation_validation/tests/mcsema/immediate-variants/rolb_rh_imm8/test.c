void leaf() {
  __asm__("rolb $0x77, %ah");
  }

void main() {
  leaf();
}