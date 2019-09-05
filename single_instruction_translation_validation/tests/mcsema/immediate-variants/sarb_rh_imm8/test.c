void leaf() {
  __asm__("sarb $0x77, %ah");
  }

void main() {
  leaf();
}