void leaf() {
  __asm__("sarb $0x1, %ah");
  }

void main() {
  leaf();
}