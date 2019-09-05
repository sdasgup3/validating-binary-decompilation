void leaf() {
  __asm__("rolb $0x1, %ah");
  }

void main() {
  leaf();
}