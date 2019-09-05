void leaf() {
  __asm__("sarb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}