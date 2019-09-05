void leaf() {
  __asm__("sarb $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}